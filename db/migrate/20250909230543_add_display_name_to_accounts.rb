class AddDisplayNameToAccounts < ActiveRecord::Migration[8.0]
  def change
    add_column :accounts, :display_name, :string, limit: 32
    add_index :accounts, :display_name
  end
end
