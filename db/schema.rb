# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_09_03_040446) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "addressable_type", null: false
    t.bigint "addressable_id", null: false
    t.string "zip_code"
    t.integer "prefecture_code"
    t.string "city"
    t.string "street_address"
    t.string "building_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable"
  end

  create_table "award_winners", force: :cascade do |t|
    t.bigint "award_id", null: false
    t.string "winner_type", null: false
    t.bigint "winner_id", null: false
    t.string "note", comment: "特記事項（例：部門最高賞など）"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["award_id", "winner_type", "winner_id"], name: "index_award_winners_on_award_and_winner", unique: true
    t.index ["award_id"], name: "index_award_winners_on_award_id"
    t.index ["winner_type", "winner_id"], name: "index_award_winners_on_winner"
  end

  create_table "awards", force: :cascade do |t|
    t.bigint "contest_edition_id", null: false
    t.string "name", null: false, comment: "賞の名称（例：金賞、銀賞）"
    t.string "code", null: false, comment: "賞のコード"
    t.integer "rank", null: false, comment: "賞の順位（1が最高）"
    t.text "description", comment: "賞の説明"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_edition_id", "code"], name: "index_awards_on_contest_edition_id_and_code", unique: true
    t.index ["contest_edition_id"], name: "index_awards_on_contest_edition_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "public_id", null: false
    t.string "name", null: false
    t.string "kana"
    t.string "name_en"
    t.text "detail"
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url", comment: "ブランド代表画像URL"
    t.index ["company_id"], name: "index_brands_on_company_id"
    t.index ["public_id"], name: "index_brands_on_public_id", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "public_id", null: false
    t.string "name", null: false
    t.string "kana"
    t.string "name_en"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["public_id"], name: "index_companies_on_public_id", unique: true
  end

  create_table "company_status_histories", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "event_type", null: false
    t.integer "business_status"
    t.integer "previous_business_status"
    t.date "occurred_on"
    t.text "note"
    t.string "founder_name"
    t.integer "successor_company_id"
    t.string "successor_company_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id", "occurred_on"], name: "index_company_status_histories_on_company_id_and_occurred_on"
    t.index ["company_id"], name: "index_company_status_histories_on_company_id"
    t.index ["successor_company_id"], name: "index_company_status_histories_on_successor_company_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "contactable_type", null: false, comment: "関連タイプ (Company, Store, StoreOperatorなど)"
    t.bigint "contactable_id", null: false, comment: "関連ID"
    t.string "tel", comment: "電話番号"
    t.string "fax", comment: "FAX番号"
    t.string "website", comment: "HP URL"
    t.string "email", comment: "メールアドレス"
    t.string "instagram", comment: "Instagramアカウント"
    t.string "twitter", comment: "Twitterアカウント"
    t.string "facebook", comment: "Facebookページ"
    t.string "line", comment: "LINE公式アカウント"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contactable_type", "contactable_id"], name: "index_contacts_on_contactable_type_and_contactable_id"
  end

  create_table "contest_editions", force: :cascade do |t|
    t.bigint "contest_id", null: false
    t.integer "year", null: false, comment: "開催年度"
    t.string "name", null: false, comment: "年度付きコンテスト名（例：第110回全国新酒鑑評会）"
    t.date "held_on", comment: "開催日"
    t.text "description", comment: "その年度のコンテストの説明"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_id", "year"], name: "index_contest_editions_on_contest_id_and_year", unique: true
    t.index ["contest_id"], name: "index_contest_editions_on_contest_id"
  end

  create_table "contests", force: :cascade do |t|
    t.string "name", null: false, comment: "コンテスト名（例：全国新酒鑑評会）"
    t.string "code", null: false, comment: "コンテストコード"
    t.text "description", comment: "コンテストの説明"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_contests_on_code", unique: true
  end

  create_table "ec_listings", force: :cascade do |t|
    t.string "listable_type", null: false
    t.bigint "listable_id", null: false, comment: "関連エンティティ（Brand, Product等）"
    t.string "platform", null: false, comment: "プラットフォーム（rakuten, amazon）"
    t.string "product_name", null: false, comment: "商品名"
    t.text "product_url", comment: "商品URL"
    t.text "affiliate_url", comment: "アフィリエイトURL"
    t.string "affiliate_tag", comment: "アフィリエイトタグ"
    t.text "image_url", comment: "商品画像URL"
    t.decimal "price", precision: 10, comment: "価格"
    t.string "shop_name", comment: "店舗名"
    t.decimal "review_average", precision: 3, scale: 2, comment: "レビュー平均"
    t.integer "review_count", comment: "レビュー数"
    t.string "search_keyword", comment: "検索に使用したキーワード"
    t.boolean "is_available", default: true, comment: "商品が利用可能かどうか"
    t.datetime "last_updated_at", comment: "最後に更新された日時"
    t.integer "volume_ml", comment: "内容量(ml)"
    t.string "rice_type", comment: "原料米"
    t.jsonb "extracted_attributes", default: {}, comment: "抽出した属性"
    t.string "jan_code", comment: "JANコード"
    t.string "maker", comment: "メーカー名"
    t.string "brand_name", comment: "ブランド名（API取得）"
    t.integer "value_score", comment: "コストパフォーマンススコア(0-100)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_name"], name: "index_ec_listings_on_brand_name"
    t.index ["extracted_attributes"], name: "index_ec_listings_on_extracted_attributes", using: :gin
    t.index ["jan_code"], name: "index_ec_listings_on_jan_code"
    t.index ["last_updated_at"], name: "index_ec_listings_on_last_updated_at"
    t.index ["listable_type", "listable_id", "platform"], name: "index_ec_listings_on_listable_and_platform"
    t.index ["listable_type", "listable_id"], name: "index_ec_listings_on_listable"
    t.index ["maker"], name: "index_ec_listings_on_maker"
    t.index ["platform"], name: "index_ec_listings_on_platform"
    t.index ["rice_type"], name: "index_ec_listings_on_rice_type"
    t.index ["value_score"], name: "index_ec_listings_on_value_score"
    t.index ["volume_ml"], name: "index_ec_listings_on_volume_ml"
  end

  create_table "google_maps", force: :cascade do |t|
    t.string "gmappable_type", null: false
    t.bigint "gmappable_id", null: false
    t.string "address", null: false
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gmappable_type", "gmappable_id"], name: "index_google_maps_on_gmappable"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "brand_id", null: false
    t.string "public_id", null: false
    t.string "name", null: false
    t.string "name_en"
    t.string "kana"
    t.integer "price"
    t.text "detail"
    t.integer "volume_ml"
    t.float "alcohol_percentage"
    t.string "jan_code"
    t.date "release_date"
    t.boolean "is_limited_edition", default: false
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["public_id"], name: "index_products_on_public_id", unique: true
  end

  add_foreign_key "award_winners", "awards"
  add_foreign_key "awards", "contest_editions"
  add_foreign_key "brands", "companies"
  add_foreign_key "contest_editions", "contests"
  add_foreign_key "products", "brands"
end
