class Brand < ApplicationRecord
  include PublicIdCreatable

  belongs_to :company

  before_save :fill_detail

  scope :search, lambda { |word|
    if word.present?
      sanitized_word = ActiveRecord::Base.sanitize_sql_like(word)
      joins(:company).where("concat(brands.name, brands.kana, brands.name_en, companies.name, companies.kana, companies.name_en) like ?", "%#{sanitized_word}%")
        .order(
          Arel.sql(
            "CASE
              WHEN brands.name LIKE '%#{sanitized_word}%' THEN 1
              WHEN brands.kana LIKE '%#{sanitized_word}%' THEN 2
              WHEN brands.name_en LIKE '%#{sanitized_word}%' THEN 3
              WHEN companies.name LIKE '%#{sanitized_word}%' THEN 4
              WHEN companies.kana LIKE '%#{sanitized_word}%' THEN 5
              WHEN companies.name_en LIKE '%#{sanitized_word}%' THEN 6
              ELSE 7
            END"
          )
        )
    else
      all
    end
  }

  private

  def fill_detail
    self.detail ||= ""
  end
end
