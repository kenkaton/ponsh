class Brand < ApplicationRecord
  include PublicIdCreatable

  belongs_to :company

  has_many :products, dependent: :destroy
  has_many :award_winners, as: :winner, dependent: :destroy
  has_many :awards, through: :award_winners

  before_save :fill_detail

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
      relation = self.select("brands.*, (#{priority_case}) AS search_rank")
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

      # 重複排除と並び替え
      relation = relation.distinct("brands.id").order("search_rank ASC")
    else
      all
    end
  }

  private

  def fill_detail
    self.detail ||= ""
  end
end
