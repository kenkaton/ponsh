#!/usr/bin/env ruby
# frozen_string_literal: true

# 日本酒のタイプを示すキーワード
SAKE_TYPE_KEYWORDS = [
  '大吟醸', '純米大吟醸', '吟醸', '純米吟醸', '特別純米', '純米酒', '本醸造', '特別本醸造',
  '普通酒', '生酒', '原酒', '古酒', '生貯蔵酒', '生詰酒', 'にごり酒', 'スパークリング', '金紋', '特製金紋'
].freeze

# コンテスト名と実際の銘柄名のマッピングテーブル
EXTENDED_BRAND_NAME_MAPPINGS = {
  # 青森県
  '金冠喜久泉' => '喜久泉',

  # 福島県
  '嘉永蔵' => '末廣', # 末廣酒造に追加した銘柄
  '絆舞芳酔' => '絆舞', # 曙酒造の銘柄

  # 群馬県
  '清リョウ' => '清嘹',

  # 新潟県
  '誉麒麟' => '麒麟', # 下越酒造の銘柄

  # 千葉県
  '甲子正宗' => '甲子', # 短縮形

  # 愛知県
  '尊皇幻々' => '幻々', # 山﨑合資の銘柄

  # 滋賀県
  '金紋 道灌' => '道灌', # 太田酒造の銘柄
  '金紋' => '道灌', # 太田酒造の銘柄として処理

  # 京都府
  '聚樂第' => '聚楽第', # 佐々木酒造の銘柄（文字の違い）
  '世界鷹' => '金紋世界鷹', # 京都府の代表的な銘柄として処理

  # 愛媛県
  '酒仙' => '酒仙栄光', # 栄光酒造の銘柄として処理
  '伊予' => '賀儀屋', # 成龍酒造の銘柄として処理

  # 福岡県
  '極醸' => '喜多屋', # 喜多屋の銘柄

  # 長崎県
  '萬勝・清泉石上流' => '萬勝' # 清泉石上酒造の銘柄
}

# 前後のスペースを削除して正規化
def normalize_entry_name(name)
  name.strip.gsub(/\s+/, ' ')
end

# 商品タイプのプレフィックス/サフィックスを削除
PRODUCT_TYPE_PATTERNS = [
  /^大吟醸\s+/,
  /^純米大吟醸\s+/,
  /^純米吟醸\s+/,
  /^特別純米\s+/,
  /^本醸造\s+/,
  /\s+大吟醸$/,
  /\s+純米大吟醸$/,
  /\s+純米吟醸$/,
  /\s+特別純米$/,
  /\s+本醸造$/
]

def remove_product_type(name)
  cleaned = name
  PRODUCT_TYPE_PATTERNS.each do |pattern|
    cleaned = cleaned.gsub(pattern, '')
  end
  cleaned.strip
end

# コンテスト名称から銘柄名と商品名を分離する
def parse_contest_entry(entry_name)
  # スペースで分割
  parts = entry_name.strip.split(/\s+/, 2)

  if parts.length == 1
    # スペースがない場合は全体を銘柄名として扱う
    return { brand_name: parts[0], product_name: nil }
  end

  brand_name = parts[0]
  product_part = parts[1]

  # 両方に日本酒タイプが含まれているかチェック
  brand_has_sake_type = SAKE_TYPE_KEYWORDS.any? { |keyword| brand_name.include?(keyword) }
  product_has_sake_type = SAKE_TYPE_KEYWORDS.any? { |keyword| product_part.include?(keyword) }

  # 判定ロジック
  if brand_has_sake_type && product_has_sake_type
    # 両方に含まれている場合は、商品部分が短いか、より具体的な日本酒タイプを含む場合は分離
    if product_part.length <= 15 || SAKE_TYPE_KEYWORDS.any? { |keyword| product_part.start_with?(keyword) }
      return { brand_name: brand_name, product_name: product_part }
    else
      # そうでなければ全体を銘柄名として扱う
      return { brand_name: entry_name, product_name: nil }
    end
  end

  if product_has_sake_type
    # 商品部分のみに日本酒タイプが含まれているか、短い名前の場合は分離
    return { brand_name: brand_name, product_name: product_part }
  end
  if brand_has_sake_type
    # 銘柄名のみに日本酒タイプが含まれ、商品部分が長い場合は全体を銘柄名として扱う
    return { brand_name: product_part, product_name: brand_name }
  end

  # どちらにも含まれていない場合は、商品部分の長さで判定
  if product_part.length <= 10
    { brand_name: brand_name, product_name: product_part }
  else
    { brand_name: entry_name, product_name: nil }
  end
end

# 銘柄名を正規化する関数
def normalize_brand_name(brand_name)
  # まず拡張マッピングテーブルを確認
  normalized = EXTENDED_BRAND_NAME_MAPPINGS[brand_name]
  return normalized if normalized

  # 商品タイプを削除してみる
  cleaned = remove_product_type(brand_name)
  normalized = EXTENDED_BRAND_NAME_MAPPINGS[cleaned]
  return normalized if normalized

  # デフォルト
  brand_name
end

# 銘柄を検索する関数（改良版）
def find_brand_improved(brand_name, prefecture_code)
  # マッピングテーブルで正規化
  normalized_name = normalize_brand_name(brand_name)
  if normalized_name != brand_name
    puts "Info: 「#{brand_name}」を「#{normalized_name}」に正規化します"
    brand_name = normalized_name
  end

  # 1. 完全一致で検索
  brands = Brand.joins(company: :address)
                .where(addresses: { prefecture_code: prefecture_code })
                .where('brands.name = ?', brand_name)
                .includes(:company)

  return brands.first if brands.count == 1

  # 2. 部分一致で検索（前方一致を優先）
  if brands.count == 0
    # 2a. 前方一致で検索
    brands = Brand.joins(company: :address)
                  .where(addresses: { prefecture_code: prefecture_code })
                  .where('brands.name LIKE ?', "#{brand_name}%")
                  .includes(:company)

    return brands.first if brands.count == 1

    # 2b. 部分一致で検索
    if brands.count == 0
      brands = Brand.joins(company: :address)
                    .where(addresses: { prefecture_code: prefecture_code })
                    .where('brands.name LIKE ?', "%#{brand_name}%")
                    .includes(:company)

      return brands.first if brands.count == 1
    end
  end

  # 3. 銘柄名の一部で検索（例：「稲村屋文四郎」→「稲村屋」）
  if brands.count == 0 && brand_name.length > 3
    # 文字列を段階的に短くして検索
    (3..brand_name.length-1).reverse_each do |len|
      partial_name = brand_name[0...len]
      brands = Brand.joins(company: :address)
                    .where(addresses: { prefecture_code: prefecture_code })
                    .where('brands.name = ?', partial_name)
                    .includes(:company)

      if brands.count == 1
        puts "Info: 「#{brand_name}」の代わりに「#{partial_name}」を使用します"
        return brands.first
      end
    end
  end

  # 4. 読み仮名で検索
  if brands.count == 0 && brand_name.match?(/^[ぁ-ん]+$/)  # ひらがなの場合
    brands = Brand.joins(company: :address)
                  .where(addresses: { prefecture_code: prefecture_code })
                  .where('brands.kana = ?', brand_name)
                  .includes(:company)

    return brands.first if brands.count == 1
  end

  # 5. 会社名で検索（最後の手段）
  if brands.count == 0
    companies = Company.joins(:address)
                      .where(addresses: { prefecture_code: prefecture_code })
                      .where('companies.name LIKE ?', "%#{brand_name}%")
                      .includes(:brands)

    if companies.count == 1 && companies.first.brands.count > 0
      puts "Info: 「#{brand_name}」の代わりに会社「#{companies.first.name}」の代表銘柄を使用します"
      return companies.first.brands.first
    end
  end

  # 複数見つかった場合
  if brands.count > 1
    puts "Warning: 「#{brand_name}」という銘柄が#{JpPrefecture::Prefecture.find(code: prefecture_code).name}に複数存在します：#{brands.map { |b| "#{b.company&.name || '不明'}「#{b.name}」" }.join(', ')}"
    return nil
  end

  # 見つからなかった場合
  nil
end

# 商品を検索または作成する関数
def find_or_create_product(brand, product_name)
  return nil unless brand && product_name

  # 既存の商品を検索
  product = Product.find_by(brand: brand, name: product_name)
  return product if product

  # 商品が存在しない場合は作成
  puts "Info: 商品「#{product_name}」を作成します（銘柄：#{brand.name}）"

  # 商品タイプを推測
  sake_type = SAKE_TYPE_KEYWORDS.find { |keyword| product_name.include?(keyword) }

  product = Product.create!(
    brand: brand,
    name: product_name,
    detail: "#{sake_type || '日本酒'} - #{brand.name}の#{product_name}"
  )

  # puts "Success: 商品「#{product_name}」を作成しました"
  product
end

# 受賞情報を登録する関数（改良版）
def create_award_winner_improved(entry_name:, award:, prefecture_code:, note: nil)
  # エントリー名を正規化
  normalized_entry = normalize_entry_name(entry_name)

  # エントリー名を解析
  parsed = parse_contest_entry(normalized_entry)
  brand_name = parsed[:brand_name]
  product_name = parsed[:product_name]

  # 銘柄を検索（改良版の検索関数を使用）
  brand = find_brand_improved(brand_name, prefecture_code)

  if brand.nil?
    puts "Error: 「#{brand_name}」という銘柄が#{JpPrefecture::Prefecture.find(code: prefecture_code).name}に見つかりません。"
    puts "       元のエントリー名: 「#{entry_name}」"
    puts "       会社情報 #{note ? "(#{note})" : ''} を確認してください。"
    puts "       対応するシードファイルを確認してください: db/seeds/#{prefecture_code.to_s.rjust(2, '0')}.rb"
    return
  end

  # 受賞対象を決定（商品名がある場合は商品、ない場合は銘柄）
  winner = if product_name
    product = find_or_create_product(brand, product_name)
    product || brand  # 商品作成に失敗した場合は銘柄にフォールバック
  else
    brand
  end

  # 受賞情報の登録
  award_winner = AwardWinner.find_or_initialize_by(
    winner: winner,
    award: award
  )
  award_winner.note = note if note.present?

  if award_winner.save
    # winner_type = winner.is_a?(Product) ? "商品" : "銘柄"
    # puts "Success: #{winner_type}「#{winner.name}」に#{award.name}を登録しました"
  else
    puts "Error: 受賞情報の保存に失敗しました: #{award_winner.errors.full_messages.join(', ')}"
  end
end

# コメントからデータを登録するコードを生成するプログラム（改良版）
def parse_comment_to_code_improved(comment, output_file = nil)
  # 都道府県ごとに分割（◎で始まる行で分割）
  prefectures = comment.split(/^◎/).reject(&:empty?)

  # 出力先を指定
  output = output_file ? File.open(output_file, 'w') : $stdout

  # ヘッダーコメント
  output.puts "#!/usr/bin/env ruby"
  output.puts "# frozen_string_literal: true"
  output.puts
  output.puts "# 改良版の受賞情報登録関数を読み込む"
  output.puts "require_relative 'db/seeds/contests/parse_contest_comment_improved_v4'"
  output.puts

  # コンテストと賞の設定
  output.puts "# コンテストと賞の設定"
  output.puts "contest = Contest.find_or_create_by!("
  output.puts "  name: '全国新酒鑑評会',"
  output.puts "  code: 'zenkoku_shinshu',"
  output.puts "  description: '酒類総合研究所と日本酒造組合中央会が主催する日本でもっとも長い歴史を持つ審査会。新酒を全国的に調査研究することにより、製造技術と酒質の現状及び動向を明らかにし、もって清酒の品質向上に資することを目的に行っている鑑評会です。'"
  output.puts ")"
  output.puts
  output.puts "edition = contest.contest_editions.find_or_create_by!("
  output.puts "  year: 2023,"
  output.puts "  name: '第110回全国新酒鑑評会',"
  output.puts "  held_on: Date.new(2023, 4, 1),"
  output.puts "  description: '令和5年度（第110回）全国新酒鑑評会'"
  output.puts ")"
  output.puts
  output.puts "gold_award = edition.awards.find_or_create_by!("
  output.puts "  name: '金賞',"
  output.puts "  code: 'gold',"
  output.puts "  rank: 1,"
  output.puts "  description: '全国新酒鑑評会の金賞'"
  output.puts ")"
  output.puts
  output.puts "silver_award = edition.awards.find_or_create_by!("
  output.puts "  name: '銀賞',"
  output.puts "  code: 'silver',"
  output.puts "  rank: 2,"
  output.puts "  description: '全国新酒鑑評会の銀賞'"
  output.puts ")"
  output.puts

  prefectures.each do |prefecture_section|
    # 都道府県名と入賞情報を抽出
    prefecture_info = prefecture_section.lines.first
    prefecture_name = prefecture_info.match(/(.+?)\(/)[1]

    # 銘柄情報を抽出
    brands = prefecture_section.lines[1..-1].select { |line| line.include?('「') }

    # 金賞と銀賞に分類
    gold_brands = []
    silver_brands = []

    brands.each do |brand_line|
      entry_name = brand_line.match(/「(.+?)」/)[1]
      is_gold = brand_line.include?('(☆)')

      # 蔵名などの補足情報を抽出
      note_match = brand_line.match(/「.+?」(.+?)(?:\(|$)/)
      note = note_match ? note_match[1].strip : nil
      note = nil if note&.empty?

      if is_gold
        gold_brands << [ entry_name, note ]
      else
        silver_brands << [ entry_name, note ]
      end
    end

    # コード生成
    output.puts "# ◎#{prefecture_name}の受賞情報"
    output.puts "prefecture_code = JpPrefecture::Prefecture.find(name: '#{prefecture_name}').code"
    output.puts
    output.puts "# 金賞受賞者"
    gold_brands.each do |entry_name, note|
      output.puts "create_award_winner_improved("
      output.puts "  entry_name: '#{entry_name}',"
      output.puts "  award: gold_award,"
      output.puts "  prefecture_code: prefecture_code,"
      output.puts "  note: #{note ? "'#{note}'" : 'nil'}"
      output.puts ")"
    end
    output.puts
    output.puts "# 銀賞受賞者"
    silver_brands.each do |entry_name, note|
      output.puts "create_award_winner_improved("
      output.puts "  entry_name: '#{entry_name}',"
      output.puts "  award: silver_award,"
      output.puts "  prefecture_code: prefecture_code,"
      output.puts "  note: #{note ? "'#{note}'" : 'nil'}"
      output.puts ")"
    end
    output.puts
  end

  output.close if output_file
end

# スタンドアロンで実行された場合
if __FILE__ == $0
  puts "parse_contest_comment_improved_v4.rb - 実行には create_full_output_v3.rb を使用してください"
end
