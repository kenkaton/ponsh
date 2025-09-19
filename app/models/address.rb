class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  include JpPrefecture
  jp_prefecture :prefecture_code

  has_one :google_map, as: :gmappable, dependent: :destroy # ポリモーフィック関連に変更

  # after_save :update_or_create_google_map, if: :saved_change_to_any_address_field?

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

  def full_address
    # 例: 郵便番号、都道府県、市区町村、番地などを結合して返す
    # 実装はプロジェクトの要件に合わせてください
    [ zip_code, prefecture_name, city, street_address, building_name ].compact.join(" ")
  end

  private

  def saved_change_to_any_address_field?
    # 住所関連のフィールドのいずれかが変更されたかを確認
    saved_change_to_zip_code? || saved_change_to_prefecture_code? ||
    saved_change_to_city? || saved_change_to_street_address? ||
    saved_change_to_building_name?
  end

  def update_or_create_google_map
    # geocodingなどの処理をここに実装
    # 実際のGoogle Maps API連携や緯度経度取得ロジックが必要
    # ここではプレースホルダーとしてコメントを記述

    # 例: Geocoder gem を使う場合
    # results = Geocoder.search(full_address)
    # if results.first
    #   lat = results.first.latitude
    #   lon = results.first.longitude
    #   if google_map.present?
    #     google_map.update(latitude: lat, longitude: lon)
    #   else
    #     create_google_map(latitude: lat, longitude: lon)
    #   end
    # else
    #   google_map.destroy if google_map.present? # ジオコーディング失敗時は削除するなどの処理
    # end

    # 現状のGoogleMapモデルに合わせて仮の更新処理（address文字列のみ）
    # 本来は緯度経度などを設定するべき
    if google_map.present?
      google_map.update(address: full_address) # 仮：full_addressを渡す
    else
      create_google_map(address: full_address) # 仮：full_addressを渡す
    end
  end
end
