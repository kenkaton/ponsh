c = Company.create_or_find_by!(name: '59醸', kana: 'ごくじょう')
address_attrs = { prefecture_code: 20, city: '', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'http://59jo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '59醸', kana: 'ごくじょう', company: c)


c = Company.create_or_find_by!(name: 'SAKU13', kana: 'さくさーてぃーん')
address_attrs = { prefecture_code: 20, city: '', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'http://ameblo.jp/sakusake13', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'SAKU13', kana: 'さくさーてぃーん', company: c)


c = Company.create_or_find_by!(name: '信州醸熱タンク', kana: 'しんしゅうじょうねつたんく')
address_attrs = { prefecture_code: 20, city: '', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
Brand.find_or_create_by!(name: '信州醸熱タンク', kana: 'しんしゅうじょうねつたんく', company: c)


c = Company.create_or_find_by!(name: 'よしのや', kana: 'よしのや')
address_attrs = { prefecture_code: 20, city: '長野市', street_address: '西之門町941', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-237-5000', fax: '026-235-6532', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '西之門', kana: 'にしのもん', company: c)
Brand.find_or_create_by!(name: '雲山', kana: 'うんざん', company: c)


c = Company.create_or_find_by!(name: '今井酒造店', kana: 'いまいしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '長野市', street_address: '小島62', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-243-3745', fax: '026-243-1374', website: 'http://www.wakamidori.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '風の露', kana: 'かぜのしずく', company: c)
Brand.find_or_create_by!(name: '何丸', kana: 'なにまる', company: c)
Brand.find_or_create_by!(name: '若緑', kana: 'わかみどり', company: c)


c = Company.create_or_find_by!(name: '松葉屋本店', kana: 'まつばやほんてん')
address_attrs = { prefecture_code: 20, city: '上高井郡', street_address: '小布施町小布施778', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-247-2019', fax: '026-247-3002', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '本吉乃川', kana: 'ほんよしのがわ', company: c)
Brand.find_or_create_by!(name: '北信流', kana: 'ほくしんりゅう', company: c)


c = Company.create_or_find_by!(name: '桝一市村酒造場', kana: 'ますいちいちむらしゅぞうじょう')
address_attrs = { prefecture_code: 20, city: '上高井郡', street_address: '小布施町小布施807', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-247-2011', fax: '026-247-6369', website: 'https://www.masuichi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ろく', kana: 'ろく', company: c)
Brand.find_or_create_by!(name: '州', kana: 'しゅう', company: c)
Brand.find_or_create_by!(name: 'スクウェア・ワン', kana: 'すくうぇあ・わん', company: c)
Brand.find_or_create_by!(name: 'はなしぼり', kana: 'はなしぼり', company: c)
Brand.find_or_create_by!(name: '鴻山', kana: 'こうざん', company: c)
Brand.find_or_create_by!(name: '碧&#28458;軒', kana: 'へきいけん', company: c)
Brand.find_or_create_by!(name: '白金', kana: 'はっきん', company: c)


c = Company.create_or_find_by!(name: '高沢酒造', kana: 'たかさわしゅぞう')
address_attrs = { prefecture_code: 20, city: '上高井郡', street_address: '小布施町大字飯田776', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-247-2114', fax: '026-247-2208', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '米川', kana: 'よねかわ', company: c)
Brand.find_or_create_by!(name: '豊賀', kana: 'とよか', company: c)


c = Company.create_or_find_by!(name: '小布施ワイナリー', kana: 'おぶせわいなりー')
address_attrs = { prefecture_code: 20, city: '上高井郡', street_address: '小布施町押羽571', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { fax: '026-247-5080', website: 'http://www.obusewinery.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ソガ ペール エ フィス', kana: 'そが ぺーる え ふぃす', company: c)
Brand.find_or_create_by!(name: 'ソッガ', kana: 'そっが', company: c)


c = Company.create_or_find_by!(name: '玉村本店', kana: 'たまむらほんてん')
address_attrs = { prefecture_code: 20, city: '下高井郡', street_address: '山ノ内町平穏1163', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0269-33-2155', fax: '0269-33-3136', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '縁喜', kana: 'えんぎ', company: c)


c = Company.create_or_find_by!(name: '松代宮坂酒造店', kana: 'まつしろみやさかしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '長野市', street_address: '松代町松代491', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-278-2006', fax: '026-278-2047', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '怒武八', kana: 'どぶはち', company: c)
Brand.find_or_create_by!(name: '海津桜', kana: 'かいづざくら', company: c)
Brand.find_or_create_by!(name: '象山正宗', kana: 'ぞうざんまさむね', company: c)
Brand.find_or_create_by!(name: '松代一番', kana: 'まつしろいちばん', company: c)
Brand.find_or_create_by!(name: '真田十万石', kana: 'さなだじゅうまんごく', company: c)
Brand.find_or_create_by!(name: '遊学城下町', kana: 'ゆうがくじょうかまち', company: c)
Brand.find_or_create_by!(name: '松代城', kana: 'まつしろじょう', company: c)


c = Company.create_or_find_by!(name: '横綱酒造', kana: 'よこづなしゅぞう')
address_attrs = { prefecture_code: 20, city: '長野市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '富士横綱', kana: 'ふじよこづな', company: c)
Brand.find_or_create_by!(name: 'カルカヤ正宗', kana: 'かるかやまさむね', company: c)


c = Company.create_or_find_by!(name: '酒千蔵野', kana: 'しゅせんくらの')
address_attrs = { prefecture_code: 20, city: '長野市', street_address: '川中島町今井368-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-284-4062', fax: '026-284-4063', website: 'http://www.shusen.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御苑', kana: 'みその', company: c)
Brand.find_or_create_by!(name: '鞍骨城', kana: 'くらぼねじょう', company: c)
Brand.find_or_create_by!(name: '桂正宗', kana: 'かつらまさむね', company: c)
Brand.find_or_create_by!(name: 'KAWANAKAJIMA silky white', kana: 'かわなかじま しるきーほわいと', company: c)
Brand.find_or_create_by!(name: 'Mari', kana: 'まり', company: c)
Brand.find_or_create_by!(name: '川中島', kana: 'かわなかじま', company: c)
Brand.find_or_create_by!(name: 'Kawanakajima-Fuwarin', kana: 'かわなかじま ふわりん', company: c)
Brand.find_or_create_by!(name: '幻舞', kana: 'げんぶ', company: c)
Brand.find_or_create_by!(name: '麻輝', kana: 'あさき', company: c)


c = Company.create_or_find_by!(name: '東飯田酒造店', kana: 'ひがしいいだしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '長野市', street_address: '篠ノ井小松原1724', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-292-2014', fax: '026-292-5410', website: 'http://www.motooi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '本老の松', kana: 'もとおいのまつ', company: c)
Brand.find_or_create_by!(name: '信里の夜明け', kana: 'のぶさとのよあけ', company: c)
Brand.find_or_create_by!(name: '松翠', kana: 'まつみどり', company: c)


c = Company.create_or_find_by!(name: '西飯田酒造店', kana: 'にしいいだしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '長野市', street_address: '篠ノ井小松原1726', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-292-2047', fax: '026-292-8168', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '信濃光', kana: 'しなのひかり', company: c)
Brand.find_or_create_by!(name: '積善', kana: 'せきぜん', company: c)
Brand.find_or_create_by!(name: '吟麗花', kana: 'ぎんれいか', company: c)


c = Company.create_or_find_by!(name: '尾澤酒造場', kana: 'おざわしゅぞうじょう')
address_attrs = { prefecture_code: 20, city: '長野市', street_address: '信州新町新町168-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-262-2209', fax: '026-262-4888', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '十九', kana: 'じゅうく', company: c)
Brand.find_or_create_by!(name: 'Snowflake', kana: 'スノーフレーク', company: c)
Brand.find_or_create_by!(name: '美寿々錦', kana: 'みすずにしき', company: c)


c = Company.create_or_find_by!(name: '遠藤酒造場', kana: 'えんどうしゅぞうじょう')
address_attrs = { prefecture_code: 20, city: '須坂市', street_address: '須坂29', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-245-0117', fax: '026-245-1477', website: 'https://www.keiryu.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '彗', kana: 'シャア', company: c)
Brand.find_or_create_by!(name: '遠藤', kana: 'えんどう', company: c)
Brand.find_or_create_by!(name: '渓流', kana: 'けいりゅう', company: c)
Brand.find_or_create_by!(name: '直虎', kana: 'なおとら', company: c)


c = Company.create_or_find_by!(name: '松葉屋', kana: 'まつばや')
address_attrs = { prefecture_code: 20, city: '須坂市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '臥龍山', kana: 'がりゅうざん', company: c)


c = Company.create_or_find_by!(name: '井賀屋酒造場', kana: 'いがやしゅぞうじょう')
address_attrs = { prefecture_code: 20, city: '中野市', street_address: '中野1597', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0269-22-3064', fax: '0269-22-3705', website: 'http://igayasyuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '岩清水', kana: 'いわしみず', company: c)
Brand.find_or_create_by!(name: '中野土びな', kana: 'なかのつちびな', company: c)


c = Company.create_or_find_by!(name: '丸世酒造店', kana: 'まるせしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '中野市', street_address: '中央2-5-12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0269-22-2011', fax: '0269-22-2041', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勢正宗', kana: 'いきおいまさむね', company: c)


c = Company.create_or_find_by!(name: '志賀泉酒造', kana: 'しがいずみしゅぞう')
address_attrs = { prefecture_code: 20, city: '中野市', street_address: '東山3-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0269-22-3322', fax: '0269-22-3227', website: 'http://www.shigaizumi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '一滴二滴', kana: 'いってきにてき', company: c)
Brand.find_or_create_by!(name: '志賀泉', kana: 'しがいずみ', company: c)


c = Company.create_or_find_by!(name: '天領誉酒造', kana: 'てんりょうほまれしゅぞう')
address_attrs = { prefecture_code: 20, city: '中野市', street_address: '大字岩船190', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0269-22-2503', fax: '0269-26-1400', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天領誉', kana: 'てんりょうほまれ', company: c)


c = Company.create_or_find_by!(name: '大塚酒造', kana: 'おおつかしゅぞう')
address_attrs = { prefecture_code: 20, city: '小諸市', street_address: '大手2-1-24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-22-0002', fax: '0267-22-0002', website: 'http://www.asamadake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '浅間嶽', kana: 'あさまだけ', company: c)


c = Company.create_or_find_by!(name: '橘倉酒造', kana: 'きつくらしゅぞう')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '臼田653-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-82-2006', fax: '0267-82-2413', website: 'http://www.kitsukura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '無尽蔵', kana: 'むじんぞう', company: c)
Brand.find_or_create_by!(name: '本菊泉', kana: 'ほんきくいずみ', company: c)
Brand.find_or_create_by!(name: '秀峰浅間', kana: 'しゅうほうあさま', company: c)
Brand.find_or_create_by!(name: '蔵', kana: 'くら', company: c)
Brand.find_or_create_by!(name: '菊秀', kana: 'きくひで', company: c)


c = Company.create_or_find_by!(name: '佐久の花酒造', kana: 'さくのはなしゅぞう')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '下越620', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-82-2107', fax: '0267-82-9468', website: 'https://www.sakunohana.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '佐久乃花', kana: 'さくのはな', company: c)


c = Company.create_or_find_by!(name: '黒澤酒造', kana: 'くろさわしゅぞう')
address_attrs = { prefecture_code: 20, city: '南佐久郡', street_address: '佐久穂町穂積1400', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-88-2002', fax: '0267-88-2047', website: 'http://www.kurosawa.biz', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八千穂', kana: 'やちほ', company: c)
Brand.find_or_create_by!(name: '井筒長', kana: 'いづつちょう', company: c)
Brand.find_or_create_by!(name: '○ト', kana: 'まると', company: c)
Brand.find_or_create_by!(name: '黒澤', kana: 'くろさわ', company: c)
Brand.find_or_create_by!(name: '雪國', kana: 'ゆきぐに', company: c)


c = Company.create_or_find_by!(name: '大澤酒造', kana: 'おおさわしゅぞう')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '茂田井2206', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-53-3100', fax: '0267-53-3105', website: 'http://osawa-sake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '明鏡止水', kana: 'めいきょうしすい', company: c)
Brand.find_or_create_by!(name: '勢起', kana: 'せき', company: c)
Brand.find_or_create_by!(name: '大吉野', kana: 'おおよしの', company: c)
Brand.find_or_create_by!(name: '信濃のかたりべ', kana: 'しなののかたりべ', company: c)


c = Company.create_or_find_by!(name: '武重本家酒造', kana: 'たけしげほんけしゅぞう')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '茂田井2179', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-53-3025', fax: '0267-53-5253', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '牧水', kana: 'ぼくすい', company: c)
Brand.find_or_create_by!(name: '御園竹', kana: 'みそのたけ', company: c)
Brand.find_or_create_by!(name: '十二六', kana: 'どぶろく', company: c)


c = Company.create_or_find_by!(name: '千曲錦酒造', kana: 'ちくまにしきしゅぞう')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '大字長土呂1110', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-67-3731', fax: '0267-68-5467', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉田屋治助', kana: 'よしだやじすけ', company: c)
Brand.find_or_create_by!(name: 'Riz Vin', kana: 'リ ヴァン', company: c)
Brand.find_or_create_by!(name: '帰山', kana: 'きざん', company: c)
Brand.find_or_create_by!(name: '千曲錦', kana: 'ちくまにしき', company: c)


c = Company.create_or_find_by!(name: '戸塚酒造店', kana: 'とつかしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '岩村田752', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-67-2105', fax: '0267-67-3700', website: 'http://www.kanchiku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '寒竹', kana: 'かんちく', company: c)


c = Company.create_or_find_by!(name: '古屋酒造店', kana: 'ふるやしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '塚原411', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-67-2153', fax: '0267-67-2958', website: 'http://www.miyamazakura.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '浅岳軽井沢', kana: 'かるいざわ', company: c)
Brand.find_or_create_by!(name: '深山桜', kana: 'みやまざくら', company: c)
Brand.find_or_create_by!(name: '和和和', kana: 'わわわ', company: c)


c = Company.create_or_find_by!(name: '芙蓉酒造', kana: 'ふようしゅぞう')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '平賀5371-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-62-0340', fax: '0267-63-2786', website: 'http://www.fuyou.org', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金宝芙蓉', kana: 'きんぽうふよう', company: c)


c = Company.create_or_find_by!(name: '木内醸造', kana: 'きうちじょうぞう')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '大沢985', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-62-0005', fax: '0267-62-2652', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初鶯', kana: 'はつうぐいす', company: c)


c = Company.create_or_find_by!(name: '土屋酒造店', kana: 'つちやしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '中込1914-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-62-0113', fax: '0267-62-6413', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美山の詩', kana: 'みやまのうた', company: c)
Brand.find_or_create_by!(name: '茜さす', kana: 'あかねさす', company: c)
Brand.find_or_create_by!(name: '亀の海', kana: 'かめのうみ', company: c)


c = Company.create_or_find_by!(name: '伴野酒造', kana: 'とものしゅぞう')
address_attrs = { prefecture_code: 20, city: '佐久市', street_address: '野沢123', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0267-62-0021', fax: '0267-62-0078', website: 'http://www.sawanohana.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '澤の花', kana: 'さわのはな', company: c)
Brand.find_or_create_by!(name: 'Michelle', kana: 'みっしぇる', company: c)
Brand.find_or_create_by!(name: '雷電', kana: 'らいでん', company: c)


c = Company.create_or_find_by!(name: '岡崎酒造', kana: 'おかざきしゅぞう')
address_attrs = { prefecture_code: 20, city: '上田市', street_address: '中央4-7-33', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0268-22-0149', fax: '0268-22-0199', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '信州亀齢', kana: 'きれい', company: c)


c = Company.create_or_find_by!(name: '和田龍酒造', kana: 'わだりゅうしゅぞう')
address_attrs = { prefecture_code: 20, city: '上田市', street_address: '中央西1-14-14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0268-22-0461', fax: '0267-25-3651', website: 'http://www.wadaryu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '和田龍登水', kana: 'わだりゅうとすい', company: c)
Brand.find_or_create_by!(name: '和田龍', kana: 'わだりゅう', company: c)


c = Company.create_or_find_by!(name: '沓掛酒造', kana: 'くつかけしゅぞう')
address_attrs = { prefecture_code: 20, city: '上田市', street_address: '下塩尻35', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0268-22-1903', fax: '0268-25-4724', website: 'http://www.fukumuryo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '互', kana: 'ご', company: c)
Brand.find_or_create_by!(name: '酣中存真楽', kana: 'かんちゅうそんしんらく', company: c)
Brand.find_or_create_by!(name: '福無量', kana: 'ふくむりょう', company: c)


c = Company.create_or_find_by!(name: '信州銘醸', kana: 'しんしゅうめいじょう')
address_attrs = { prefecture_code: 20, city: '上田市', street_address: '長瀬2999-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0268-35-0046', fax: '0268-36-3707', website: 'http://www.shinmei-net.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '明峰 喜久盛', kana: 'めいほう きくざかり', company: c)
Brand.find_or_create_by!(name: '黒耀', kana: 'こくよう', company: c)
Brand.find_or_create_by!(name: '鼎', kana: 'かなえ', company: c)
Brand.find_or_create_by!(name: '秀峰 喜久盛', kana: 'しゅうほう きくざかり', company: c)
Brand.find_or_create_by!(name: '梁山泊', kana: 'りょうざんぱく', company: c)
Brand.find_or_create_by!(name: '真田丸の里', kana: 'さなだまるのさと', company: c)
Brand.find_or_create_by!(name: '瀧澤', kana: 'たきざわ', company: c)
Brand.find_or_create_by!(name: '和乃醇', kana: 'わのじゅん', company: c)
Brand.find_or_create_by!(name: '醲献', kana: 'じょうこん', company: c)


c = Company.create_or_find_by!(name: '山三酒造', kana: 'やまさんしゅぞう')
address_attrs = { prefecture_code: 20, city: '上田市', street_address: '御嶽堂687-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0268-42-2260', fax: '0268-42-3884', website: 'http://www.rokumonsen.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '真田六文銭', kana: 'ろくもんせん', company: c)


c = Company.create_or_find_by!(name: '若林醸造', kana: 'わかばやしじょうぞう')
address_attrs = { prefecture_code: 20, city: '上田市', street_address: '中野466', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0268-38-2526', fax: '0268-38-0225', website: 'http://wakasake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月吉野', kana: 'つきよしの', company: c)


c = Company.create_or_find_by!(name: '長野銘醸', kana: 'ながのめいじょう')
address_attrs = { prefecture_code: 20, city: '千曲市', street_address: '八幡275', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-272-2138', fax: '026-272-2380', website: 'http://www.obasute.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '姨捨正宗', kana: 'おばすてまさむね', company: c)
Brand.find_or_create_by!(name: '風神雷神', kana: 'ふうじんらいじん', company: c)
Brand.find_or_create_by!(name: '聖山', kana: 'せいざん', company: c)


c = Company.create_or_find_by!(name: '天法酒造', kana: 'てんぽうしゅぞう')
address_attrs = { prefecture_code: 20, city: '千曲市', street_address: '千本柳659', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-276-0001', fax: '026-276-3527', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天法', kana: 'てんぽう', company: c)


c = Company.create_or_find_by!(name: '坂井銘醸', kana: 'さかいめいじょう')
address_attrs = { prefecture_code: 20, city: '千曲市', street_address: '戸倉1855-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-275-0033', fax: '026-276-0849', website: 'http://www.sakagura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宝ヶ池', kana: 'たからがいけ', company: c)


c = Company.create_or_find_by!(name: '高橋助作酒造店', kana: 'たかはしすけさくしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '上水内郡', street_address: '信濃町古間856-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '026-255-2007', fax: '026-255-3366', website: 'http://www.matsuwo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松尾', kana: 'まつお', company: c)


c = Company.create_or_find_by!(name: '田中屋酒造店', kana: 'たなかやしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '飯山市', street_address: '大字飯山2227', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0269-62-2057', fax: '0269-62-1203', website: 'https://www.mizuo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '水尾', kana: 'みずお', company: c)


c = Company.create_or_find_by!(name: '角口酒造店', kana: 'かどぐちしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '飯山市', street_address: '常郷1147', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0269-65-2006', fax: '0269-65-4607', website: 'http://www.kadoguchi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北光正宗', kana: 'ほっこうまさむね', company: c)


c = Company.create_or_find_by!(name: '岩波酒造', kana: 'いわなみしゅぞう')
address_attrs = { prefecture_code: 20, city: '松本市', street_address: '里山辺5159', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-25-1300', fax: '0263-25-6300', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '岩波', kana: 'いわなみ', company: c)
Brand.find_or_create_by!(name: '鏡花水月', kana: 'きょうかすいげつ', company: c)


c = Company.create_or_find_by!(name: '奥澤商会', kana: 'おくざわしょうかい')
address_attrs = { prefecture_code: 20, city: '松本市', street_address: '中央2-1-20', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-32-0517', fax: '0263-32-1137', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '深志鶴', kana: 'ふかしつる', company: c)


c = Company.create_or_find_by!(name: '笹井酒造', kana: 'ささいしゅぞう')
address_attrs = { prefecture_code: 20, city: '松本市', street_address: '島内3682', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-47-0762', fax: '0263-47-1421', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '笹の誉', kana: 'ささのほまれ', company: c)


c = Company.create_or_find_by!(name: '亀田屋酒造店', kana: 'かめたやしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '松本市', street_address: '島立2748', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-47-1320', fax: '0263-47-7056', website: 'http://www.kametaya.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'アルプス正宗', kana: 'あるぷすまさむね', company: c)


c = Company.create_or_find_by!(name: '大信州酒造', kana: 'だいしんしゅうしゅぞう')
address_attrs = { prefecture_code: 20, city: '松本市', street_address: '島立2380', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-47-0895', fax: '0263-47-8007', website: 'http://www.daishinsyu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '春香彩', kana: 'しゅんかいろどり', company: c)
Brand.find_or_create_by!(name: '香月', kana: 'こうづき', company: c)
Brand.find_or_create_by!(name: '信濃薫水', kana: 'しなのくんすい', company: c)
Brand.find_or_create_by!(name: '大信州', kana: 'だいしんしゅう', company: c)


c = Company.create_or_find_by!(name: '善哉酒造', kana: 'よいかなしゅぞう')
address_attrs = { prefecture_code: 20, city: '松本市', street_address: '大手5-4-24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-32-0734', fax: '0263-32-9054', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '女鳥羽の泉', kana: 'めとばのいずみ', company: c)
Brand.find_or_create_by!(name: '善哉', kana: 'よいかな', company: c)


c = Company.create_or_find_by!(name: '諏訪大津屋本家酒造', kana: 'すわおおつやほんけしゅぞう')
address_attrs = { prefecture_code: 20, city: '茅野市', street_address: 'ちの2998番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0266-72-2118', fax: '0266-72-2780', website: 'http://www.shopdaiya.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ダイヤ菊', kana: 'だいやぎく', company: c)


c = Company.create_or_find_by!(name: '伊東酒造', kana: 'いとうしゅぞう')
address_attrs = { prefecture_code: 20, city: '諏訪市', street_address: '諏訪2-3-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0266-52-0108', fax: '0266-52-6662', website: 'http://www.yokobue.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '横笛', kana: 'よこぶえ', company: c)


c = Company.create_or_find_by!(name: '舞姫酒造', kana: 'まいひめしゅぞう')
address_attrs = { prefecture_code: 20, city: '諏訪市', street_address: '諏訪2-9-25', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0266-52-0078', fax: '0266-58-0078', website: 'https://www.maihime.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '舞姫', kana: 'まいひめ', company: c)
Brand.find_or_create_by!(name: '翠露', kana: 'すいろ', company: c)
Brand.find_or_create_by!(name: 'PRINCESS TIME', kana: 'プリンセス タイム', company: c)
Brand.find_or_create_by!(name: '髙尾の天狗', kana: 'たかおのてんぐ', company: c)


c = Company.create_or_find_by!(name: '酒ぬのや本金酒造', kana: 'さけぬのやほんきんしゅぞう')
address_attrs = { prefecture_code: 20, city: '諏訪市', street_address: '諏訪2丁目8-21', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0266-58-0161', fax: '0266-58-3745', website: 'http://www.honkin.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '本金', kana: 'ほんきん', company: c)


c = Company.create_or_find_by!(name: '麗人酒造', kana: 'れいじんしゅぞう')
address_attrs = { prefecture_code: 20, city: '諏訪市', street_address: '諏訪2-9-21', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0266-52-3121', fax: '0266-52-3122', website: 'http://www.reijin.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '麗人', kana: 'れいじん', company: c)


c = Company.create_or_find_by!(name: '宮坂醸造', kana: 'みやさかじょうぞう')
address_attrs = { prefecture_code: 20, city: '諏訪市', street_address: '元町1-16', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0266-52-6161', fax: '0266-53-4477', website: 'https://www.masumi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '真澄', kana: 'ますみ', company: c)
Brand.find_or_create_by!(name: 'みやさか', kana: 'みやさか', company: c)


c = Company.create_or_find_by!(name: '諏訪御湖鶴酒造場', kana: 'すわみこつるしゅぞうじょう')
address_attrs = { prefecture_code: 20, city: '諏訪郡', street_address: '下諏訪町御田町3205-17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0266-75-1172', website: 'https://www.mikotsuru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御湖鶴', kana: 'みこつる', company: c)


c = Company.create_or_find_by!(name: '高天酒造', kana: 'こうてんしゅぞう')
address_attrs = { prefecture_code: 20, city: '岡谷市', street_address: '銀座2-2-17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0266-22-2027', fax: '0266-22-9777', website: 'http://www.koten-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '高天', kana: 'こうてん', company: c)


c = Company.create_or_find_by!(name: '豊島屋', kana: 'としまや')
address_attrs = { prefecture_code: 20, city: '岡谷市', street_address: '本町3-9-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0266-23-1123', fax: '0266-22-0787', website: 'http://jizake.miwatari.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊香', kana: 'ほうか', company: c)
Brand.find_or_create_by!(name: '神渡', kana: 'みわたり', company: c)


c = Company.create_or_find_by!(name: '喜久水酒造', kana: 'きくすいしゅぞう')
address_attrs = { prefecture_code: 20, city: '飯田市', street_address: '鼎切石4293番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0265-22-2300', fax: '0265-22-2329', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '喜久水', kana: 'きくすい', company: c)
Brand.find_or_create_by!(name: '聖岳', kana: 'ひじりだけ', company: c)


c = Company.create_or_find_by!(name: '漆戸醸造', kana: 'うるしどじょうぞう')
address_attrs = { prefecture_code: 20, city: '伊那市', street_address: '西町4875-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0265-78-2223', fax: '0265-78-3073', website: 'http://www.urushido.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '井乃頭', kana: 'いのかしら', company: c)


c = Company.create_or_find_by!(name: '宮島酒店', kana: 'みやじまさけてん')
address_attrs = { prefecture_code: 20, city: '伊那市', street_address: '荒井3629番地1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0265-78-3008', fax: '0265-78-9492', website: 'http://www.miyajima.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '信濃錦', kana: 'しなのにしき', company: c)
Brand.find_or_create_by!(name: '斬九郎', kana: 'ざんくろう', company: c)
Brand.find_or_create_by!(name: '水樂そう', kana: 'すいがくそう', company: c)


c = Company.create_or_find_by!(name: '仙醸', kana: 'せんじょう')
address_attrs = { prefecture_code: 20, city: '伊那市', street_address: '高遠町上山田2432', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0265-94-2250', fax: '0265-94-2025', website: 'http://www.senjyo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '黒松仙醸', kana: 'くろまつせんじょう', company: c)
Brand.find_or_create_by!(name: 'チキート', kana: 'ちきーと', company: c)
Brand.find_or_create_by!(name: '奏音', kana: 'かなね', company: c)
Brand.find_or_create_by!(name: 'こんな夜に…', kana: 'こんなよるに…', company: c)
Brand.find_or_create_by!(name: '仙人蔵', kana: 'せんにんぐら', company: c)
Brand.find_or_create_by!(name: '仙醸', kana: 'せんじょう', company: c)


c = Company.create_or_find_by!(name: '七笑酒造', kana: 'ななわらいしゅぞう')
address_attrs = { prefecture_code: 20, city: '木曽郡', street_address: '木曽町福島5135', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0264-22-2073', fax: '0264-22-4164', website: 'http://www.nanawarai.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '七つの笑い酒', kana: 'ななつのわらいさけ', company: c)
Brand.find_or_create_by!(name: '美 ROKU', kana: 'びろく', company: c)
Brand.find_or_create_by!(name: '七笑', kana: 'ななわらい', company: c)


c = Company.create_or_find_by!(name: '中善酒造店', kana: 'なかぜんしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '木曽郡', street_address: '木曽町福島5990', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0264-22-2112', fax: '0264-24-2130', website: 'https://nakanorisan.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '中乗さん', kana: 'なかのりさん', company: c)
Brand.find_or_create_by!(name: '善吉', kana: 'ぜんきち', company: c)


c = Company.create_or_find_by!(name: '北安醸造', kana: 'ほくあんじょうぞう')
address_attrs = { prefecture_code: 20, city: '大町市', street_address: '大町2340-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0261-22-0214', fax: '0261-23-4834', website: 'https://hokuan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山響', kana: 'やまびこ', company: c)
Brand.find_or_create_by!(name: '北安大國', kana: 'ほくあんだいこく', company: c)
Brand.find_or_create_by!(name: '豊響', kana: 'みのり', company: c)
Brand.find_or_create_by!(name: '白馬紫雲', kana: 'はくばしうん', company: c)
Brand.find_or_create_by!(name: '雷鳥の里', kana: 'らいちょうのさと', company: c)
Brand.find_or_create_by!(name: '居谷里', kana: 'いやり', company: c)
Brand.find_or_create_by!(name: '小谷錦', kana: 'おたりにしき', company: c)
Brand.find_or_create_by!(name: 'いいずら', kana: 'いいずら', company: c)
Brand.find_or_create_by!(name: '塩の絆', kana: 'しおのきずな', company: c)
Brand.find_or_create_by!(name: 'あづみ野育ち', kana: 'あづみのそだち', company: c)


c = Company.create_or_find_by!(name: '市野屋', kana: 'いちのや')
address_attrs = { prefecture_code: 20, city: '大町市', street_address: '大町2527番地　イ号', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0261-22-0010', fax: '0261-22-0006', website: 'https://www.ichinoya-kk.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福蘭', kana: 'ふくらん', company: c)
Brand.find_or_create_by!(name: '市野屋', kana: 'いちのや', company: c)
Brand.find_or_create_by!(name: '金蘭黒部', kana: 'きんらんくろべ', company: c)


c = Company.create_or_find_by!(name: '薄井商店', kana: 'うすいしょうてん')
address_attrs = { prefecture_code: 20, city: '大町市', street_address: '大町2512-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0261-22-0007', fax: '0261-23-2070', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白馬錦', kana: 'はくばにしき', company: c)


c = Company.create_or_find_by!(name: '小野酒造店', kana: 'おのしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '上伊那郡', street_address: '辰野町小野992-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0266-46-2505', fax: '0266-46-2751', website: 'https://yoakemae-ono.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '頼母鶴', kana: 'たのもつる', company: c)
Brand.find_or_create_by!(name: '伊那菊', kana: 'いなぎく', company: c)
Brand.find_or_create_by!(name: '夜明け前', kana: 'よあけまえ', company: c)


c = Company.create_or_find_by!(name: '丸永酒造場', kana: 'まるながしゅぞうじょう')
address_attrs = { prefecture_code: 20, city: '塩尻市', street_address: '広丘高出840', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-52-2633', fax: '0263-54-4749', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '高波', kana: 'たかなみ', company: c)


c = Company.create_or_find_by!(name: '笑亀酒造', kana: 'しょうきしゅぞう')
address_attrs = { prefecture_code: 20, city: '塩尻市', street_address: '塩尻町140', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-52-0302', fax: '0263-54-3410', website: 'http://www.syoki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '嘉根満', kana: 'かねまん', company: c)
Brand.find_or_create_by!(name: '笑亀', kana: 'しょうき', company: c)
Brand.find_or_create_by!(name: '貴魂', kana: 'きこん', company: c)


c = Company.create_or_find_by!(name: '米澤酒造', kana: 'よねざわしゅぞう')
address_attrs = { prefecture_code: 20, city: '上伊那郡', street_address: '中川村大草4182-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0265-88-3012', fax: '0265-88-3013', website: 'https://www.imanisiki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '年輪', kana: 'ねんりん', company: c)
Brand.find_or_create_by!(name: '天龍', kana: 'てんりゅう', company: c)
Brand.find_or_create_by!(name: 'おたまじゃくし', kana: 'おたまじゃくし', company: c)
Brand.find_or_create_by!(name: '今錦', kana: 'いまにしき', company: c)
Brand.find_or_create_by!(name: '新・今錦伝', kana: 'しん いまにしきでん', company: c)


c = Company.create_or_find_by!(name: '長生社', kana: 'ちょうせいしゃ')
address_attrs = { prefecture_code: 20, city: '駒ケ根市', street_address: '赤須東10-31', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0265-83-4136', fax: '0265-83-2481', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '信濃鶴', kana: 'しなのつる', company: c)


c = Company.create_or_find_by!(name: '大國酒造', kana: 'おおくにしゅぞう')
address_attrs = { prefecture_code: 20, city: '伊那市', street_address: '西春近2161-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0265-72-2040', website: 'http://www.ookuni.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御馬寄', kana: 'みまよせ', company: c)
Brand.find_or_create_by!(name: '大國', kana: 'おおくに', company: c)


c = Company.create_or_find_by!(name: '山岸酒店', kana: 'やまぎしさけてん')
address_attrs = { prefecture_code: 20, city: '上伊那郡', street_address: '箕輪町中箕輪9549', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0265-79-2034', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '岸の松', kana: 'きしのまつ', company: c)


c = Company.create_or_find_by!(name: '西尾酒造', kana: 'にしおしゅぞう')
address_attrs = { prefecture_code: 20, city: '木曽郡', street_address: '大桑村須原893', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0264-55-3002', fax: '0264-55-3412', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '木曽のかけはし', kana: 'きそのかけはし', company: c)


c = Company.create_or_find_by!(name: '湯川酒造店', kana: 'ゆかわしゅぞうてん')
address_attrs = { prefecture_code: 20, city: '木曽郡', street_address: '木祖村薮原1003-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0264-36-2030', fax: '0264-36-2711', website: 'https://www.sake-kisoji.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '木曽路', kana: 'きそじ', company: c)
Brand.find_or_create_by!(name: '九郎右衛門', kana: 'くろうえもん', company: c)


c = Company.create_or_find_by!(name: '杉の森酒造 suginomori brewery', kana: 'すぎのもりしゅぞう')
address_attrs = { prefecture_code: 20, city: '塩尻市', street_address: '奈良井551-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0264-34-3001', fax: '0264-34-3006', website: 'https://www.narai.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'narai', kana: 'ならい', company: c)
Brand.find_or_create_by!(name: '杉の森', kana: 'すぎのもり', company: c)


c = Company.create_or_find_by!(name: '美寿々酒造', kana: 'みすずしゅぞう')
address_attrs = { prefecture_code: 20, city: '塩尻市', street_address: '洗馬2402', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-52-0013', fax: '0263-54-3581', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美寿々', kana: 'みすず', company: c)


c = Company.create_or_find_by!(name: '明科酒造', kana: 'あかしなしゅぞう')
address_attrs = { prefecture_code: 20, city: '安曇野市', street_address: '明科中川手4176', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-62-2033', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '廣田泉', kana: 'ひろたいずみ', company: c)


c = Company.create_or_find_by!(name: '菊水醸造店', kana: 'きくすいじょうぞうてん')
address_attrs = { prefecture_code: 20, city: '松本市', street_address: '会田755-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-64-2010', fax: '0263-64-4382', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月光', kana: 'げっこう', company: c)


c = Company.create_or_find_by!(name: '山清酒造', kana: 'さんせいしゅぞう')
address_attrs = { prefecture_code: 20, city: '東筑摩郡', street_address: '筑北村坂北1720', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-66-2011', fax: '0263-66-3415', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山清', kana: 'さんせい', company: c)
Brand.find_or_create_by!(name: '御開帳', kana: 'ごかいちょう', company: c)


c = Company.create_or_find_by!(name: 'EH酒造', kana: 'いーえいちしゅぞう')
address_attrs = { prefecture_code: 20, city: '安曇野市', street_address: '豊科高家1090-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0263-72-2828', fax: '0263-72-6268', website: 'http://www.eh-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔園', kana: 'すいえん', company: c)
Brand.find_or_create_by!(name: '雪乃酒', kana: 'ゆきのさけ', company: c)
Brand.find_or_create_by!(name: '男の涙', kana: 'おとこのなみだ', company: c)
Brand.find_or_create_by!(name: '鬼かん', kana: 'おにかん', company: c)
Brand.find_or_create_by!(name: '深江蔵', kana: 'ふかえぐら', company: c)


c = Company.create_or_find_by!(name: '福源酒造', kana: 'ふくげんしゅぞう')
address_attrs = { prefecture_code: 20, city: '北安曇郡', street_address: '池田町池田2100', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0261-62-2210', fax: '0261-62-8050', website: 'http://www.sake-fukugen.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北アルプス', kana: 'きたあるぷす', company: c)


c = Company.create_or_find_by!(name: '大雪渓酒造', kana: 'だいせっけいしゅぞう')
address_attrs = { prefecture_code: 20, city: '北安曇郡', street_address: '池田町会染9642-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0261-62-3125', fax: '0261-62-2150', website: 'https://www.jizake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大雪渓', kana: 'だいせっけい', company: c)
