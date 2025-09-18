class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :account, null: false, foreign_key: true, comment: "コメント投稿者"
      t.references :commentable, null: false, polymorphic: true, comment: "コメント対象（Brand, Product等）"
      t.text :body, null: false, comment: "コメント本文"
      t.datetime :edited_at, comment: "最終編集日時"

      t.timestamps

      # インデックス
      t.index [ :commentable_type, :commentable_id, :created_at ],
              name: "index_comments_on_commentable_and_created_at"
      t.index [ :account_id, :created_at ],
              name: "index_comments_on_account_and_created_at"
    end
  end
end
