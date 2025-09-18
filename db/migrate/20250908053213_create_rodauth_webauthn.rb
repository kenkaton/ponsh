class CreateRodauthWebauthn < ActiveRecord::Migration[8.0]
  def change
    # Used by the webauthn feature
    create_table :account_webauthn_user_ids, id: false do |t|
      t.bigint :id, primary_key: true
      t.foreign_key :accounts, column: :id
      t.string :webauthn_id, null: false
    end
    create_table :account_webauthn_keys, primary_key: [ :account_id, :webauthn_id ] do |t|
      t.references :account, foreign_key: true
      t.string :webauthn_id
      t.string :public_key, null: false
      t.integer :sign_count, null: false
      t.datetime :last_use, null: false, default: -> { "CURRENT_TIMESTAMP" }
    end
  end
end
