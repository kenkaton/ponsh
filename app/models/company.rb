class Company < ApplicationRecord
  include PublicIdCreatable

  has_many :brands, dependent: :destroy
  has_many :company_status_histories, dependent: :destroy
  has_many :successor_company_status_histories, class_name: "CompanyStatusHistory", foreign_key: "successor_company_id", dependent: :nullify

  # Addressとのポリモーフィック関連 (一つの会社は一つの住所を持つ)
  has_one :address, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true # オプション: フォームなどで一括更新する場合

  # Contactsとのポリモーフィック関連 (一つの会社は一つの連絡先を持つ)
  has_one :contact, as: :contactable, dependent: :destroy
  accepts_nested_attributes_for :contact, allow_destroy: true

  # 連絡先情報のデリゲート
  delegate :tel, :fax, :website, :email, :instagram, :twitter, :facebook, :line,
           to: :contact, allow_nil: true, prefix: false
end
