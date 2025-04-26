class CreateAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true, null: false
      t.string :zip_code
      t.integer :prefecture_code
      t.string :city
      t.string :street_address
      t.string :building_name

      t.timestamps
    end
  end
end
