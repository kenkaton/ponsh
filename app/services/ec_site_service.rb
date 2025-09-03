require "net/http"
require "json"

class EcSiteService
  class ApiError < StandardError; end
  class ConfigurationError < StandardError; end

  class << self
    # メイン検索メソッド
    def search_and_update(listable, keyword = nil)
      keyword ||= generate_search_keyword(listable)

      results = []

      # 楽天商品価格ナビ製品検索
      rakuten_results = search_rakuten_products(keyword)
      results.concat(rakuten_results)

      # Amazon商品検索（将来実装）
      amazon_results = search_amazon_products(keyword)
      results.concat(amazon_results)

      # 古いデータをクリア
      clear_old_listings(listable)

      # 新しいデータを保存
      save_listings(listable, results)

      results
    rescue => e
      Rails.logger.error "EC site search error for #{listable.class} ##{listable.id}: #{e.message}"
      []
    end

    private

    # 楽天商品価格ナビ製品検索API
    def search_rakuten_products(keyword)
      return [] unless rakuten_configured?

      begin
        response = fetch_rakuten_products(keyword)
        parse_rakuten_response(response)
      rescue => e
        Rails.logger.error "Rakuten API error: #{e.message}"
        []
      end
    end

    def fetch_rakuten_products(keyword)
      uri = URI("https://app.rakuten.co.jp/services/api/Product/Search/20170426")

      params = build_rakuten_params(keyword)
      uri.query = URI.encode_www_form(params)

      response = Net::HTTP.get_response(uri)

      unless response.code == "200"
        raise ApiError, "Rakuten API returned #{response.code}: #{response.body}"
      end

      JSON.parse(response.body)
    end

    def build_rakuten_params(keyword)
      {
        applicationId: rakuten_api_key,
        affiliateId: rakuten_affiliate_id,
        keyword: keyword,
        genreId: 100337, # 日本酒カテゴリ
        hits: 20,
        page: 1,
        sort: "standard",
        # 価格フィルタ（あまりに安い商品は除外）
        minPrice: 500
      }
    end

    def parse_rakuten_response(response_data)
      products = response_data["Products"] || []
      results = []

      products.each do |product_wrapper|
        product = product_wrapper["Product"]
        next unless product&.dig("productName")

        # 商品価格ナビAPIは商品レベルの情報のみ提供
        # productUrlPCから個別の商品ページ情報を作成
        listing_data = build_listing_data_from_product(product, "rakuten")
        results << listing_data if valid_listing?(listing_data)
      end

      results
    end

    def build_listing_data_from_product(product, platform)
      {
        platform: platform,
        product_name: clean_product_name(product["productName"]),
        product_url: build_rakuten_affiliate_url(product["productUrlPC"]),
        image_url: select_best_image(product),
        price: product["minPrice"] || product["averagePrice"], # 最低価格または平均価格を使用
        shop_name: product["makerName"], # メーカー名を店舗名として使用
        review_average: product["reviewAverage"],
        review_count: product["reviewCount"],
        jan_code: extract_jan_code_from_product_details(product),
        maker: product["makerName"],
        brand_name: product["brandName"],
        volume_ml: extract_volume_from_product_details(product),
        is_available: product["itemCount"]&.positive?,
        last_updated_at: Time.current
      }
    end

    def extract_jan_code_from_product_details(product)
      # ProductDetailsからJANコードを抽出（もしあれば）
      details = product["ProductDetails"] || []
      jan_detail = details.find { |detail| detail.dig("detail", "name") == "JANコード" }
      jan_detail&.dig("detail", "value")
    end

    def extract_volume_from_product_details(product)
      # ProductDetailsから内容量を抽出して標準化
      details = product["ProductDetails"] || []

      # 複数のフィールドから内容量を探す
      volume_fields = [ "内容量", "単品容量", "総内容量" ]

      volume_fields.each do |field_name|
        volume_detail = details.find { |detail| detail.dig("detail", "name") == field_name }
        next unless volume_detail

        volume_text = volume_detail.dig("detail", "value")
        next unless volume_text

        # テキストから数値を抽出
        parsed_volume = parse_volume_text(volume_text)
        return parsed_volume if parsed_volume && EcListing::VOLUMES.include?(parsed_volume)
      end

      nil
    end

    def parse_volume_text(volume_text)
      return nil unless volume_text

      case volume_text.downcase
      when /(\d+)ml/
        $1.to_i
      when /(\d+\.?\d*)\s*l/i
        ($1.to_f * 1000).to_i
      when /1\.8l/i, /1\.8\s*l/i
        1800
      else
        nil
      end
    end

    def build_rakuten_affiliate_url(product_url)
      return product_url unless product_url && rakuten_affiliate_id.present?

      # 商品価格ナビAPIのURLにはrafcidパラメータが既に含まれている
      # 既にアフィリエイトIDが含まれているかチェック
      if product_url.include?("rafcid=")
        product_url
      else
        # アフィリエイトIDを追加
        separator = product_url.include?("?") ? "&" : "?"
        "#{product_url}#{separator}rafcid=wsc_i_ps_#{rakuten_affiliate_id}"
      end
    end

    def clean_product_name(name)
      return name unless name

      # 不要な文字列を除去
      name.gsub(/【[^】]*】/, "")  # 【送料無料】などを除去
          .gsub(/\s*\([^)]*送料[^)]*\)/, "")  # (送料無料)などを除去
          .gsub(/\s+/, " ")  # 連続する空白を1つに
          .strip
    end

    def select_best_image(product)
      # 商品価格ナビAPIの画像URL構造に対応
      # デフォルト画像（now_printing.jpg）は除外
      images = [
        product["mediumImageUrl"],
        product["smallImageUrl"]
      ].compact

      # デフォルト画像を除外
      valid_image = images.find { |url| url && !url.include?("now_printing.jpg") }
      valid_image
    end

    def valid_listing?(listing_data)
      listing_data[:product_name].present? &&
      listing_data[:product_url].present? &&
      listing_data[:price]&.positive?
    end

    # Amazon商品検索（将来実装用の構造）
    def search_amazon_products(keyword)
      return [] unless amazon_configured?

      # TODO: Amazon Product Advertising API v5.0の実装
      # 現在は空の配列を返す
      []
    end

    # データベース操作
    def clear_old_listings(listable)
      listable.ec_listings.update_all(is_available: false)
    end

    def save_listings(listable, results)
      return if results.empty?

      # 既存のEC listingのURLを取得
      existing_urls = listable.ec_listings.pluck(:product_url).to_set

      # 新規と更新を分ける
      new_listings = []
      update_listings = []

      results.each do |listing_data|
        # affiliate_tagは楽天の場合はproduct_urlに含まれるので設定しない
        listing_data[:affiliate_tag] = nil if listing_data[:platform] == "rakuten"

        # 共通データを追加
        listing_data[:listable_type] = listable.class.name
        listing_data[:listable_id] = listable.id
        listing_data[:search_keyword] = generate_search_keyword(listable)
        listing_data[:created_at] = Time.current
        listing_data[:updated_at] = Time.current

        if existing_urls.include?(listing_data[:product_url])
          update_listings << listing_data
        else
          new_listings << listing_data
        end
      end

      # 新規レコードを一括挿入
      if new_listings.any?
        EcListing.insert_all(
          new_listings,
          returning: false,
          record_timestamps: false # 手動でタイムスタンプを設定済み
        )
      end

      # 既存レコードを一括更新（upsert_allを使用）
      if update_listings.any?
        EcListing.upsert_all(
          update_listings,
          unique_by: [ :listable_type, :listable_id, :platform, :product_url ],
          update_only: [
            :product_name, :image_url, :price, :shop_name,
            :review_average, :review_count, :jan_code, :maker,
            :brand_name, :volume_ml, :is_available, :last_updated_at,
            :search_keyword, :updated_at
          ],
          record_timestamps: false
        )
      end
    rescue => e
      Rails.logger.error "Failed to bulk save listings: #{e.message}"
      Rails.logger.error "New listings count: #{new_listings.size}, Update listings count: #{update_listings.size}"

      # フォールバック: 個別保存に切り替え
      Rails.logger.warn "Falling back to individual saves"
      save_listings_individually(listable, results)
    end

    # フォールバック用の個別保存メソッド
    def save_listings_individually(listable, results)
      results.each do |listing_data|
        listing = listable.ec_listings.find_or_initialize_by(
          platform: listing_data[:platform],
          product_url: listing_data[:product_url]
        )

        # affiliate_tagは楽天の場合はproduct_urlに含まれるので設定しない
        listing_data[:affiliate_tag] = nil if listing_data[:platform] == "rakuten"

        listing.update!(listing_data.merge({
          search_keyword: generate_search_keyword(listable)
        }))
      rescue => e
        Rails.logger.error "Failed to update individual listing: #{e.message}"
        Rails.logger.error "Listing data: #{listing_data}"
      end
    end

    # ユーティリティ
    def generate_search_keyword(listable)
      case listable
      when Brand
        "#{listable.name} 日本酒 #{listable.company&.name}".strip
      when Product
        "#{listable.brand.name} #{listable.name} 日本酒".strip
      else
        listable.name.to_s
      end
    end

    # 設定チェック
    def rakuten_configured?
      rakuten_api_key.present? && rakuten_affiliate_id.present?
    end

    def amazon_configured?
      amazon_access_key.present? && amazon_secret_key.present?
    end

    def rakuten_api_key
      Rails.application.credentials.dig(:rakuten, :api_key)
    end

    def rakuten_affiliate_id
      Rails.application.credentials.dig(:rakuten, :affiliate_id)
    end

    def amazon_access_key
      Rails.application.credentials.dig(:amazon, :access_key)
    end

    def amazon_secret_key
      Rails.application.credentials.dig(:amazon, :secret_key)
    end
  end
end
