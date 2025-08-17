class Product < ApplicationRecord
  include PublicIdCreatable

  belongs_to :brand

  has_many :award_winners, as: :winner, dependent: :destroy
  has_many :awards, through: :award_winners

  before_save :fill_detail

  private

  def fill_detail
    self.detail ||= ""
  end
end
