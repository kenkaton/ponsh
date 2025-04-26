c = Company.create_or_find_by!(name: '福徳長酒類', kana: 'ふくとくちょうしゅるい')
address_attrs = { prefecture_code: 12, city: '松戸市', street_address: '上本郷字仲原250', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '047-315-5020', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福徳長', kana: 'ふくとくちょう', company: c)
Brand.find_or_create_by!(name: '富久娘', kana: 'ふくむすめ', company: c)


c = Company.create_or_find_by!(name: '窪田酒造', kana: 'くぼたしゅぞう')
address_attrs = { prefecture_code: 12, city: '野田市', street_address: '山崎685', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '04-7125-3331', fax: '04-7125-5752', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勝鹿', kana: 'かつしか', company: c)


c = Company.create_or_find_by!(name: '旭鶴', kana: 'あさひづる')
address_attrs = { prefecture_code: 12, city: '佐倉市', street_address: '馬渡918', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '043-498-0002', fax: '043-498-2702', website: 'http://www.asahiduru.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭鶴', kana: 'あさひづる', company: c)


c = Company.create_or_find_by!(name: '飯沼本家', kana: 'いいぬまほんけ')
address_attrs = { prefecture_code: 12, city: '印旛郡', street_address: '酒々井町馬橋106', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '043-496-1111', fax: '043-496-5718', website: 'https://www.iinumahonke.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '甲子', kana: 'きのえねまさむね', company: c)
Brand.find_or_create_by!(name: '拝啓 父上様', kana: 'はいけい ちちうえさま', company: c)
Brand.find_or_create_by!(name: '酒々井の夜明け', kana: 'しすいのよあけ', company: c)
Brand.find_or_create_by!(name: '一喜', kana: 'いっき', company: c)


c = Company.create_or_find_by!(name: '滝沢本店', kana: 'たきざわほんてん')
address_attrs = { prefecture_code: 12, city: '成田市', street_address: '上町 513', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0476-24-2292', fax: '0476-24-0758', website: 'http://www.nctv.co.jp/~takizawa', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '長命泉', kana: 'ちょうめいせん', company: c)


c = Company.create_or_find_by!(name: '東薫酒造', kana: 'とうくんしゅぞう')
address_attrs = { prefecture_code: 12, city: '香取市', street_address: '佐原イ627', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0478-55-1122', fax: '0478-55-1294', website: 'http://www.tokun.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '十富禄酒', kana: 'どぶろくしゅ', company: c)
Brand.find_or_create_by!(name: '東薫', kana: 'とうくん', company: c)
Brand.find_or_create_by!(name: '卯兵衛', kana: 'うへえ', company: c)
Brand.find_or_create_by!(name: '二人静', kana: 'ふたりしずか', company: c)


c = Company.create_or_find_by!(name: '馬場本店酒造', kana: 'ばばほんてんしゅぞう')
address_attrs = { prefecture_code: 12, city: '香取市', street_address: '佐原イ614-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0478-52-2227', fax: '0478-52-3718', website: 'http://www.babahonten.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '海舟散人', kana: 'かいしゅうさんじん', company: c)
Brand.find_or_create_by!(name: '糀善', kana: 'こうぜん', company: c)
Brand.find_or_create_by!(name: 'すいごうさかり', kana: 'すいごうさかり', company: c)
Brand.find_or_create_by!(name: '佐原ばやし', kana: 'さはらばやし', company: c)


c = Company.create_or_find_by!(name: '石上酒造', kana: 'いしがみしゅぞう')
address_attrs = { prefecture_code: 12, city: '銚子市', street_address: '田中町7-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0479-22-0655', fax: '0479-24-5415', website: 'http://www.isbc.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '銚子の誉', kana: 'ちょうしのほまれ', company: c)


c = Company.create_or_find_by!(name: '飯田酒造場', kana: 'いいだしゅぞうじょう')
address_attrs = { prefecture_code: 12, city: '銚子市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: 'がんこ者', kana: 'がんこもの', company: c)
Brand.find_or_create_by!(name: '徳明', kana: 'とくめい', company: c)


c = Company.create_or_find_by!(name: '小林酒造場', kana: 'こばやししゅぞうじょう')
address_attrs = { prefecture_code: 12, city: '銚子市', street_address: '松岸町2-78', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0479-22-0543', fax: '0479-22-5444', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '祥兆', kana: 'しょうちょう', company: c)


c = Company.create_or_find_by!(name: '寺田本家', kana: 'てらだほんけ')
address_attrs = { prefecture_code: 12, city: '香取郡', street_address: '神崎町神崎本宿1964', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0478-72-2221', fax: '0478-72-3828', website: 'https://www.teradahonke.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '醍醐のしずく', kana: 'だいごのしずく', company: c)
Brand.find_or_create_by!(name: 'むすひ', kana: 'むすび', company: c)
Brand.find_or_create_by!(name: '五人娘', kana: 'ごにんむすめ', company: c)
Brand.find_or_create_by!(name: '香取', kana: 'かとり', company: c)


c = Company.create_or_find_by!(name: '鍋店', kana: 'なべだな')
address_attrs = { prefecture_code: 12, city: '香取郡', street_address: '神崎町神崎本宿1916', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0478-72-2255', fax: '0478-72-2833', website: 'https://www.nabedana.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '不動', kana: 'ふどう', company: c)
Brand.find_or_create_by!(name: '八千代桜', kana: 'やちよざくら', company: c)
Brand.find_or_create_by!(name: '仁勇', kana: 'じんゆう', company: c)


c = Company.create_or_find_by!(name: '飯田本家', kana: 'いいだほんけ')
address_attrs = { prefecture_code: 12, city: '香取市', street_address: '小見川178', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0478-82-2037', fax: '0478-82-3831', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '惣兵衛', kana: 'そうべえ', company: c)
Brand.find_or_create_by!(name: '大姫', kana: 'おおひめ', company: c)


c = Company.create_or_find_by!(name: '神明酒造', kana: 'しんめいしゅぞう')
address_attrs = { prefecture_code: 12, city: '香取郡', street_address: '東庄町夏目298', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0478-87-0007', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神明', kana: 'しんめい', company: c)


c = Company.create_or_find_by!(name: '梅一輪酒造', kana: 'うめいちりんしゅぞう')
address_attrs = { prefecture_code: 12, city: '山武市', street_address: '松ケ谷イ2902', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0475-84-2221', fax: '0475-84-2222', website: 'https://www.umeichirin.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '梅一輪', kana: 'うめいちりん', company: c)


c = Company.create_or_find_by!(name: '東條酒造', kana: 'とうじょうしゅぞう')
address_attrs = { prefecture_code: 12, city: '山武市', street_address: '姫島1010', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0475-82-2308', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東姫', kana: 'あづまひめ', company: c)


c = Company.create_or_find_by!(name: '花の友', kana: 'はなのとも')
address_attrs = { prefecture_code: 12, city: '山武市', street_address: '松尾町大堤438', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0479-86-2044', fax: '0479-86-2844', website: 'http://hananotomo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花いちもんめ', kana: 'はないちもんめ', company: c)


c = Company.create_or_find_by!(name: '寒菊銘醸', kana: 'かんぎくめいじょう')
address_attrs = { prefecture_code: 12, city: '山武市', street_address: '松尾町武野里11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0479-86-3050', fax: '0479-86-3123', website: 'http://www.kankiku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'OCEAN99', kana: 'オーシャンナインティナイン', company: c)
Brand.find_or_create_by!(name: '寒菊', kana: 'かんぎく', company: c)


c = Company.create_or_find_by!(name: '青柳酒造', kana: 'あおやぎしゅぞう')
address_attrs = { prefecture_code: 12, city: '山武郡', street_address: '横芝光町篠本726', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0479-85-0012', fax: '0479-85-0012', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '光鬼舞', kana: 'ひかりおにまい', company: c)
Brand.find_or_create_by!(name: '篠緑', kana: 'ささみどり', company: c)


c = Company.create_or_find_by!(name: '守屋酒造', kana: 'もりやしゅぞう')
address_attrs = { prefecture_code: 12, city: '山武市', street_address: '蓮沼ハー2929', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0475-86-2016', fax: '0475-86-2173', website: 'http://maizakura.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '舞桜', kana: 'まいざくら', company: c)


c = Company.create_or_find_by!(name: '宮崎本家', kana: 'みやざきほんけ')
address_attrs = { prefecture_code: 12, city: '匝瑳市', street_address: '野手1699', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0479-67-2005', fax: '0479-67-2773', website: 'http://www.miyazaki-honke.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富士乃友', kana: 'ふじのとも', company: c)


c = Company.create_or_find_by!(name: '吉崎酒造', kana: 'よしざきしゅぞう')
address_attrs = { prefecture_code: 12, city: '君津市', street_address: '久留里市場102', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0439-27-2013', fax: '0439-27-2066', website: 'http://kichiju-gekka.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉寿', kana: 'きちじゅ', company: c)
Brand.find_or_create_by!(name: '月華', kana: 'げっか', company: c)


c = Company.create_or_find_by!(name: '藤平酒造', kana: 'とうへいしゅぞう')
address_attrs = { prefecture_code: 12, city: '君津市', street_address: '久留里市場147', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0439-27-2043', fax: '0439-27-3015', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福祝', kana: 'ふくいわい', company: c)


c = Company.create_or_find_by!(name: '宮崎酒造店', kana: 'みやざきしゅぞうてん')
address_attrs = { prefecture_code: 12, city: '君津市', street_address: '戸崎1780', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0439-35-3131', fax: '0439-35-3135', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '峯の精', kana: 'みねのせい', company: c)


c = Company.create_or_find_by!(name: '森酒造店', kana: 'もりしゅぞうてん')
address_attrs = { prefecture_code: 12, city: '君津市', street_address: '愛宕202', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0439-27-2069', fax: '0439-27-2244', website: 'http://www7b.biglobe.ne.jp/~tobitsuru', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '飛鶴', kana: 'とびつる', company: c)


c = Company.create_or_find_by!(name: '須藤本家', kana: 'すどうほんけ')
address_attrs = { prefecture_code: 12, city: '君津市', street_address: '青柳16-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0439-27-2024', fax: '0439-27-3524', website: 'http://chiba-sake.jp/kazusa/sudou', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天乃原', kana: 'あまのはら', company: c)


c = Company.create_or_find_by!(name: '千蔵酒造', kana: 'ちくらしゅぞう')
address_attrs = { prefecture_code: 12, city: '南房総市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '富泉', kana: 'とみいずみ', company: c)


c = Company.create_or_find_by!(name: '秀楽酒造', kana: 'しゅうらくしゅぞう')
address_attrs = { prefecture_code: 12, city: '鴨川市', street_address: '貝渚671', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '04-7092-0050', fax: '04-7092-5627', website: 'https://sites.google.com/site/shurakushuzo', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '海神', kana: 'かいじん', company: c)
Brand.find_or_create_by!(name: '秀楽', kana: 'しゅうらく', company: c)


c = Company.create_or_find_by!(name: '亀田酒造', kana: 'かめだしゅぞう')
address_attrs = { prefecture_code: 12, city: '鴨川市', street_address: '仲329', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0470-97-1116', fax: '0470-97-1117', website: 'http://jumangame.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '亀田', kana: 'かめだ', company: c)
Brand.find_or_create_by!(name: '寿萬亀', kana: 'じゅまんがめ', company: c)
Brand.find_or_create_by!(name: '無印良品 日本酒', kana: 'むじるしりょうひん にほんしゅ', company: c)
Brand.find_or_create_by!(name: '古代の舞', kana: 'こだいのまい', company: c)
Brand.find_or_create_by!(name: '蘇生', kana: 'そせい', company: c)
Brand.find_or_create_by!(name: '天翔亀', kana: 'てんしょうき', company: c)
Brand.find_or_create_by!(name: '大山千枚田', kana: 'おおやませんまいた', company: c)
Brand.find_or_create_by!(name: '波の伊八', kana: 'なみのいはち', company: c)
Brand.find_or_create_by!(name: '見返り美人', kana: 'みかえりびじん', company: c)


c = Company.create_or_find_by!(name: '木戸泉酒造', kana: 'きどいずみしゅぞう')
address_attrs = { prefecture_code: 12, city: 'いすみ市', street_address: '大原7635-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0470-62-0013', fax: '0470-62-3300', website: 'http://www.kidoizumi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '自然舞', kana: 'しぜんまい', company: c)
Brand.find_or_create_by!(name: '木戸泉', kana: 'きどいずみ', company: c)
Brand.find_or_create_by!(name: 'ORBIA SOL', kana: 'オルヴィア ソル', company: c)
Brand.find_or_create_by!(name: '白玉香', kana: 'はくぎょくこう', company: c)
Brand.find_or_create_by!(name: 'afs', kana: 'アフス', company: c)


c = Company.create_or_find_by!(name: '豊乃鶴酒造', kana: 'とよのつるしゅぞう')
address_attrs = { prefecture_code: 12, city: '夷隅郡', street_address: '大多喜町新丁88', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0470-82-2026', fax: '0470-82-5044', website: 'http://toyonotsuru.jimdo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大多喜城', kana: 'おおたきじょう', company: c)
Brand.find_or_create_by!(name: '銭神', kana: 'ぜにがみ', company: c)


c = Company.create_or_find_by!(name: '和蔵酒造 貞元蔵', kana: 'わぐらしゅぞう さだもとぐら')
address_attrs = { prefecture_code: 12, city: '君津市', street_address: '下湯江240', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0439-52-0461', fax: '0439-54-8581', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '若みずき', kana: 'わかみずき', company: c)
Brand.find_or_create_by!(name: '鹿野山', kana: 'かのうざん', company: c)


c = Company.create_or_find_by!(name: '和蔵酒造 竹岡蔵', kana: 'わぐらしゅぞう たけおかぐら')
address_attrs = { prefecture_code: 12, city: '富津市', street_address: '竹岡1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0439-67-0027', fax: '0439-67-1423', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '聖泉', kana: 'せいせん', company: c)


c = Company.create_or_find_by!(name: '小泉酒造', kana: 'こいずみしゅぞう')
address_attrs = { prefecture_code: 12, city: '富津市', street_address: '上後423-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0439-68-0100', fax: '0439-68-1582', website: 'http://www.sommelier.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ソムリエ', kana: 'そむりえ', company: c)
Brand.find_or_create_by!(name: '東魁正宗', kana: 'とうかいまさむね', company: c)
Brand.find_or_create_by!(name: '東魁盛', kana: 'とうかいざかり', company: c)
Brand.find_or_create_by!(name: '東魁', kana: 'とうかい', company: c)


c = Company.create_or_find_by!(name: '石野商店', kana: 'いしのしょうてん')
address_attrs = { prefecture_code: 12, city: '山武郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: 'ふさ正宗', kana: 'ふさまさむね', company: c)


c = Company.create_or_find_by!(name: '稲花酒造', kana: 'いなはなしゅぞう')
address_attrs = { prefecture_code: 12, city: '長生郡', street_address: '一宮町東浪見5841', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0475-42-3134', fax: '0475-42-5799', website: 'http://www.inahana-syuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '稲花', kana: 'いなはな', company: c)
Brand.find_or_create_by!(name: '一の宮', kana: 'いちのみや', company: c)


c = Company.create_or_find_by!(name: '岩瀬酒造', kana: 'いわせしゅぞう')
address_attrs = { prefecture_code: 12, city: '夷隅郡', street_address: '御宿町久保1916', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0470-68-2034', fax: '0470-68-5791', website: 'http://www.iwanoi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '岩の井', kana: 'いわのい', company: c)


c = Company.create_or_find_by!(name: '東灘醸造', kana: 'あずまなだじょうぞう')
address_attrs = { prefecture_code: 12, city: '勝浦市', street_address: '串浜1033', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0470-73-5221', fax: '0470-73-5224', website: 'https://azumanada.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東灘', kana: 'あずまなだ', company: c)
Brand.find_or_create_by!(name: '鳴海', kana: 'なるか', company: c)


c = Company.create_or_find_by!(name: '吉野酒造', kana: 'よしのしゅぞう')
address_attrs = { prefecture_code: 12, city: '勝浦市', street_address: '植野571', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0470-76-0215', fax: '0470-76-0168', website: 'https://koshigoi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '腰古井', kana: 'こしごい', company: c)
