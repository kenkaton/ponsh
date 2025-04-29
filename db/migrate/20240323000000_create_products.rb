class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.references :brand, null: false, foreign_key: true
      t.string :public_id, null: false
      t.string :name, null: false
      t.string :name_en
      t.text :detail
      t.integer :volume_ml
      t.float :alcohol_percentage
      t.string :jan_code
      t.date :release_date
      t.boolean :is_limited_edition, default: false
      t.boolean :is_active, default: true

      t.timestamps
    end

    add_index :products, :public_id, unique: true
  end
end
