class Brand < ApplicationRecord
  include PublicIdCreatable

  belongs_to :company

  before_save :fill_detail

  scope :search, lambda { |word|
    if word.present?
      joins(:company).where("concat(brands.name, brands.kana, brands.name_en, companies.name, companies.kana, companies.name_en) like ?", "%#{word}%")
    else
      all
    end
  }

  private

  def fill_detail
    self.detail ||= ""
  end
end
