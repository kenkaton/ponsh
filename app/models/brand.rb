class Brand < ApplicationRecord
  include PublicIdCreatable

  belongs_to :company

  has_many :products, dependent: :destroy
  has_many :award_winners, as: :winner, dependent: :destroy
  has_many :awards, through: :award_winners
  has_many :ec_listings, as: :listable, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy

  before_save :fill_detail

  # EC API関連のスコープ
  scope :needs_ec_refresh, -> {
    where(last_ec_api_check_at: nil)
      .or(where("last_ec_api_check_at < ?", 1.week.ago))
  }

  def should_refresh_ec_listings?
    return true if last_ec_api_check_at.nil?

    # APIチェックから1週間経過していれば更新（データの有無に関わらず）
    last_ec_api_check_at < 1.week.ago
  end

  def amazon_search_url(affiliate_tag: "ponsh-web-22")
    search_term = build_amazon_search_term
    encoded_term = CGI.escape(search_term)

    "https://www.amazon.co.jp/s?k=#{encoded_term}&linkCode=ll2&tag=#{affiliate_tag}" \
    "&linkId=#{generate_link_id(search_term)}&language=ja_JP&ref_=as_li_ss_tl"
  end

  def primary_image
    # 1. 手動設定された画像URLを優先（デフォルト画像でない場合）
    if image_url.present? && !image_url.include?("now_printing.jpg")
      return image_url
    end

    # 2. ECリスティングから画像を取得（デフォルト画像を除外）
    # eager_loadされている場合はメモリ上で処理
    if ec_listings.loaded?
      ec_listings
        .select { |l| l.is_available && l.image_url.present? && !l.image_url.include?("now_printing.jpg") }
        .first&.image_url
    else
      ec_listings.available
        .where.not(image_url: nil)
        .where.not("image_url LIKE ?", "%now_printing.jpg%")
        .first&.image_url
    end
  end

  def gallery_images
    # ECリスティングから複数の画像を取得（重複除去、デフォルト画像除外）
    # eager_loadされている場合はメモリ上で処理
    images = if ec_listings.loaded?
      ec_listings
        .select { |l| l.is_available && l.image_url.present? && !l.image_url.include?("now_printing.jpg") }
        .map(&:image_url)
        .uniq
    else
      ec_listings.available
        .where.not(image_url: nil)
        .where.not("image_url LIKE ?", "%now_printing.jpg%")
        .pluck(:image_url).uniq
    end

    # 代表画像を先頭にして、他の画像と合わせる
    if primary_image.present?
      ([ primary_image ] + images).uniq
    else
      images
    end
  end

  scope :search, lambda { |word|
    if word.present?
      sanitized_word = ActiveRecord::Base.sanitize_sql_like(word)
      prefecture = JpPrefecture::Prefecture.find(name: word) || JpPrefecture::Prefecture.find(name_e: word) || JpPrefecture::Prefecture.find(name_h: word) || JpPrefecture::Prefecture.find(name_k: word) || JpPrefecture::Prefecture.find(name_r: word)
      prefecture_code = prefecture&.code

      # 優先順位を計算するCASE式を定義
      like_pattern = "%#{sanitized_word}%"
      priority_case = sanitize_sql_array([
        "CASE
          WHEN brands.name LIKE ? THEN 1
          WHEN brands.kana LIKE ? THEN 2
          WHEN brands.name_en LIKE ? THEN 3
          WHEN companies.name LIKE ? THEN 4
          WHEN companies.kana LIKE ? THEN 5
          WHEN companies.name_en LIKE ? THEN 6
          WHEN addresses.zip_code LIKE ? THEN 7
          WHEN addresses.city LIKE ? THEN 8
          WHEN addresses.street_address LIKE ? THEN 9
          WHEN addresses.building_name LIKE ? THEN 10
          ELSE 11
        END",
        like_pattern, like_pattern, like_pattern, like_pattern, like_pattern,
        like_pattern, like_pattern, like_pattern, like_pattern, like_pattern
      ])

      # PostgreSQL対応：SELECTに含める
      relation = self.select("DISTINCT ON (brands.id) brands.*, (#{priority_case}) AS search_rank")
                  .joins(:company)
                  .joins("LEFT JOIN addresses ON companies.id = addresses.addressable_id AND addresses.addressable_type = 'Company'")

      # 検索条件を適用
      if prefecture_code.present?
        relation = relation.where(
          "addresses.prefecture_code = :pref_code OR " \
          "concat(brands.name, brands.kana, brands.name_en, companies.name, companies.kana, companies.name_en, " \
          "addresses.zip_code, addresses.city, addresses.street_address, addresses.building_name) like :word",
          pref_code: prefecture_code, word: "%#{sanitized_word}%"
        )
      else
        relation = relation.where(
          "concat(brands.name, brands.kana, brands.name_en, companies.name, companies.kana, companies.name_en, " \
          "addresses.zip_code, addresses.city, addresses.street_address, addresses.building_name) like ?",
          "%#{sanitized_word}%"
        )
      end

      # PostgreSQL用：DISTINCT ONとORDER BYの最初のカラムは一致する必要がある
      # まずbrands.idで重複を排除してから、search_rankでソート
      relation = relation.order("brands.id, search_rank ASC")

      # サブクエリを使って再度search_rankでソート
      Brand.from(relation, :brands).order("search_rank ASC")
    else
      # 検索キーワードがない場合は、ID順で並べる
      order(:id)
    end
  }

  def comments_count
    comments.count
  end

  private

  def build_amazon_search_term
    # ブランド名 + "日本酒" で検索
    "#{name} 日本酒"
  end

  def generate_link_id(search_term)
    # 検索語をベースにしたハッシュを生成（Amazon アソシエイト要求）
    Digest::MD5.hexdigest("#{search_term}-#{id}")[0, 16]
  end

  def fill_detail
    self.detail ||= ""
  end
end
