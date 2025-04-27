class CreateContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.string :contactable_type, null: false, comment: "関連タイプ (Company, Store, StoreOperatorなど)"
      t.bigint :contactable_id, null: false, comment: "関連ID"
      t.string :tel, comment: "電話番号"
      t.string :fax, comment: "FAX番号"
      t.string :website, comment: "HP URL"
      t.string :email, comment: "メールアドレス"
      t.string :instagram, comment: "Instagramアカウント"
      t.string :twitter, comment: "Twitterアカウント"
      t.string :facebook, comment: "Facebookページ"
      t.string :line, comment: "LINE公式アカウント"

      t.timestamps
    end

    add_index :contacts, [ :contactable_type, :contactable_id ]
  end
end
