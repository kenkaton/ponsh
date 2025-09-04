class AddAmazonFieldsToEcListings < ActiveRecord::Migration[8.0]
  def change
    add_column :ec_listings, :asin, :string, comment: "Amazon Standard Identification Number"
    add_index :ec_listings, :asin
    # uniqueインデックスは既存データに重複があるため追加しない
    # add_index :ec_listings, [:platform, :product_url], unique: true, name: "index_ec_listings_on_platform_and_url"
  end
end
