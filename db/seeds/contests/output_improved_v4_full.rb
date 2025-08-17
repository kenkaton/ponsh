#!/usr/bin/env ruby
# frozen_string_literal: true

# 改良版の受賞情報登録関数を読み込む
require_relative '../../../script/parse_contest_comment_improved_v4'

# コンテストと賞の設定
contest = Contest.find_or_create_by!(
  name: '全国新酒鑑評会',
  code: 'zenkoku_shinshu',
  description: '酒類総合研究所と日本酒造組合中央会が主催する日本でもっとも長い歴史を持つ審査会。新酒を全国的に調査研究することにより、製造技術と酒質の現状及び動向を明らかにし、もって清酒の品質向上に資することを目的に行っている鑑評会です。'
)

edition = contest.contest_editions.find_or_create_by!(
  year: 2023,
  name: '第110回全国新酒鑑評会',
  held_on: Date.new(2023, 4, 1),
  description: '令和5年度（第110回）全国新酒鑑評会'
)

gold_award = edition.awards.find_or_create_by!(
  name: '金賞',
  code: 'gold',
  rank: 1,
  description: '全国新酒鑑評会の金賞'
)

silver_award = edition.awards.find_or_create_by!(
  name: '銀賞',
  code: 'silver',
  rank: 2,
  description: '全国新酒鑑評会の銀賞'
)

# ◎北海道の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '北海道').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '大雪乃蔵 鳳雪',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合同酒精株式会社 旭川工場 大雪乃蔵'
)
create_award_winner_improved(
  entry_name: '北の勝',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '碓氷酒造場'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '三千櫻',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '三千櫻酒造株式会社'
)
create_award_winner_improved(
  entry_name: '千歳鶴',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '日本清酒株式会社 千歳鶴醸造所'
)

# ◎青森県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '青森県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '鳩正宗 吟麗',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '鳩正宗株式会社'
)
create_award_winner_improved(
  entry_name: '六根',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社松緑酒造'
)
create_award_winner_improved(
  entry_name: '金冠喜久泉',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社西田酒造店'
)
create_award_winner_improved(
  entry_name: '桃川',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '桃川株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '稲村屋文四郎',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社鳴海醸造店'
)
create_award_winner_improved(
  entry_name: '杜來',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '六花酒造株式会社'
)

# ◎岩手県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '岩手県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '浜千鳥',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社浜千鳥'
)
create_award_winner_improved(
  entry_name: '龍泉八重桜',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '泉金酒造株式会社'
)
create_award_winner_improved(
  entry_name: '月の輪',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '有限会社月の輪酒造店'
)
create_award_winner_improved(
  entry_name: '南部美人',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社南部美人'
)
create_award_winner_improved(
  entry_name: '南部美人',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社南部美人 馬仙峡蔵'
)
create_award_winner_improved(
  entry_name: '鷲の尾',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社わしの尾'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '磐乃井',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '磐乃井酒造株式会社'
)

# ◎宮城県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '宮城県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '鳳陽',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合資会社内ケ崎酒造店'
)
create_award_winner_improved(
  entry_name: 'わしが国',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社山和酒造店'
)
create_award_winner_improved(
  entry_name: '浦霞',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社佐浦'
)
create_award_winner_improved(
  entry_name: '阿部勘',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '阿部勘酒造株式会社'
)
create_award_winner_improved(
  entry_name: '日高見',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社平孝酒造'
)
create_award_winner_improved(
  entry_name: '蔵王',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '蔵王酒造株式会社'
)
create_award_winner_improved(
  entry_name: '乾坤一',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '有限会社大沼酒造店'
)
create_award_winner_improved(
  entry_name: '黄金澤',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合名会社川敬商店'
)
create_award_winner_improved(
  entry_name: '萩の鶴',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '萩野酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '浦霞',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社佐浦 矢本蔵'
)
create_award_winner_improved(
  entry_name: '雪の松島',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '大和蔵酒造株式会社'
)
create_award_winner_improved(
  entry_name: '蒼天伝 大吟醸',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社男山本店'
)
create_award_winner_improved(
  entry_name: '栗駒山',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '千田酒造株式会社'
)
create_award_winner_improved(
  entry_name: '宮寒梅',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合名会社寒梅酒造'
)
create_award_winner_improved(
  entry_name: 'あたごのまつ',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社新澤醸造店 川崎蔵'
)

# ◎秋田県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '秋田県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '髙清水',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '秋田酒類製造株式会社 御所野蔵'
)
create_award_winner_improved(
  entry_name: '酔楽天',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '秋田酒造株式会社'
)
create_award_winner_improved(
  entry_name: '銀鱗',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社那波商店'
)
create_award_winner_improved(
  entry_name: '福小町',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社木村酒造'
)
create_award_winner_improved(
  entry_name: '大納川',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社大納川'
)
create_award_winner_improved(
  entry_name: '秀よし',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合名会社鈴木酒造店'
)
create_award_winner_improved(
  entry_name: '天壽',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '天寿酒造株式会社'
)
create_award_winner_improved(
  entry_name: '一白水成',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '福禄寿酒造株式会社'
)
create_award_winner_improved(
  entry_name: '春霞',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合名会社栗林酒造店'
)
create_award_winner_improved(
  entry_name: '刈穂',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '刈穂酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '爛漫',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '秋田銘釀株式会社 本社工場'
)
create_award_winner_improved(
  entry_name: '一滴千両',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '秋田県醗酵工業株式会社'
)
create_award_winner_improved(
  entry_name: '阿櫻',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '阿櫻酒造株式会社'
)
create_award_winner_improved(
  entry_name: '天の戸',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '浅舞酒造株式会社'
)
create_award_winner_improved(
  entry_name: '北鹿',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社北鹿'
)
create_award_winner_improved(
  entry_name: '太平山',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '小玉醸造株式会社'
)
create_award_winner_improved(
  entry_name: '福乃友',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '福乃友酒造株式会社'
)
create_award_winner_improved(
  entry_name: '奥清水',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社高橋酒造店'
)

# ◎山形県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '山形県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '秀鳳',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '有限会社秀鳳酒造場'
)
create_award_winner_improved(
  entry_name: '出羽桜',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '出羽桜酒造株式会社 山形蔵'
)
create_award_winner_improved(
  entry_name: '東光',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社小嶋総本店'
)
create_award_winner_improved(
  entry_name: '米鶴',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '米鶴酒造株式会社'
)
create_award_winner_improved(
  entry_name: '東の麓',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '東の麓酒造有限会社'
)
create_award_winner_improved(
  entry_name: '出羽桜',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '出羽桜酒造株式会社'
)
create_award_winner_improved(
  entry_name: '十四代',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '高木酒造株式会社'
)
create_award_winner_improved(
  entry_name: '花羽陽',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社小屋酒造'
)
create_award_winner_improved(
  entry_name: 'くどき上手',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '亀の井酒造株式会社'
)
create_award_winner_improved(
  entry_name: '栄光冨士',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '冨士酒造株式会社'
)
create_award_winner_improved(
  entry_name: '上喜元',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '酒田酒造株式会社'
)
create_award_winner_improved(
  entry_name: '倭櫻',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合名会社佐藤佐治右衛門'
)
create_award_winner_improved(
  entry_name: '麓井',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '麓井酒造株式会社'
)
create_award_winner_improved(
  entry_name: '杉勇',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合資会社杉勇蕨岡酒造場'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '一声',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社設樂酒造店'
)
create_award_winner_improved(
  entry_name: '寿久蔵',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '寿虎屋酒造株式会社 寿久蔵'
)
create_award_winner_improved(
  entry_name: '千代寿',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '千代寿虎屋株式会社'
)
create_award_winner_improved(
  entry_name: '大山',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '加藤嘉八郎酒造株式会社'
)
create_award_winner_improved(
  entry_name: '初孫',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '東北銘醸株式会社'
)
create_award_winner_improved(
  entry_name: '手間暇',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社六歌仙'
)
create_award_winner_improved(
  entry_name: '松嶺の富士',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '松山酒造株式会社'
)
create_award_winner_improved(
  entry_name: '小国桜川',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '桜川酒造株式会社'
)

# ◎福島県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '福島県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '千駒 大吟醸',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '千駒酒造株式会社'
)
create_award_winner_improved(
  entry_name: '廣戸川',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '松崎酒造株式会社'
)
create_award_winner_improved(
  entry_name: 'あぶくま',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '有限会社玄葉本店'
)
create_award_winner_improved(
  entry_name: '人気一',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '人気酒造株式会社'
)
create_award_winner_improved(
  entry_name: '会州一',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '山口合名会社'
)
create_award_winner_improved(
  entry_name: '花春',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '花春酒造株式会社'
)
create_award_winner_improved(
  entry_name: '名倉山',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '名倉山酒造株式会社'
)
create_award_winner_improved(
  entry_name: '夢心',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '夢心酒造株式会社'
)
create_award_winner_improved(
  entry_name: '弥右衛門',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合資会社大和川酒造店'
)
create_award_winner_improved(
  entry_name: '会津吉の川',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合資会社吉の川酒造店'
)
create_award_winner_improved(
  entry_name: '大吟醸 きたのはな',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合資会社喜多の華酒造場'
)
create_award_winner_improved(
  entry_name: '笹正宗',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '笹正宗酒造株式会社'
)
create_award_winner_improved(
  entry_name: '開当男山',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '渡部 謙一'
)
create_award_winner_improved(
  entry_name: 'ロ万',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '花泉酒造株式会社'
)
create_award_winner_improved(
  entry_name: '玄宰',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '末廣酒造株式会社 博士蔵'
)
create_award_winner_improved(
  entry_name: '萬代芳',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合資会社白井酒造店'
)
create_award_winner_improved(
  entry_name: '飛露喜',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社廣木酒造本店'
)
create_award_winner_improved(
  entry_name: '純米大吟醸 嘉永蔵',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '末廣酒造株式会社 嘉永蔵'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '三春駒',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '三春酒造株式会社'
)
create_award_winner_improved(
  entry_name: '藤乃井',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '有限会社佐藤酒造店'
)
create_award_winner_improved(
  entry_name: '東豊国',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '豊國酒造合資会社'
)
create_award_winner_improved(
  entry_name: '奥の松',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '東日本酒造協業組合'
)
create_award_winner_improved(
  entry_name: '千功成',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社檜物屋酒造店'
)
create_award_winner_improved(
  entry_name: '大和屋善内',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '有限会社峰の雪酒造場'
)
create_award_winner_improved(
  entry_name: '田島',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '会津酒造株式会社'
)
create_award_winner_improved(
  entry_name: '楽器正宗',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合名会社大木代吉本店'
)
create_award_winner_improved(
  entry_name: '大天狗',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '大天狗酒造株式会社'
)
create_award_winner_improved(
  entry_name: '稲川',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合資会社稲川酒造店'
)
create_award_winner_improved(
  entry_name: '純米大吟醸 榮四郎',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '栄川酒造株式会社 磐梯工場'
)
create_award_winner_improved(
  entry_name: '会津男山 回',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合資会社男山酒造店'
)
create_award_winner_improved(
  entry_name: '絆舞芳酔',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '曙酒造株式会社'
)

# ◎茨城県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '茨城県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '霧筑波',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合資会社浦里酒造店'
)
create_award_winner_improved(
  entry_name: '白菊',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合同会社廣瀬商店'
)
create_award_winner_improved(
  entry_name: '富士大観',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '森島酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: 'すてら',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '稲葉酒造'
)
create_award_winner_improved(
  entry_name: '来福',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '来福酒造株式会社'
)
create_award_winner_improved(
  entry_name: '武勇',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社武勇'
)
create_award_winner_improved(
  entry_name: '一品',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '吉久保酒造株式会社'
)
create_award_winner_improved(
  entry_name: '副将軍',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '明利酒類株式会社'
)
create_award_winner_improved(
  entry_name: '菊盛',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社木内酒造1823 鴻巣酒蔵'
)
create_award_winner_improved(
  entry_name: '富久心',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合資会社椎名酒造店'
)

# ◎栃木県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '栃木県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '七水',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社虎屋本店'
)
create_award_winner_improved(
  entry_name: '東力士',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社島崎酒造'
)
create_award_winner_improved(
  entry_name: '惣譽',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '惣誉酒造株式会社'
)
create_award_winner_improved(
  entry_name: '燦爛',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社外池酒造店'
)
create_award_winner_improved(
  entry_name: '桜川',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社辻善兵衛商店'
)
create_award_winner_improved(
  entry_name: '天鷹',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '天鷹酒造株式会社'
)
create_award_winner_improved(
  entry_name: '大那',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '菊の里酒造株式会社'
)
create_award_winner_improved(
  entry_name: '開華',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '第一酒造株式会社'
)
create_award_winner_improved(
  entry_name: '澤姫',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社井上清吉商店'
)
create_award_winner_improved(
  entry_name: '十一正宗',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '森戸酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '旭興',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '渡邉酒造株式会社'
)
create_award_winner_improved(
  entry_name: '鳳凰美田',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '小林酒造株式会社 惣社蔵'
)
create_award_winner_improved(
  entry_name: '北冠',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '北関酒造株式会社'
)
create_award_winner_improved(
  entry_name: '仙禽 醸',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社せんきん'
)
create_award_winner_improved(
  entry_name: '松の寿',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社松井酒造店'
)

# ◎群馬県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '群馬県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '流輝',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '松屋酒造株式会社'
)
create_award_winner_improved(
  entry_name: '赤城山',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '近藤酒造株式会社'
)
create_award_winner_improved(
  entry_name: '貴娘',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '貴娘酒造株式会社'
)
create_award_winner_improved(
  entry_name: '秘幻',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '浅間酒造株式会社 第二工場'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '鳳凰聖徳',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '聖徳銘醸株式会社'
)
create_award_winner_improved(
  entry_name: '船尾瀧',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '柴崎酒造株式会社'
)
create_award_winner_improved(
  entry_name: '群馬泉',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '島岡酒造株式会社'
)
create_award_winner_improved(
  entry_name: '関東の華',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '聖酒造株式会社 赤城蔵'
)
create_award_winner_improved(
  entry_name: '水芭蕉',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '永井酒造株式会社'
)
create_award_winner_improved(
  entry_name: '清リョウ',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社町田酒造店'
)

# ◎埼玉県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '埼玉県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '豊明',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '石井酒造株式会社'
)
create_award_winner_improved(
  entry_name: '帝松',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '松岡醸造株式会社'
)
create_award_winner_improved(
  entry_name: '直実',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '権田酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '力士',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社釜屋'
)
create_award_winner_improved(
  entry_name: '晴菊',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社東亜酒造'
)
create_award_winner_improved(
  entry_name: '晴雲',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '晴雲酒造株式会社'
)
create_award_winner_improved(
  entry_name: '天覧山',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '五十嵐酒造株式会社'
)
create_award_winner_improved(
  entry_name: '日本橋',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '横田酒造株式会社'
)
create_award_winner_improved(
  entry_name: '菊泉',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '滝澤酒造株式会社'
)
create_award_winner_improved(
  entry_name: '秩父錦',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社矢尾本店'
)
create_award_winner_improved(
  entry_name: '世界鷹',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社小山本家酒造 京都伏見工場'
)

# ◎新潟県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '新潟県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '千代の光',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '千代の光酒造株式会社'
)
create_award_winner_improved(
  entry_name: '越後ゆきくら',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '玉川酒造株式会社'
)
create_award_winner_improved(
  entry_name: '長者盛',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '新潟銘釀株式会社'
)
create_award_winner_improved(
  entry_name: '久保田',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '朝日酒造株式会社 朝日蔵'
)
create_award_winner_improved(
  entry_name: '雅楽代',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '天領盃酒造株式会社'
)
create_award_winner_improved(
  entry_name: '真野鶴',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '尾畑酒造株式会社'
)
create_award_winner_improved(
  entry_name: '〆張鶴',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '宮尾酒造株式会社'
)
create_award_winner_improved(
  entry_name: '白龍',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '白龍酒造株式会社'
)
create_award_winner_improved(
  entry_name: '麒麟山',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '麒麟山酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '越の鶴',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '越銘醸株式会社'
)
create_award_winner_improved(
  entry_name: '越乃景虎',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '諸橋酒造株式会社'
)
create_award_winner_improved(
  entry_name: '雪中梅',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社丸山酒造場'
)
create_award_winner_improved(
  entry_name: '妙高山',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '妙高酒造株式会社'
)
create_award_winner_improved(
  entry_name: 'たかの井',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '高の井酒造株式会社'
)
create_award_winner_improved(
  entry_name: 'かたふね',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合資会社竹田酒造店'
)
create_award_winner_improved(
  entry_name: 'よしかわ杜氏',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社よしかわ杜氏の郷'
)
create_award_winner_improved(
  entry_name: '八海山',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '八海醸造株式会社'
)
create_award_winner_improved(
  entry_name: '苗場山',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '苗場酒造株式会社'
)
create_award_winner_improved(
  entry_name: '北雪',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社北雪酒造'
)
create_award_winner_improved(
  entry_name: '菊水',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '菊水酒造株式会社 節五郎蔵'
)
create_award_winner_improved(
  entry_name: '菊水',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '菊水酒造株式会社 二王子蔵'
)
create_award_winner_improved(
  entry_name: '王紋',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '王紋酒造株式会社'
)
create_award_winner_improved(
  entry_name: '越後桜',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '越後桜酒造株式会社'
)
create_award_winner_improved(
  entry_name: '誉麒麟',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '下越酒造株式会社'
)

# ◎長野県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '長野県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '北信流',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社松葉屋本店'
)
create_award_winner_improved(
  entry_name: '川中島幻舞',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社酒千蔵野'
)
create_award_winner_improved(
  entry_name: '寒竹',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '戸塚酒造株式会社'
)
create_award_winner_improved(
  entry_name: 'つきよしの',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '若林醸造株式会社'
)
create_award_winner_improved(
  entry_name: '松尾',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社高橋助作酒造店'
)
create_award_winner_improved(
  entry_name: '女鳥羽の泉',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '善哉酒造株式会社'
)
create_award_winner_improved(
  entry_name: '黒松仙醸',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社仙醸'
)
create_award_winner_improved(
  entry_name: '七笑',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '七笑酒造株式会社'
)
create_award_winner_improved(
  entry_name: '白馬錦',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社薄井商店'
)
create_award_winner_improved(
  entry_name: '夜明け前',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社小野酒造店'
)
create_award_winner_improved(
  entry_name: '今錦',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '米澤酒造株式会社'
)
create_award_winner_improved(
  entry_name: '大雪渓',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '大雪溪酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '西之門',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社よしのや'
)
create_award_winner_improved(
  entry_name: '若緑',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社今井酒造店'
)
create_award_winner_improved(
  entry_name: '明鏡止水',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '大澤酒造株式会社'
)
create_award_winner_improved(
  entry_name: '千曲錦',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '千曲錦酒造株式会社'
)
create_award_winner_improved(
  entry_name: '北光正宗',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社角口酒造店'
)
create_award_winner_improved(
  entry_name: '本金',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '酒ぬのや本金酒造株式会社'
)
create_award_winner_improved(
  entry_name: '神渡',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社豊島屋'
)
create_award_winner_improved(
  entry_name: '喜久水',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '喜久水酒造株式会社'
)
create_award_winner_improved(
  entry_name: '信濃鶴',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '酒造株式会社長生社'
)
create_award_winner_improved(
  entry_name: '木曽路',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社湯川酒造店'
)

# ◎千葉県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '千葉県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '甲子正宗',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社飯沼本家'
)
create_award_winner_improved(
  entry_name: '東魁盛',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '小泉酒造合資会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '海舟散人',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社馬場本店酒造'
)

# ◎東京都の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '東京都').code

# 金賞受賞者

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '澤乃井',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '小澤酒造株式会社'
)
create_award_winner_improved(
  entry_name: '喜正',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '野崎酒造株式会社'
)

# ◎神奈川県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '神奈川県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '盛升',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '黄金井酒造株式会社'
)

# 銀賞受賞者

# ◎山梨県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '山梨県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '春鶯囀',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社萬屋醸造店'
)
create_award_winner_improved(
  entry_name: '七賢',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '山梨銘醸株式会社'
)

# 銀賞受賞者

# ◎富山県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '富山県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '林',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '林酒造'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '帆波',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社魚津酒造'
)

# ◎石川県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '石川県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '加賀ノ月',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社加越'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '日榮',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '中村酒造株式会社'
)
create_award_winner_improved(
  entry_name: '手取川',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社吉田酒造店'
)
create_award_winner_improved(
  entry_name: '菊姫',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '菊姫合資会社'
)

# ◎福井県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '福井県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '常山',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '常山酒造合資会社'
)
create_award_winner_improved(
  entry_name: '越前岬',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '田辺酒造有限会社'
)
create_award_winner_improved(
  entry_name: '永平寺白龍',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '𠮷田酒造株式会社'
)
create_award_winner_improved(
  entry_name: '一乃谷',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社宇野酒造場'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '黒龍',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '黒龍酒造株式会社 龍翔蔵'
)
create_award_winner_improved(
  entry_name: '梵',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合資会社加藤吉平商店'
)

# ◎岐阜県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '岐阜県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '百春',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社小坂酒造場'
)
create_award_winner_improved(
  entry_name: '奥飛騨',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '奥飛騨酒造株式会社'
)
create_award_winner_improved(
  entry_name: '天領',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '天領酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '玉柏',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合資会社山田商店'
)
create_award_winner_improved(
  entry_name: '四ツ星',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '有限会社舩坂酒造店'
)
create_award_winner_improved(
  entry_name: '黒松白扇',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '白扇酒造株式会社'
)
create_award_winner_improved(
  entry_name: '蓬莱',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '有限会社渡辺酒造店'
)

# ◎静岡県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '静岡県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '磯自慢',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '磯自慢酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '喜平 静岡蔵',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '静岡平喜酒造株式会社'
)
create_award_winner_improved(
  entry_name: '英君',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '英君酒造株式会社'
)
create_award_winner_improved(
  entry_name: '臥龍梅',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '三和酒造株式会社'
)
create_award_winner_improved(
  entry_name: '志太泉',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社志太泉酒造'
)
create_award_winner_improved(
  entry_name: '若竹',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社大村屋酒造場'
)

# ◎愛知県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '愛知県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '徳川家康',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '丸石醸造株式会社'
)
create_award_winner_improved(
  entry_name: '東龍',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '東春酒造株式会社'
)
create_award_winner_improved(
  entry_name: '菊石',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '浦野合資会社'
)
create_award_winner_improved(
  entry_name: '國盛',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '中埜酒造株式会社 國盛蔵'
)
create_award_winner_improved(
  entry_name: '勲碧',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '勲碧酒造株式会社'
)
create_award_winner_improved(
  entry_name: '武陵桃源',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '内藤醸造株式会社'
)
create_award_winner_improved(
  entry_name: '我山',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '鶴見酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '蓬莱泉',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '関谷醸造株式会社 本社工場'
)
create_award_winner_improved(
  entry_name: '一念不動',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '関谷醸造株式会社 稲武工場'
)
create_award_winner_improved(
  entry_name: '尊皇幻々',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '山﨑合資会社'
)
create_award_winner_improved(
  entry_name: '神の井',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '神の井酒造株式会社'
)
create_award_winner_improved(
  entry_name: '虎変',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '金虎酒造株式会社'
)
create_award_winner_improved(
  entry_name: '金鯱',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '盛田金しゃち酒造株式会社'
)

# ◎三重県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '三重県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '作',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '清水清三郎商店株式会社'
)
create_award_winner_improved(
  entry_name: '田光',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '合名会社早川酒造'
)
create_award_winner_improved(
  entry_name: '噴井',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '石川酒造株式会社'
)
create_award_winner_improved(
  entry_name: '義左衛門',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '若戎酒造株式会社'
)
create_award_winner_improved(
  entry_name: '而今',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '木屋正酒造株式会社'
)
create_award_winner_improved(
  entry_name: '福和蔵',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '井村屋株式会社 福和蔵'
)
create_award_winner_improved(
  entry_name: '鉾杉',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '河武醸造株式会社'
)
create_award_winner_improved(
  entry_name: '酒屋 八兵衛',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '元坂酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '三重の寒梅',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '丸彦酒造株式会社'
)
create_award_winner_improved(
  entry_name: 'おかげさま',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社伊勢萬'
)

# ◎滋賀県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '滋賀県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '松の司',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '松瀬酒造株式会社'
)
create_award_winner_improved(
  entry_name: '多賀',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '多賀株式会社'
)
create_award_winner_improved(
  entry_name: '喜楽長',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '喜多酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '浪乃音',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '浪乃音酒造株式会社'
)
create_award_winner_improved(
  entry_name: '香の泉',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '竹内酒造株式会社'
)
create_award_winner_improved(
  entry_name: '御代栄',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '北島酒造株式会社'
)
create_award_winner_improved(
  entry_name: '金紋 道灌',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '太田酒造株式会社 本社 不盡蔵'
)

# ◎京都府の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '京都府').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '初日の出',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '羽田酒造有限会社'
)
create_award_winner_improved(
  entry_name: '月桂冠',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '月桂冠株式会社 大手一号蔵'
)
create_award_winner_improved(
  entry_name: '黄桜',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '黄桜株式会社 丹波工場'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '聚樂第',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '佐々木酒造株式会社'
)
create_award_winner_improved(
  entry_name: '月桂冠',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '月桂冠株式会社 内蔵'
)
create_award_winner_improved(
  entry_name: '坤滴',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '東山酒造有限会社'
)
create_award_winner_improved(
  entry_name: '玉乃光',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '玉乃光酒造株式会社'
)
create_award_winner_improved(
  entry_name: '英勲',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '齊藤酒造株式会社 本蔵'
)
create_award_winner_improved(
  entry_name: '松竹梅',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '宝酒造株式会社 伏見工場'
)
create_award_winner_improved(
  entry_name: '黄桜',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '黄桜株式会社 三栖蔵'
)
create_award_winner_improved(
  entry_name: '黄桜',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '黄桜株式会社 伏水蔵'
)
create_award_winner_improved(
  entry_name: '黄桜',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '黄桜株式会社 本店蔵'
)

# ◎大阪府の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '大阪府').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '片野桜',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '山野酒造株式会社'
)
create_award_winner_improved(
  entry_name: '荘の郷',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '有限会社北庄司酒造店'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '國乃長',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '壽酒造株式会社 本社工場'
)
create_award_winner_improved(
  entry_name: '天野酒',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '西條合資会社'
)
create_award_winner_improved(
  entry_name: '浪花正宗',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '浪花酒造有限会社'
)

# ◎兵庫県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '兵庫県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '浜福鶴',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社小山本家酒造 灘浜福鶴蔵'
)
create_award_winner_improved(
  entry_name: '菊正宗',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '菊正宗酒造株式会社 嘉宝蔵五番'
)
create_award_winner_improved(
  entry_name: '白鶴',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '白鶴酒造株式会社 旭蔵'
)
create_award_winner_improved(
  entry_name: '白鶴',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '白鶴酒造株式会社 本店三号工場'
)
create_award_winner_improved(
  entry_name: '白鶴',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '白鶴酒造株式会社 本店二号蔵'
)
create_award_winner_improved(
  entry_name: '福壽',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社神戸酒心館 福寿蔵'
)
create_award_winner_improved(
  entry_name: '仙介',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '泉酒造株式会社 喜卯蔵'
)
create_award_winner_improved(
  entry_name: '白鷹',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '白鷹株式会社'
)
create_award_winner_improved(
  entry_name: '黒松白鹿',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '辰馬本家酒造株式会社 六光蔵'
)
create_award_winner_improved(
  entry_name: '日本盛',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '日本盛株式会社 SAKARI Craft'
)
create_award_winner_improved(
  entry_name: '日本盛',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '日本盛株式会社 本蔵'
)
create_award_winner_improved(
  entry_name: '大関',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '大関株式会社 恒和蔵'
)
create_award_winner_improved(
  entry_name: '白雪',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '小西酒造株式会社 富士山蔵'
)
create_award_winner_improved(
  entry_name: '酒造之助',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '灘菊酒造株式会社 甲蔵'
)
create_award_winner_improved(
  entry_name: '龍力 米のささやき',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社本田商店 尚龍蔵'
)
create_award_winner_improved(
  entry_name: '龍力 米のささやき',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社本田商店 親龍蔵'
)
create_award_winner_improved(
  entry_name: '播州一献',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '山陽盃酒造株式会社'
)
create_award_winner_improved(
  entry_name: '来楽',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '茨木酒造合名会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '千年一',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '千年一酒造株式会社'
)
create_award_winner_improved(
  entry_name: '沢の鶴',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '沢の鶴株式会社 瑞宝蔵'
)
create_award_winner_improved(
  entry_name: '櫻正宗',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '櫻正宗株式会社 櫻喜蔵'
)
create_award_winner_improved(
  entry_name: '菊正宗',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '菊正宗酒造株式会社 菊栄蔵'
)
create_award_winner_improved(
  entry_name: '松竹梅',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '宝酒造株式会社 白壁蔵'
)
create_award_winner_improved(
  entry_name: '大関',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '大関株式会社 寿蔵'
)
create_award_winner_improved(
  entry_name: '小鼓',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社西山酒造場'
)
create_award_winner_improved(
  entry_name: '但馬',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '此の友酒造株式会社'
)
create_award_winner_improved(
  entry_name: '雪彦山',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '壷坂酒造株式会社'
)
create_award_winner_improved(
  entry_name: '神鷹',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '江井ケ嶋酒造株式会社'
)
create_award_winner_improved(
  entry_name: '大和鶴',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '大和酒造株式会社'
)

# ◎奈良県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '奈良県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '春鹿',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社今西清兵衞商店'
)
create_award_winner_improved(
  entry_name: '三諸杉',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '今西酒造株式会社'
)
create_award_winner_improved(
  entry_name: '御代菊',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '喜多酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '豊祝',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '奈良豊澤酒造株式会社'
)
create_award_winner_improved(
  entry_name: '長龍',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '長龍酒造株式会社 広陵蔵'
)
create_award_winner_improved(
  entry_name: '八咫烏',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社北岡本店'
)

# ◎和歌山県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '和歌山県').code

# 金賞受賞者

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '紀土',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '平和酒造株式会社'
)
create_award_winner_improved(
  entry_name: '紀伊国屋 文左衛門',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '中野BC株式会社'
)
create_award_winner_improved(
  entry_name: '酔人日',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '初櫻酒造株式会社'
)

# ◎鳥取県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '鳥取県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '千代むすび',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '千代むすび酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '稲田姫',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社稲田本店'
)
create_award_winner_improved(
  entry_name: '鷹勇',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '大谷酒造株式会社'
)

# ◎島根県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '島根県').code

# 金賞受賞者

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '豊の秋',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '米田酒造株式会社'
)
create_award_winner_improved(
  entry_name: '出雲富士',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '富士酒造合資会社'
)
create_award_winner_improved(
  entry_name: '奥出雲',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '奥出雲酒造株式会社'
)
create_award_winner_improved(
  entry_name: '環日本海',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '日本海酒造株式会社'
)
create_award_winner_improved(
  entry_name: '華泉',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合資会社石州酒造'
)

# ◎岡山県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '岡山県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '酒一筋',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '利守酒造株式会社'
)
create_award_winner_improved(
  entry_name: '大典 白菊',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '白菊酒造株式会社'
)
create_award_winner_improved(
  entry_name: '三光正宗',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '三光正宗株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '極聖',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '宮下酒造株式会社'
)
create_award_winner_improved(
  entry_name: '伊七',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '熊屋酒造有限会社'
)
create_award_winner_improved(
  entry_name: '蘭の誉',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '山成酒造株式会社'
)
create_award_winner_improved(
  entry_name: '喜平',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '平喜酒造株式会社 豊穣蔵'
)

# ◎広島県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '広島県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '神雷',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '三輪酒造株式会社'
)
create_award_winner_improved(
  entry_name: '醉心',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社醉心山根本店 沼田東工場'
)
create_award_winner_improved(
  entry_name: '醉心',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社醉心山根本店 沼田東工場 三年蔵'
)
create_award_winner_improved(
  entry_name: '八幡川',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '八幡川酒造株式会社'
)
create_award_winner_improved(
  entry_name: '三谷春',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '林酒造株式会社'
)
create_award_winner_improved(
  entry_name: '特製金紋 賀茂鶴',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '賀茂鶴酒造株式会社 2号蔵'
)
create_award_winner_improved(
  entry_name: '亀齢',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '亀齢酒造株式会社 第5号蔵'
)
create_award_winner_improved(
  entry_name: '芳華金紋 白牡丹',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '白牡丹酒造株式会社 長春庫'
)
create_award_winner_improved(
  entry_name: '桜吹雪',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '金光酒造合資会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '御幸',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社小泉本店'
)
create_award_winner_improved(
  entry_name: '黒松 千福',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社三宅本店 呉宝庫'
)
create_award_winner_improved(
  entry_name: '黒松 千福',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社三宅本店 吾妻庫'
)
create_award_winner_improved(
  entry_name: '賀茂泉',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '賀茂泉酒造株式会社'
)
create_award_winner_improved(
  entry_name: '特製金紋 賀茂鶴',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '賀茂鶴酒造株式会社 8号蔵'
)
create_award_winner_improved(
  entry_name: '芳華金紋 白牡丹',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '白牡丹酒造株式会社 天保庫'
)
create_award_winner_improved(
  entry_name: '芳華金紋 白牡丹',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '白牡丹酒造株式会社 万年庫'
)

# ◎山口県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '山口県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '五橋',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '酒井酒造株式会社'
)
create_award_winner_improved(
  entry_name: '獺祭',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '旭酒造株式会社'
)
create_award_winner_improved(
  entry_name: '長陽福娘',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '岩崎酒造株式会社'
)
create_award_winner_improved(
  entry_name: '長門峡',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '有限会社岡崎酒造場'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '獺祭',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '旭酒造株式会社 第二蔵'
)
create_award_winner_improved(
  entry_name: '金紋 寿',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社中島屋酒造場'
)
create_award_winner_improved(
  entry_name: '山猿',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '永山酒造合名会社'
)
create_award_winner_improved(
  entry_name: '東洋美人',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社澄川酒造場'
)

# ◎徳島県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '徳島県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '瓢太閤',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '日新酒類株式会社 太閤酒造場'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '鳴門鯛',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社本家松浦酒造場 酒工房21'
)

# ◎香川県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '香川県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '綾菊',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '綾菊酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '小豆島の輝',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '小豆島酒造株式会社'
)

# ◎愛媛県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '愛媛県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '石鎚',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '石鎚酒造株式会社'
)
create_award_winner_improved(
  entry_name: '山丹正宗',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社八木酒造部'
)
create_award_winner_improved(
  entry_name: '梅錦',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '梅錦山川株式会社'
)
create_award_winner_improved(
  entry_name: '雪雀',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '雪雀酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '酒仙 栄光',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '榮光酒造株式会社'
)
create_award_winner_improved(
  entry_name: '伊予 賀儀屋',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '成龍酒造株式会社'
)
create_award_winner_improved(
  entry_name: '京ひな',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '酒六酒造株式会社'
)

# ◎高知県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '高知県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '豊能梅',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '高木酒造株式会社'
)
create_award_winner_improved(
  entry_name: '文佳人',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '株式会社アリサワ'
)
create_award_winner_improved(
  entry_name: '司牡丹',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '司牡丹酒造株式会社 第一製造場'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '土佐しらぎく',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '有限会社仙頭酒造場'
)
create_award_winner_improved(
  entry_name: '土佐鶴',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '土佐鶴酒造株式会社 北大野工場 千寿蔵'
)
create_award_winner_improved(
  entry_name: '土佐鶴',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '土佐鶴酒造株式会社 北大野工場 天平蔵'
)
create_award_winner_improved(
  entry_name: '純平',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '有限会社西岡酒造店'
)
create_award_winner_improved(
  entry_name: '美丈夫',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '有限会社濵川商店'
)

# ◎福岡県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '福岡県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '天心',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '溝上酒造株式会社'
)
create_award_winner_improved(
  entry_name: '筑紫野',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '大賀酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '萬代',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社小林酒造本店'
)
create_award_winner_improved(
  entry_name: '庭のうぐいす',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社山口酒造場'
)
create_award_winner_improved(
  entry_name: '山の壽',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '山の壽酒造株式会社'
)
create_award_winner_improved(
  entry_name: '三井の寿',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社みいの寿'
)
create_award_winner_improved(
  entry_name: '極醸 喜多屋',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社喜多屋'
)

# ◎佐賀県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '佐賀県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '聚楽太閤',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '鳴滝酒造株式会社'
)
create_award_winner_improved(
  entry_name: '鍋島',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '富久千代酒造有限会社'
)
create_award_winner_improved(
  entry_name: '万齢',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '小松酒造株式会社'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '天吹',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '天吹酒造合資会社'
)
create_award_winner_improved(
  entry_name: '能古見',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '有限会社馬場酒造場'
)
create_award_winner_improved(
  entry_name: '光武',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合資会社光武酒造場'
)
create_award_winner_improved(
  entry_name: '宮の松',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社松尾酒造場'
)

# ◎長崎県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '長崎県').code

# 金賞受賞者

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '杵の川 大吟醸雫しぼり',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '株式会社杵の川'
)
create_award_winner_improved(
  entry_name: '萬勝・清泉石上流',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '合資会社吉田屋'
)
create_award_winner_improved(
  entry_name: '六十餘洲',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '今里酒造株式会社'
)
create_award_winner_improved(
  entry_name: '福海 山田錦 火入',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '福田酒造株式会社'
)

# ◎大分県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '大分県').code

# 金賞受賞者

# 銀賞受賞者
create_award_winner_improved(
  entry_name: 'ちえびじん',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '有限会社中野酒造'
)

# ◎宮崎県の受賞情報
prefecture_code = JpPrefecture::Prefecture.find(name: '宮崎県').code

# 金賞受賞者
create_award_winner_improved(
  entry_name: '登喜一',
  award: gold_award,
  prefecture_code: prefecture_code,
  note: '雲海酒造株式会社 綾蔵'
)

# 銀賞受賞者
create_award_winner_improved(
  entry_name: '千徳',
  award: silver_award,
  prefecture_code: prefecture_code,
  note: '千徳酒造株式会社'
)
