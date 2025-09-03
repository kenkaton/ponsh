class EcListing < ApplicationRecord
  belongs_to :listable, polymorphic: true

  PLATFORMS = %w[rakuten amazon].freeze
  VOLUMES = [ 180, 300, 500, 720, 900, 1800, 2000, 3000 ].freeze

  # 主要な酒米
  RICE_TYPES = [
    "山田錦", "五百万石", "雄町", "愛山", "美山錦", "吟風", "彗星",
    "きたしずく", "酒こまち", "出羽燦々", "八反錦", "越淡麗", "ひとごこち"
  ].freeze

  # 日本酒の分類
  SAKE_TYPES = [
    "純米大吟醸酒", "純米吟醸酒", "純米酒",
    "大吟醸酒", "吟醸酒", "本醸造酒", "普通酒"
  ].freeze

  validates :platform, presence: true, inclusion: { in: PLATFORMS }
  validates :search_keyword, presence: true
  validates :product_name, presence: true
  validates :product_url, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :volume_ml, inclusion: { in: VOLUMES }, allow_nil: true
  validates :rice_type, inclusion: { in: RICE_TYPES }, allow_nil: true

  before_save :extract_and_normalize_attributes
  before_save :calculate_value_score

  # Scopes
  scope :available, -> { where(is_available: true) }
  scope :recent, -> { order(last_updated_at: :desc) }
  scope :stale, -> { where("last_updated_at < ? OR last_updated_at IS NULL", 24.hours.ago) }
  scope :by_volume, ->(volume) { where(volume_ml: volume) if volume.present? }
  scope :by_rice_type, ->(rice) { where(rice_type: rice) if rice.present? }
  scope :by_platform, ->(platform) { where(platform: platform) if platform.present? }
  scope :by_price_range, ->(min, max) { where(price: min..max) }
  scope :best_value, -> { order(value_score: :desc) }
  scope :cheapest, -> { order(:price) }
  scope :highest_rated, -> { where("review_average > 0").order(review_average: :desc, review_count: :desc) }

  def stale?
    last_updated_at.nil? || last_updated_at < 24.hours.ago
  end

  def platform_name
    case platform
    when "rakuten"
      "楽天市場"
    when "amazon"
      "Amazon"
    else
      platform.humanize
    end
  end

  def formatted_price
    return "価格未定" unless price
    "¥#{ActiveSupport::NumberHelper.number_to_delimited(price)}"
  end

  def price_per_ml
    return nil unless price && volume_ml&.positive?
    (price.to_f / volume_ml).round(2)
  end

  def affiliate_url
    return product_url unless affiliate_tag.present?

    case platform
    when "rakuten"
      product_url # 楽天はURLにアフィリエイト情報が含まれている
    when "amazon"
      add_amazon_affiliate_tag(product_url)
    else
      product_url
    end
  end

  def review_summary
    return "レビューなし" unless review_average&.positive?
    "★#{review_average.round(1)} (#{review_count}件)"
  end

  def volume_display
    return nil unless volume_ml
    volume_ml >= 1000 ? "#{volume_ml / 1000.0}L" : "#{volume_ml}ml"
  end

  # 日本酒の詳細情報の表示
  def sake_details_display
    details = []
    details << "アルコール度数: #{alcohol_percentage}%" if alcohol_percentage.present?
    details << "日本酒度: #{sake_meter_value > 0 ? '+' : ''}#{sake_meter_value}" if sake_meter_value.present?
    details << "酸度: #{acidity}" if acidity.present?
    details << "分類: #{sake_type}" if sake_type.present?
    details << "産地: #{prefecture}" if prefecture.present?
    details.join(" / ")
  end

  # クラスメソッド
  def self.available_volumes_for(listable)
    where(listable: listable).available.distinct.pluck(:volume_ml).compact.sort
  end

  def self.available_rice_types_for(listable)
    where(listable: listable).available.distinct.pluck(:rice_type).compact.sort
  end

  def self.price_range_for(listable)
    prices = where(listable: listable).available.pluck(:price).compact
    return [ 0, 0 ] if prices.empty?
    [ prices.min, prices.max ]
  end

  private

  def extract_and_normalize_attributes
    return unless product_name.present?

    # 内容量の正規化
    self.volume_ml = normalize_volume

    # 原料米の正規化
    self.rice_type = normalize_rice_type

    # メタデータの更新
    self.extracted_attributes ||= {}
    self.extracted_attributes.merge!({
      "original_name" => product_name,
      "extracted_at" => Time.current,
      "extraction_version" => "2.0"
    })
  end

  def normalize_volume
    return volume_ml if volume_ml.present? && VOLUMES.include?(volume_ml)

    extracted = extract_volume_from_name
    return extracted if extracted && VOLUMES.include?(extracted)

    nil
  end

  def extract_volume_from_name
    return nil unless product_name

    # より精密なパターンマッチング
    case product_name
    when /(\d+)\s*ml/i
      $1.to_i
    when /1\.8\s*[Ll]/i, /一升瓶/, /1800/
      1800
    when /720/
      720
    when /900/
      900
    when /300/
      300
    when /180/
      180
    else
      nil
    end
  end

  def normalize_rice_type
    return rice_type if rice_type.present? && RICE_TYPES.include?(rice_type)

    extracted = extract_rice_type_from_name
    return extracted if extracted && RICE_TYPES.include?(extracted)

    nil
  end

  def extract_rice_type_from_name
    return nil unless product_name

    # 商品名から原料米を検出（優先順位順）
    RICE_TYPES.each do |rice_name|
      return rice_name if product_name.include?(rice_name)
    end

    nil
  end

  def calculate_value_score
    # コストパフォーマンススコア（0-100）
    return unless price&.positive? && volume_ml&.positive?

    # 価格効率（ml単価の逆数で評価）
    price_efficiency = volume_ml.to_f / price
    price_score = [ price_efficiency * 100, 50 ].min

    # レビュースコア
    review_score = review_average ? [ review_average * 10, 50 ].min : 0

    # ボーナス（一升瓶、有名酒米など）
    bonus = 0
    bonus += 5 if volume_ml == 1800  # 一升瓶ボーナス
    bonus += 3 if %w[山田錦 五百万石 雄町 愛山].include?(rice_type)  # プレミアム酒米

    self.value_score = [ (price_score * 0.7 + review_score * 0.3 + bonus).round, 100 ].min
  end

  def add_amazon_affiliate_tag(url)
    return url unless affiliate_tag.present?

    if url.include?("?")
      "#{url}&tag=#{affiliate_tag}"
    else
      "#{url}?tag=#{affiliate_tag}"
    end
  end
end
