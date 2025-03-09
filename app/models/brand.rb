class Brand < ApplicationRecord
  include PublicIdCreatable

  belongs_to :company

  before_save :fill_detail

  private

  def fill_detail
    self.detail ||= ""
  end
end
