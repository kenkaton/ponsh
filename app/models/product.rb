class Product < ApplicationRecord
  include PublicIdCreatable

  belongs_to :brand

  has_many :award_winners, as: :winner, dependent: :destroy
  has_many :awards, through: :award_winners
  has_many :product_awards, dependent: :destroy
  has_many :product_awards_awards, through: :product_awards, source: :award

  before_save :fill_detail

  private

  def fill_detail
    self.detail ||= ""
  end
end
