class AddApiEmptyResultTracking < ActiveRecord::Migration[8.0]
  def change
    # brandsテーブルに空のAPI結果を追跡するカラムを追加
    add_column :brands, :last_ec_api_check_at, :datetime, comment: "最後にEC APIをチェックした日時"
    add_column :brands, :last_ec_api_empty, :boolean, default: false, comment: "最後のAPIチェックで結果が空だったか"

    add_index :brands, :last_ec_api_check_at
    add_index :brands, :last_ec_api_empty
  end
end
