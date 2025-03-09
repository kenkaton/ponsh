class CreateGoogleMaps < ActiveRecord::Migration[8.0]
  def change
    create_table :google_maps do |t|
      t.references :gmappable, polymorphic: true, null: false
      t.string :address, null: false
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
