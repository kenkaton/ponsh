class CreateBrands < ActiveRecord::Migration[8.0]
  def change
    create_table :brands do |t|
      t.string :public_id, null: false
      t.string :name, null: false
      t.string :kana
      t.string :name_en
      t.text :detail
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
    add_index :brands, :public_id, unique: true
  end
end
