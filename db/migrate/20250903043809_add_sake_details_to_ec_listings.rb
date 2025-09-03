class AddSakeDetailsToEcListings < ActiveRecord::Migration[8.0]
  def change
    add_column :ec_listings, :alcohol_percentage, :decimal, precision: 3, scale: 1, comment: "アルコール度数(%)"
    add_column :ec_listings, :sake_meter_value, :decimal, precision: 4, scale: 1, comment: "日本酒度"
    add_column :ec_listings, :acidity, :decimal, precision: 3, scale: 1, comment: "酸度"
    add_column :ec_listings, :sake_type, :string, comment: "酒類分類（純米酒、本醸造酒など）"
    add_column :ec_listings, :prefecture, :string, comment: "生産都道府県"

    add_index :ec_listings, :sake_type
    add_index :ec_listings, :prefecture
  end
end
