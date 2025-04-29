class CreateProductAwards < ActiveRecord::Migration[7.1]
  def change
    create_table :product_awards do |t|
      t.references :product, null: false, foreign_key: true
      t.references :award, null: false, foreign_key: true
      t.string :note

      t.timestamps
    end

    add_index :product_awards, [ :product_id, :award_id ], unique: true
  end
end
