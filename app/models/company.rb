class Company < ApplicationRecord
  include PublicIdCreatable

  has_many :brands, dependent: :destroy
  has_many :company_status_histories, dependent: :destroy
  has_many :successor_company_status_histories, class_name: "CompanyStatusHistory", foreign_key: "successor_company_id", dependent: :nullify
end
