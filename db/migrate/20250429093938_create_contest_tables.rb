class CreateContestTables < ActiveRecord::Migration[8.0]
  def change
    create_table :contests do |t|
      t.string :name, null: false, comment: 'コンテスト名（例：全国新酒鑑評会）'
      t.string :code, null: false, comment: 'コンテストコード'
      t.text :description, comment: 'コンテストの説明'
      t.timestamps
    end

    add_index :contests, :code, unique: true

    create_table :contest_editions do |t|
      t.references :contest, null: false, foreign_key: true
      t.integer :year, null: false, comment: '開催年度'
      t.string :name, null: false, comment: '年度付きコンテスト名（例：第110回全国新酒鑑評会）'
      t.date :held_on, comment: '開催日'
      t.text :description, comment: 'その年度のコンテストの説明'
      t.timestamps
    end

    add_index :contest_editions, [ :contest_id, :year ], unique: true

    create_table :awards do |t|
      t.references :contest_edition, null: false, foreign_key: true
      t.string :name, null: false, comment: '賞の名称（例：金賞、銀賞）'
      t.string :code, null: false, comment: '賞のコード'
      t.integer :rank, null: false, comment: '賞の順位（1が最高）'
      t.text :description, comment: '賞の説明'
      t.timestamps
    end

    add_index :awards, [ :contest_edition_id, :code ], unique: true

    create_table :award_winners do |t|
      t.references :award, null: false, foreign_key: true
      t.references :winner, polymorphic: true, null: false
      t.string :note, comment: '特記事項（例：部門最高賞など）'
      t.timestamps
    end

    add_index :award_winners, [ :award_id, :winner_type, :winner_id ], unique: true, name: 'index_award_winners_on_award_and_winner'
  end
end
