class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :public_id, null: false
      t.string :name, null: false
      t.string :kana
      t.string :name_en
      t.integer :prefecture_code, null: false
      t.string :city
      t.string :address
      t.string :tel
      t.string :fax
      t.string :website
      t.text :detail

      t.timestamps
    end
    add_index :companies, :public_id, unique: true
  end
end
