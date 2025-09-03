class CreateEcListingsAndAddBrandImageUrl < ActiveRecord::Migration[8.0]
  def change
    # ECリスティング（楽天・Amazon商品情報）テーブルを作成
    create_table :ec_listings do |t|
      t.references :listable, null: false, polymorphic: true, index: { name: "index_ec_listings_on_listable" }, comment: "関連エンティティ（Brand, Product等）"
      t.string :platform, null: false, comment: "プラットフォーム（rakuten, amazon）"
      t.string :product_name, null: false, comment: "商品名"
      t.text :product_url, comment: "商品URL"
      t.text :affiliate_url, comment: "アフィリエイトURL"
      t.string :affiliate_tag, comment: "アフィリエイトタグ"
      t.text :image_url, comment: "商品画像URL"
      t.decimal :price, precision: 10, scale: 0, comment: "価格"
      t.string :shop_name, comment: "店舗名"
      t.decimal :review_average, precision: 3, scale: 2, comment: "レビュー平均"
      t.integer :review_count, comment: "レビュー数"
      t.string :search_keyword, comment: "検索に使用したキーワード"
      t.boolean :is_available, default: true, comment: "商品が利用可能かどうか"
      t.datetime :last_updated_at, comment: "最後に更新された日時"

      # 自動抽出される属性
      t.integer :volume_ml, comment: "内容量(ml)"
      t.string :rice_type, comment: "原料米"
      t.jsonb :extracted_attributes, default: {}, comment: "抽出した属性"

      # 商品詳細情報（APIから取得）
      t.string :jan_code, comment: "JANコード"
      t.string :maker, comment: "メーカー名"
      t.string :brand_name, comment: "ブランド名（API取得）"

      # コストパフォーマンススコア
      t.integer :value_score, comment: "コストパフォーマンススコア(0-100)"

      t.timestamps
    end

    # インデックス
    add_index :ec_listings, [ :listable_type, :listable_id, :platform ], name: "index_ec_listings_on_listable_and_platform"
    add_index :ec_listings, :platform
    add_index :ec_listings, :last_updated_at
    add_index :ec_listings, :volume_ml
    add_index :ec_listings, :rice_type
    add_index :ec_listings, :extracted_attributes, using: :gin
    add_index :ec_listings, :jan_code
    add_index :ec_listings, :maker
    add_index :ec_listings, :brand_name
    add_index :ec_listings, :value_score

    # ブランドテーブルに画像URL列を追加
    add_column :brands, :image_url, :string, comment: "ブランド代表画像URL"
  end
end
