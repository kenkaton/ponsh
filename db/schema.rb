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

ActiveRecord::Schema[8.0].define(version: 2025_04_30_000000) do
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
