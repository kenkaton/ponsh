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

ActiveRecord::Schema[8.0].define(version: 2025_03_09_084204) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

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
    t.integer "prefecture_code", null: false
    t.string "city"
    t.string "address"
    t.string "tel"
    t.string "fax"
    t.string "website"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["public_id"], name: "index_companies_on_public_id", unique: true
  end

  add_foreign_key "brands", "companies"
end
