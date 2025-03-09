class Company < ApplicationRecord
  include PublicIdCreatable

  has_many :brands, dependent: :destroy
  has_many :company_status_histories, dependent: :destroy
  has_many :successor_company_status_histories, class_name: "CompanyStatusHistory", foreign_key: "successor_company_id", dependent: :nullify

  has_one :google_map, as: :gmappable, dependent: :destroy

  after_save :update_google_map, if: :saved_change_to_address?

  private

  def update_google_map
    return unless address.present?

    if google_map.present?
      google_map.update(address: address)
    else
      create_google_map(address: address)
    end
  end
end
