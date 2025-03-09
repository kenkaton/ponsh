class Company < ApplicationRecord
  include PublicIdCreatable
  include JpPrefecture
  jp_prefecture :prefecture_code

  has_many :brands, dependent: :destroy
  has_many :company_status_histories, dependent: :destroy
  has_many :successor_company_status_histories, class_name: "CompanyStatusHistory", foreign_key: "successor_company_id", dependent: :nullify

  has_one :google_map, as: :gmappable, dependent: :destroy

  after_save :update_google_map, if: :saved_change_to_address?

  # 都道府県名を取得するメソッド
  def prefecture_name
    prefecture.try(:name)
  end

  # 都道府県名（ひらがな）を取得するメソッド
  def prefecture_name_h
    prefecture.try(:name_h)
  end

  # 都道府県名（カタカナ）を取得するメソッド
  def prefecture_name_k
    prefecture.try(:name_k)
  end

  # 都道府県名（ローマ字）を取得するメソッド
  def prefecture_name_r
    prefecture.try(:name_r)
  end

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
