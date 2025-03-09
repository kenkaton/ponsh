class GoogleMap < ApplicationRecord
  belongs_to :gmappable, polymorphic: true

  geocoded_by :address
  after_validation :geocode, if: ->(obj) { obj.address.present? && obj.address_changed? }

  validates :address, presence: true
end
