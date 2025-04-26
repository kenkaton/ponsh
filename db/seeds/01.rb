c = Company.create_or_find_by!(name: '箱館醸蔵', kana: 'はこだてじょうぞう')
address_attrs = { prefecture_code: 1, city: '亀田郡', street_address: '七飯町大中山1-2-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0138-65-5599', website: 'http://gohhou.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '郷宝', kana: 'ごっほう', company: c)

c = Company.create_or_find_by!(name: '二世古酒造', kana: 'にせこしゅぞう')
address_attrs = { prefecture_code: 1, city: '虻田郡', street_address: '倶知安町旭47', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0136-22-1040', fax: '0136-23-2110', website: 'http://nisekoshuzo.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '二世古', kana: 'にせこ', company: c)
Brand.find_or_create_by!(name: '京極', kana: 'きょうごく', company: c)

c = Company.create_or_find_by!(name: '雪の花酒造', kana: 'ゆきのはなしゅぞう')
address_attrs = { prefecture_code: 1, city: '小樽市', street_address: '色内1-2-12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '小樽港', kana: 'おたるこう', company: c)
Brand.find_or_create_by!(name: '雪の花', kana: 'ゆきのはな', company: c)

c = Company.create_or_find_by!(name: '田中酒造', kana: 'たなかしゅぞう')
address_attrs = { prefecture_code: 1, city: '小樽市', street_address: '色内3-2-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0134-23-0390', fax: '0134-22-7210', website: 'https://tanakashuzo.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '亀甲蔵', kana: 'きっこうぐら', company: c)
Brand.find_or_create_by!(name: '鬼丸', kana: 'おにまる', company: c)
Brand.find_or_create_by!(name: '飲ん米', kana: 'のんべぇい', company: c)
Brand.find_or_create_by!(name: '美苫', kana: 'びせん', company: c)
Brand.find_or_create_by!(name: '宝川', kana: 'たからがわ', company: c)
Brand.find_or_create_by!(name: 'カムイトノト', kana: 'かむいとのと', company: c)
Brand.find_or_create_by!(name: '十勝晴れ', kana: 'とかちばれ', company: c)

c = Company.create_or_find_by!(name: '山二わたなべ', kana: 'やまにわたなべ')
address_attrs = { prefecture_code: 1, city: '小樽市', street_address: '色内3-1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '小樽の女', kana: 'おたるのひと', company: c)
Brand.find_or_create_by!(name: '北宝', kana: 'きたたから', company: c)
Brand.find_or_create_by!(name: '熊古露里', kana: 'くまころり', company: c)
Brand.find_or_create_by!(name: '雪中花', kana: 'せっちゅうか', company: c)

c = Company.create_or_find_by!(name: '日本清酒', kana: 'にほんせいしゅ')
address_attrs = { prefecture_code: 1, city: '札幌市中央区', street_address: '南三条東5-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '011-221-7106', fax: '011-221-3466', website: 'https://www.nipponseishu.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北世界', kana: 'きたせかい', company: c)
Brand.find_or_create_by!(name: '千歳鶴', kana: 'ちとせつる', company: c)
Brand.find_or_create_by!(name: 'すすきの美人', kana: 'すすきのびじん', company: c)
Brand.find_or_create_by!(name: '柴田', kana: 'しばた', company: c)
Brand.find_or_create_by!(name: '與次右衛門', kana: 'よじうえもん', company: c)
Brand.find_or_create_by!(name: '十一州', kana: 'じゅういっしゅう', company: c)

c = Company.create_or_find_by!(name: '小林酒造', kana: 'こばやししゅぞう')
address_attrs = { prefecture_code: 1, city: '夕張郡', street_address: '栗山町錦3-109', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0123-72-1001', fax: '0123-72-5035', website: 'http://www.kitanonishiki.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '渡里酉', kana: 'わたりどり', company: c)
Brand.find_or_create_by!(name: '炭鉄港', kana: 'たんてつこう', company: c)
Brand.find_or_create_by!(name: '北の錦', kana: 'きたのにしき', company: c)
Brand.find_or_create_by!(name: '北斗随想', kana: 'ほくとずいそう', company: c)
Brand.find_or_create_by!(name: 'まる田', kana: 'まるた', company: c)
Brand.find_or_create_by!(name: '冬花火', kana: 'ふゆはなび', company: c)

c = Company.create_or_find_by!(name: '高砂酒造', kana: 'たかさごしゅぞう')
address_attrs = { prefecture_code: 1, city: '旭川市', street_address: '宮下通17丁目右1号', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0166-23-2251', fax: '0166-22-0973', website: 'https://www.takasagoshuzo.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北吹雪', kana: 'きたふぶき', company: c)
Brand.find_or_create_by!(name: '気まぐれ', kana: 'きまぐれ', company: c)
Brand.find_or_create_by!(name: '雪氷室 一夜雫', kana: 'ゆきひむろ いちやしずく', company: c)
Brand.find_or_create_by!(name: 'ゆきわらべ', kana: 'ゆきわらべ', company: c)
Brand.find_or_create_by!(name: '大雪', kana: 'たいせつ', company: c)
Brand.find_or_create_by!(name: '国士無双', kana: 'こくしむそう', company: c)
Brand.find_or_create_by!(name: '旭神威', kana: 'あさひかむい', company: c)
Brand.find_or_create_by!(name: '大法螺', kana: 'おおぼら', company: c)
Brand.find_or_create_by!(name: 'えぞ乃熊', kana: 'えぞのくま', company: c)
Brand.find_or_create_by!(name: '風のささやき', kana: 'かぜのささやき', company: c)

c = Company.create_or_find_by!(name: '三千櫻酒造', kana: 'みちざくらしゅぞう')
address_attrs = { prefecture_code: 1, city: '上川郡', street_address: '東川町西2号北23番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0166-82-6631', fax: '0166-82-5533', website: 'https://michizakura.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三千櫻', kana: 'みちざくら', company: c)

c = Company.create_or_find_by!(name: '金滴酒造', kana: 'きんてきしゅぞう')
address_attrs = { prefecture_code: 1, city: '樺戸郡', street_address: '新十津川町中央71-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0125-76-2341', fax: '0125-74-4112', website: 'http://www.kinteki.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北の微笑', kana: 'きたのほほえみ', company: c)
Brand.find_or_create_by!(name: '雪国のだるま', kana: 'ゆきぐにのだるま', company: c)
Brand.find_or_create_by!(name: '金滴', kana: 'きんてき', company: c)
Brand.find_or_create_by!(name: '新十津川', kana: 'しんとつかわ', company: c)

c = Company.create_or_find_by!(name: '国稀酒造', kana: 'くにまれしゅぞう')
address_attrs = { prefecture_code: 1, city: '増毛郡', street_address: '増毛町稲葉町1-17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0164-53-1050', fax: '0164-53-2001', website: 'https://www.kunimare.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '国稀', kana: 'くにまれ', company: c)

c = Company.create_or_find_by!(name: '上川大雪酒造', kana: 'かみかわたいせつしゅぞう')
address_attrs = { prefecture_code: 1, city: '上川郡', street_address: '上川町旭町25番地1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://kamikawa-taisetsu.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '上川大雪', kana: 'かみかわたいせつ', company: c)

c = Company.create_or_find_by!(name: '合同酒精 旭川工場', kana: 'ごうどうしゅせい あさひかわこうじょう')
address_attrs = { prefecture_code: 1, city: '旭川市', street_address: '南四条通20-1955', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0166-31-4131', website: 'https://www.oenon.jp/product/sake' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北の誉', kana: 'きたのほまれ', company: c)
Brand.find_or_create_by!(name: '大雪乃蔵', kana: 'たいせつのくら', company: c)
Brand.find_or_create_by!(name: '侍', kana: 'さむらい', company: c)

c = Company.create_or_find_by!(name: '男山', kana: 'おとこやま')
address_attrs = { prefecture_code: 1, city: '旭川市', street_address: '永山2条7丁目1番33号', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0166-48-1931', fax: '0166-48-1910', website: 'https://www.otokoyama.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '男山', kana: 'おとこやま', company: c)

c = Company.create_or_find_by!(name: '福司酒造', kana: 'ふくつかさしゅぞう')
address_attrs = { prefecture_code: 1, city: '釧路市', street_address: '住吉2-13-23', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0154-41-3100', fax: '0154-41-3302', website: 'https://www.fukutsukasa.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福司', kana: 'ふくつかさ', company: c)

c = Company.create_or_find_by!(name: '碓氷勝三郎商店', kana: 'うすいかつさぶろうしょうてん')
address_attrs = { prefecture_code: 1, city: '根室市', street_address: '常盤町1-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0153-23-2010', fax: '0153-24-3212' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北の勝', kana: 'きたのかつ', company: c)

c = Company.create_or_find_by!(name: '山田酒造', kana: 'やまだしゅぞう')
address_attrs = { prefecture_code: 1, city: '北見市', street_address: '山下町2-1-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0157-24-5717', fax: '0157-25-8564' }
c.contact || c.create_contact!(contact_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '北見寒菊', kana: 'きたみかんぎく', company: c)
Brand.find_or_create_by!(name: '栄光摩周', kana: 'えいこうましゅう', company: c)
