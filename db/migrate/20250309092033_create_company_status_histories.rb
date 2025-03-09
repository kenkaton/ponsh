class CreateCompanyStatusHistories < ActiveRecord::Migration[8.0]
  def change
    create_table :company_status_histories do |t|
      t.integer :company_id, null: false
      t.integer :event_type, null: false
      t.integer :business_status
      t.integer :previous_business_status
      t.date :occurred_on
      t.text :note
      t.string :founder_name
      t.integer :successor_company_id
      t.string :successor_company_name

      t.timestamps
    end
    add_index :company_status_histories, :company_id
    add_index :company_status_histories, :successor_company_id
    add_index :company_status_histories, [ :company_id, :occurred_on ]
  end
end
