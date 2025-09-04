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

      # API結果をBrandに記録（Brandの場合のみ）
      if listable.is_a?(Brand)
        listable.update!(
          last_ec_api_check_at: Time.current,
          last_ec_api_empty: results.empty?
        )
      end

      # 古いデータをクリア
      clear_old_listings(listable)

      # 新しいデータを保存
      save_listings(listable, results)

      results
    rescue => e
      Rails.logger.error "EC site search error for #{listable.class} ##{listable.id}: #{e.message}"

      # エラーが発生してもAPIチェック時刻は更新
      if listable.is_a?(Brand)
        listable.update!(
          last_ec_api_check_at: Time.current,
          last_ec_api_empty: true
        )
      end

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

        # リキュール系商品を除外
        next if liqueur_product?(product)

        # 商品価格ナビAPIは商品レベルの情報のみ提供
        # productUrlPCから個別の商品ページ情報を作成
        listing_data = build_listing_data_from_product(product, "rakuten")
        results << listing_data if valid_listing?(listing_data)
      end

      results
    end

    def build_listing_data_from_product(product, platform)
      sake_details = extract_sake_details_from_product(product)

      {
        platform: platform,
        product_name: clean_product_name(product["productName"]),
        product_url: build_rakuten_affiliate_url(product["affiliateUrl"]) || build_rakuten_affiliate_url(product["productUrlPC"]),
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
        last_updated_at: Time.current,
        # 日本酒の詳細データ
        alcohol_percentage: sake_details[:alcohol_percentage],
        sake_meter_value: sake_details[:sake_meter_value],
        acidity: sake_details[:acidity],
        sake_type: sake_details[:sake_type],
        prefecture: sake_details[:prefecture]
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
        volume = $1.to_i
        # 500mlも許可（少量サイズ）、2000ml（2L）、3000ml（3L）も許可
        return volume if [ 180, 300, 500, 720, 900, 1800, 2000, 3000 ].include?(volume)
        volume
      when /(\d+\.?\d*)\s*l/i
        volume = ($1.to_f * 1000).to_i
        return volume if [ 180, 300, 500, 720, 900, 1800, 2000, 3000 ].include?(volume)
        volume
      when /1\.8l/i, /1\.8\s*l/i
        1800
      else
        nil
      end
    end

    # 日本酒の詳細データを抽出（アルコール度数、日本酒度、酸度など）
    def extract_sake_details_from_product(product)
      details = product["ProductDetails"] || []
      result = {}

      # アルコール分の抽出と検証
      alcohol_detail = details.find { |d| d.dig("detail", "name") == "アルコール分" }
      if alcohol_detail&.dig("detail", "value") =~ /(\d+\.?\d*)%?/
        alcohol_value = $1.to_f

        # 妥当性チェック：範囲内（低アルコール8-12%、一般13-20%、原酒20%前後）&& 未設定でない
        if alcohol_value.between?(8.0, 22.0) && alcohol_value != 0.0
          result[:alcohol_percentage] = alcohol_value
        end
      end

      # 日本酒度の抽出と検証（誤ってアルコール度数が入っていることがあるので注意）
      sake_meter_detail = details.find { |d| d.dig("detail", "name") == "日本酒度" }
      if sake_meter_detail&.dig("detail", "value") =~ /([+-]?\d+\.?\d*)/
        sake_meter_value = $1.to_f

        # 妥当性チェック：範囲内 && 誤記入でない && 未設定でない
        if sake_meter_value.between?(-30.0, 30.0) &&
           !(sake_meter_value >= 10.0 && sake_meter_value.to_s.include?(".")) &&
           sake_meter_value != 0.0
          result[:sake_meter_value] = sake_meter_value
        end
      end

      # 酸度の抽出と検証（「清酒酸度」として記載されることもある）
      acidity_detail = details.find { |d| d.dig("detail", "name") =~ /酸度/ }
      if acidity_detail&.dig("detail", "value") =~ /(\d+\.?\d*)/
        acidity_value = $1.to_f

        # 妥当性チェック：範囲内（通常0.8〜2.0程度）&& 未設定でない
        if acidity_value.between?(0.5, 3.0) && acidity_value != 0.0
          result[:acidity] = acidity_value
        end
      end

      # 酒類分類の抽出
      sake_type_detail = details.find { |d| d.dig("detail", "name") == "酒類分類" }
      if sake_type_detail
        sake_type = sake_type_detail.dig("detail", "value")
        result[:sake_type] = sake_type if sake_type && sake_type != "清酒" # "清酒"は一般的すぎるので除外
      end

      # ジャンル名からも酒類分類を補完
      if result[:sake_type].blank? && product["genreName"].present?
        result[:sake_type] = product["genreName"]
      end

      # 生産都道府県の抽出（スペースが含まれている場合があるので正規化）
      prefecture_detail = details.find { |d| d.dig("detail", "name") == "生産都道府県" }
      if prefecture_detail
        prefecture = prefecture_detail.dig("detail", "value")
        # "山　口" -> "山口"、"新　潟" -> "新潟" のようにスペースを除去
        result[:prefecture] = prefecture.gsub(/[[:space:]]/, "") if prefecture.present?
      end

      # 追加: 酒類味分類（甘口・辛口）
      taste_detail = details.find { |d| d.dig("detail", "name") == "酒類味分類" }
      if taste_detail
        taste = taste_detail.dig("detail", "value")
        # extracted_attributesに保存
        result[:extracted_attributes] ||= {}
        result[:extracted_attributes]["taste_classification"] = taste
      end

      # 追加: 清酒濃淡度区分
      density_detail = details.find { |d| d.dig("detail", "name") == "清酒濃淡度区分" }
      if density_detail
        density = density_detail.dig("detail", "value")
        # extracted_attributesに保存
        result[:extracted_attributes] ||= {}
        result[:extracted_attributes]["density_classification"] = density
      end

      result
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

    def liqueur_product?(product)
      # ジャンル名でリキュールを除外
      if product["genreName"]&.include?("リキュール")
        return true
      end

      # 商品名でリキュール系を除外（サワー、チューハイなど）
      product_name = product["productName"] || ""
      liqueur_keywords = %w[サワー チューハイ ハイボール カクテル リキュール]

      liqueur_keywords.any? { |keyword| product_name.include?(keyword) }
    end

    # Amazon商品検索
    def search_amazon_products(keyword)
      return [] unless amazon_configured?

      begin
        response = fetch_amazon_products(keyword)
        parse_amazon_response(response)
      rescue => e
        Rails.logger.error "Amazon API error: #{e.message}"
        []
      end
    end

    def fetch_amazon_products(keyword)
      client = initialize_paapi_client

      # paapi gemはキーワード引数を使用
      options = {
        Keywords: keyword,
        SearchIndex: "Grocery", # 食品・飲料カテゴリ
        Resources: [
          "ItemInfo.Title",
          "ItemInfo.Features",
          "ItemInfo.ManufactureInfo",
          "ItemInfo.ProductInfo",
          "ItemInfo.ContentInfo",
          "ItemInfo.TechnicalInfo",
          "Images.Primary.Large",
          "Offers.Listings.Price",
          "Offers.Listings.Availability.Message",
          "Offers.Summaries.HighestPrice",
          "Offers.Summaries.LowestPrice",
          "BrowseNodeInfo.BrowseNodes",
          "CustomerReviews.StarRating",
          "CustomerReviews.Count"
        ],
        ItemCount: 20,
        Merchant: "All",
        MinReviewsRating: 1,
        Availability: "Available"
      }

      # 日本酒カテゴリでフィルタリング（BrowseNode）
      # 71588051: 日本酒カテゴリ
      options[:BrowseNodeId] = "71588051" if keyword.include?("日本酒")

      client.search_items(**options)
    end

    def initialize_paapi_client
      Paapi::Client.new(
        access_key: amazon_access_key,
        secret_key: amazon_secret_key,
        market: :jp,
        partner_tag: amazon_partner_tag
      )
    rescue => e
      raise ConfigurationError, "Failed to initialize Amazon API client: #{e.message}"
    end

    def parse_amazon_response(response)
      return [] unless response&.items

      results = []

      response.items.each do |item|
        next unless item&.item_info&.title&.display_value

        # リキュール系商品を除外
        next if liqueur_product_amazon?(item)

        listing_data = build_listing_data_from_amazon(item, "amazon")
        results << listing_data if valid_listing?(listing_data)
      end

      results
    rescue => e
      Rails.logger.error "Failed to parse Amazon response: #{e.message}"
      []
    end

    def build_listing_data_from_amazon(item, platform)
      sake_details = extract_sake_details_from_amazon(item)

      {
        platform: platform,
        product_name: clean_product_name(item.item_info.title.display_value),
        product_url: item.detail_page_url,
        image_url: extract_amazon_image(item),
        price: extract_amazon_price(item),
        shop_name: extract_amazon_shop(item),
        review_average: extract_amazon_review_average(item),
        review_count: extract_amazon_review_count(item),
        jan_code: extract_amazon_jan(item),
        maker: extract_amazon_maker(item),
        brand_name: extract_amazon_brand(item),
        volume_ml: extract_amazon_volume(item),
        is_available: extract_amazon_availability(item),
        last_updated_at: Time.current,
        affiliate_tag: amazon_partner_tag,
        asin: item.asin, # Amazon Standard Identification Number
        # 日本酒の詳細データ
        alcohol_percentage: sake_details[:alcohol_percentage],
        sake_meter_value: sake_details[:sake_meter_value],
        acidity: sake_details[:acidity],
        sake_type: sake_details[:sake_type],
        prefecture: sake_details[:prefecture]
      }
    end

    def extract_amazon_image(item)
      item&.images&.primary&.large&.url
    end

    def extract_amazon_price(item)
      # 最初の利用可能な価格を取得
      if item&.offers&.listings&.any?
        listing = item.offers.listings.first
        if listing&.price&.amount
          (listing.price.amount * 100).to_i # 円に変換
        end
      elsif item&.offers&.summaries&.any?
        summary = item.offers.summaries.first
        if summary&.lowest_price&.amount
          (summary.lowest_price.amount * 100).to_i
        end
      end
    end

    def extract_amazon_shop(item)
      if item&.offers&.listings&.any?
        item.offers.listings.first&.merchant_info&.name
      else
        "Amazon.co.jp"
      end
    end

    def extract_amazon_review_average(item)
      item&.customer_reviews&.star_rating&.value
    end

    def extract_amazon_review_count(item)
      item&.customer_reviews&.count
    end

    def extract_amazon_jan(item)
      # EAN/JANコードを取得
      item&.item_info&.external_ids&.ea_ns&.first&.display_values&.first ||
      item&.item_info&.external_ids&.upcs&.first&.display_values&.first
    end

    def extract_amazon_maker(item)
      item&.item_info&.manufacture_info&.item_part_number&.display_value ||
      item&.item_info&.by_line_info&.manufacturer&.display_value
    end

    def extract_amazon_brand(item)
      item&.item_info&.by_line_info&.brand&.display_value ||
      item&.item_info&.manufacture_info&.model&.display_value
    end

    def extract_amazon_volume(item)
      # 商品情報から容量を抽出
      volume_text = nil

      # ContentInfoから容量を取得
      if item&.item_info&.content_info&.edition&.display_value
        volume_text = item.item_info.content_info.edition.display_value
      end

      # Featuresから容量を検索
      if volume_text.nil? && item&.item_info&.features&.display_values
        item.item_info.features.display_values.each do |feature|
          if feature =~ /(\d+)\s*ml|(\d+\.?\d*)\s*L/i
            volume_text = feature
            break
          end
        end
      end

      # タイトルから容量を抽出
      if volume_text.nil? && item&.item_info&.title&.display_value
        volume_text = item.item_info.title.display_value
      end

      parse_volume_text(volume_text)
    end

    def extract_amazon_availability(item)
      if item&.offers&.listings&.any?
        availability = item.offers.listings.first&.availability&.message
        availability.nil? || !availability.downcase.include?("在庫切れ")
      else
        false
      end
    end

    def extract_sake_details_from_amazon(item)
      result = {}

      # Featuresから日本酒の詳細を抽出
      if item&.item_info&.features&.display_values
        item.item_info.features.display_values.each do |feature|
          # アルコール度数
          if feature =~ /アルコール[度分]?\s*[:：]?\s*(\d+\.?\d*)%?/
            result[:alcohol_percentage] = $1.to_f if $1.to_f.between?(8.0, 22.0)
          end

          # 日本酒度
          if feature =~ /日本酒度\s*[:：]?\s*([+-]?\d+\.?\d*)/
            value = $1.to_f
            result[:sake_meter_value] = value if value.between?(-30.0, 30.0)
          end

          # 酸度
          if feature =~ /酸度\s*[:：]?\s*(\d+\.?\d*)/
            value = $1.to_f
            result[:acidity] = value if value.between?(0.5, 3.0)
          end

          # 都道府県
          if feature =~ /産地|生産地|都道府県/
            # 都道府県名を抽出
            japanese_prefectures = [
              "北海道", "青森", "岩手", "宮城", "秋田", "山形", "福島",
              "茨城", "栃木", "群馬", "埼玉", "千葉", "東京", "神奈川",
              "新潟", "富山", "石川", "福井", "山梨", "長野", "岐阜",
              "静岡", "愛知", "三重", "滋賀", "京都", "大阪", "兵庫",
              "奈良", "和歌山", "鳥取", "島根", "岡山", "広島", "山口",
              "徳島", "香川", "愛媛", "高知", "福岡", "佐賀", "長崎",
              "熊本", "大分", "宮崎", "鹿児島", "沖縄"
            ]

            japanese_prefectures.each do |pref|
              if feature.include?(pref)
                result[:prefecture] = pref
                break
              end
            end
          end
        end
      end

      # タイトルから酒類分類を推定
      title = item&.item_info&.title&.display_value || ""
      SAKE_TYPES.each do |sake_type|
        if title.include?(sake_type)
          result[:sake_type] = sake_type
          break
        end
      end

      result
    end

    def liqueur_product_amazon?(item)
      title = item&.item_info&.title&.display_value || ""

      # リキュール系キーワードをチェック
      liqueur_keywords = %w[リキュール サワー チューハイ ハイボール カクテル]
      liqueur_keywords.any? { |keyword| title.include?(keyword) }
    end

    # 酒類分類の定数を追加
    SAKE_TYPES = [
      "純米大吟醸", "純米吟醸", "特別純米", "純米酒",
      "大吟醸", "吟醸", "特別本醸造", "本醸造"
    ]

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
            :search_keyword, :updated_at,
            :alcohol_percentage, :sake_meter_value, :acidity,
            :sake_type, :prefecture
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

    def amazon_partner_tag
      Rails.application.credentials.dig(:amazon, :partner_tag)
    end
  end
end
