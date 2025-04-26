c = Company.create_or_find_by!(name: '賜杯桜酒造', kana: 'しはいざくらしゅぞう')
address_attrs = { prefecture_code: 8, city: '取手市', street_address: '和田1010', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0297-85-8224', fax: '0297-85-8257', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'かっぱ桜', kana: 'かっぱざくら', company: c)


c = Company.create_or_find_by!(name: '浦里酒造店', kana: 'うらざとしゅぞうてん')
address_attrs = { prefecture_code: 8, city: 'つくば市', street_address: '吉沼982', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '029-865-0032', fax: '029-865-1857', website: 'https://www.kiritsukuba.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '霧筑波', kana: 'きりつくば', company: c)
Brand.find_or_create_by!(name: '福笑', kana: 'ふくわらい', company: c)
Brand.find_or_create_by!(name: '浦里', kana: 'うらざと', company: c)


c = Company.create_or_find_by!(name: '山中酒造店', kana: 'やまなかしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '常総市', street_address: '新石下187', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0297-42-2004', fax: '0297-42-6977', website: 'https://hitorimusume.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '一人娘', kana: 'ひとりむすめ', company: c)


c = Company.create_or_find_by!(name: '野村醸造', kana: 'のむらじょうぞう')
address_attrs = { prefecture_code: 8, city: '常総市', street_address: '本石下2052', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0297-42-2056', fax: '0297-42-8998', website: 'http://www.tsumugibijin.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '紬美人', kana: 'つむぎびじん', company: c)


c = Company.create_or_find_by!(name: '稲葉酒造', kana: 'いなばしゅぞう')
address_attrs = { prefecture_code: 8, city: 'つくば市', street_address: '沼田1485', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '029-866-0020', fax: '029-866-1747', website: 'http://www.minanogawa.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'すてら', kana: 'すてら', company: c)
Brand.find_or_create_by!(name: '神仙', kana: 'しんせん', company: c)
Brand.find_or_create_by!(name: '男女川', kana: 'みなのがわ', company: c)


c = Company.create_or_find_by!(name: '村井醸造', kana: 'むらいじょうぞう')
address_attrs = { prefecture_code: 8, city: '桜川市', street_address: '真壁町真壁72', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-55-0005', fax: '0296-55-3797', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '真壁', kana: 'まかべ', company: c)
Brand.find_or_create_by!(name: '公明', kana: 'こうめい', company: c)


c = Company.create_or_find_by!(name: '西岡本店', kana: 'にしおかほんてん')
address_attrs = { prefecture_code: 8, city: '桜川市', street_address: '真壁町田6-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-55-1171', fax: '0296-54-1310', website: 'http://www.hananoi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花の井', kana: 'はなのい', company: c)
Brand.find_or_create_by!(name: '海世紀', kana: 'かいせいき', company: c)


c = Company.create_or_find_by!(name: '軽部酒造店', kana: 'かるべしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '桜川市', street_address: '真壁町東矢貝590', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-55-0375', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '正気', kana: 'せいき', company: c)


c = Company.create_or_find_by!(name: '来福酒造', kana: 'らいふくしゅぞう')
address_attrs = { prefecture_code: 8, city: '筑西市', street_address: '村田1626', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-52-2448', fax: '0296-52-6448', website: 'https://www.raifuku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '魔愚魔', kana: 'まぐま', company: c)
Brand.find_or_create_by!(name: '桐の華', kana: 'きりのはな', company: c)
Brand.find_or_create_by!(name: '秀緑', kana: 'しゅうろく', company: c)
Brand.find_or_create_by!(name: '来福', kana: 'らいふく', company: c)
Brand.find_or_create_by!(name: '真向勝負', kana: 'まっこうしょうぶ', company: c)
Brand.find_or_create_by!(name: '筑西', kana: 'ちくせい', company: c)


c = Company.create_or_find_by!(name: '岡田酒造店', kana: 'おかだしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '龍ケ崎市', street_address: '光順田2920-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0297-62-1411', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '牡丹正宗', kana: 'ぼたんまさむね', company: c)


c = Company.create_or_find_by!(name: '田中酒造店', kana: 'たなかしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '取手市', street_address: '取手2-13-35', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0297-72-0011', fax: '0297-72-0078', website: 'http://www.kimibandai.sake-ten.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '君萬代', kana: 'きみばんだい', company: c)


c = Company.create_or_find_by!(name: '金門酒造', kana: 'きんもんしゅぞう')
address_attrs = { prefecture_code: 8, city: '取手市', street_address: '青柳65', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0297-72-0103', fax: '0297-74-4828', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金門', kana: 'きんもん', company: c)


c = Company.create_or_find_by!(name: '竹村酒造店', kana: 'たけむらしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '常総市 ', street_address: '水海道宝町3375-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0297-23-1155', fax: '0297-22-1991', website: 'https://takemurashuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'やわら三万石', kana: 'やわらさんまんごく', company: c)
Brand.find_or_create_by!(name: '富士龍', kana: 'ふじりゅう', company: c)
Brand.find_or_create_by!(name: '京の夢', kana: 'きょうのゆめ', company: c)
Brand.find_or_create_by!(name: '瑠璃', kana: 'るり', company: c)


c = Company.create_or_find_by!(name: '青木酒造', kana: 'あおきしゅぞう')
address_attrs = { prefecture_code: 8, city: '古河市', street_address: '本町2-15-11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0280-32-5678', fax: '0280-32-0655', website: 'http://www.aokishuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '十大', kana: 'じゅうだい', company: c)
Brand.find_or_create_by!(name: '御慶事', kana: 'ごけいじ', company: c)
Brand.find_or_create_by!(name: '二才の醸', kana: 'にさいのかもし', company: c)


c = Company.create_or_find_by!(name: '萩原酒造', kana: 'はぎわらしゅぞう')
address_attrs = { prefecture_code: 8, city: '猿島郡', street_address: '境町565-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0280-87-0746', fax: '0280-87-0893', website: 'http://www.tokumasamune.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '徳正宗', kana: 'とくまさむね', company: c)


c = Company.create_or_find_by!(name: '大塚酒造', kana: 'おおつかしゅぞう')
address_attrs = { prefecture_code: 8, city: '坂東市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '秀緑', kana: 'しゅうろく', company: c)


c = Company.create_or_find_by!(name: '武勇', kana: 'ぶゆう')
address_attrs = { prefecture_code: 8, city: '結城市', street_address: '結城144', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-33-3343', fax: '0296-33-3368', website: 'http://www.buyu.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '武勇', kana: 'ぶゆう', company: c)


c = Company.create_or_find_by!(name: '結城酒造', kana: 'ゆうきしゅぞう')
address_attrs = { prefecture_code: 8, city: '結城市', street_address: '結城1589', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-33-3344', fax: '0296-33-3348', website: 'http://www.yuki-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'つむぎ娘', kana: 'つむぎむすめ', company: c)
Brand.find_or_create_by!(name: '富久福', kana: 'ふくふく', company: c)
Brand.find_or_create_by!(name: '結', kana: 'ゆい', company: c)


c = Company.create_or_find_by!(name: '堀川酒造店', kana: 'ほりかわしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '桜川市', street_address: '岩瀬178-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-75-2007', fax: '0296-75-1005', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桜川', kana: 'さくらがわ', company: c)


c = Company.create_or_find_by!(name: '武藤酒類醸造', kana: 'むとうしゅるいじょうぞう')
address_attrs = { prefecture_code: 8, city: '笠間市', street_address: '笠間1180', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-72-0008', fax: '0296-72-1810', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東海', kana: 'とうかい', company: c)


c = Company.create_or_find_by!(name: '笹目宗兵衛商店', kana: 'ささめそうべえしょうてん')
address_attrs = { prefecture_code: 8, city: '笠間市', street_address: '笠間1339', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-72-0021', fax: '0296-72-1633', website: 'http://www.matsumidori.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '二波山松緑', kana: 'ふたばさんまつみどり', company: c)


c = Company.create_or_find_by!(name: '磯蔵酒造', kana: 'いそくらしゅぞう')
address_attrs = { prefecture_code: 8, city: '笠間市', street_address: '稲田2281-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-74-2002', fax: '0296-74-4815', website: 'http://www.isokura.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '稲里', kana: 'いなさと', company: c)


c = Company.create_or_find_by!(name: '須藤本家', kana: 'すどうほんけ')
address_attrs = { prefecture_code: 8, city: '笠間市', street_address: '小原2125', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0296-77-0152', fax: '0296-77-4628', website: 'http://www.sudohonke.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '郷乃誉', kana: 'さとのほまれ', company: c)


c = Company.create_or_find_by!(name: '瀧田酒造店', kana: 'たきたしゅぞうじょう')
address_attrs = { prefecture_code: 8, city: '水戸市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '瀧紅葉', kana: 'たきもみじ', company: c)
Brand.find_or_create_by!(name: '三ツ扇', kana: 'みつおうぎ', company: c)


c = Company.create_or_find_by!(name: '吉久保酒造', kana: 'よしくぼしゅぞう')
address_attrs = { prefecture_code: 8, city: '水戸市', street_address: '本町3-9-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '029-224-4111', fax: '029-231-6005', website: 'https://www.ippin.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '百歳', kana: 'ひゃくさい', company: c)
Brand.find_or_create_by!(name: '一品', kana: 'いっぴん', company: c)
Brand.find_or_create_by!(name: 'SABA de SHU', kana: 'サバデシュ', company: c)


c = Company.create_or_find_by!(name: '明利酒類', kana: 'めいりしゅるい')
address_attrs = { prefecture_code: 8, city: '水戸市', street_address: '元吉田町338', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '029-247-6111', fax: '029-247-9585', website: 'https://meirishurui.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '小倉山', kana: 'おぐらやま', company: c)
Brand.find_or_create_by!(name: '瑞鳳紫山', kana: 'ずいほうしざん', company: c)
Brand.find_or_create_by!(name: '水府自慢', kana: 'すいふじまん', company: c)
Brand.find_or_create_by!(name: '雪夜月', kana: 'ゆきよづき', company: c)
Brand.find_or_create_by!(name: '副将軍', kana: 'ふくしょうぐん', company: c)


c = Company.create_or_find_by!(name: '木内酒造', kana: 'きうちしゅぞう')
address_attrs = { prefecture_code: 8, city: '那珂市', street_address: '鴻巣1257', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '029-298-0105', fax: '029-295-4580', website: 'https://kodawari.cc', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '木内', kana: 'きうち', company: c)
Brand.find_or_create_by!(name: '菊盛', kana: 'きくさかり', company: c)


c = Company.create_or_find_by!(name: '檜山酒造', kana: 'ひやましゅぞう')
address_attrs = { prefecture_code: 8, city: '常陸太田市', street_address: '町屋町1359', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0294-78-0611', fax: '0294-78-0612', website: 'http://www.hiyama.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '光圀', kana: 'みつくに', company: c)
Brand.find_or_create_by!(name: '千姫', kana: 'せんひめ', company: c)
Brand.find_or_create_by!(name: '朝日正宗', kana: 'あさひまさむね', company: c)


c = Company.create_or_find_by!(name: '井坂酒造店', kana: 'いさかしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '常陸太田市', street_address: '小中町187', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0294-82-2006', fax: '0294-82-2006', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日乃出鶴', kana: 'ひのでつる', company: c)


c = Company.create_or_find_by!(name: '東魁酒造', kana: 'とうかいしゅぞう')
address_attrs = { prefecture_code: 8, city: '常陸太田市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '東魁山', kana: 'とうかいざん', company: c)


c = Company.create_or_find_by!(name: '月の井酒造店', kana: 'つきのいしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '東茨城郡', street_address: '大洗町磯浜町638', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '029-266-2168', fax: '029-266-0195', website: 'http://www.tsukinoi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月の井', kana: 'つきのい', company: c)


c = Company.create_or_find_by!(name: '愛友酒造', kana: 'あいゆうしゅぞう')
address_attrs = { prefecture_code: 8, city: '潮来市', street_address: '辻205', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0299-62-2234', fax: '0299-62-2250', website: 'http://www.aiyu-sake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '友寿', kana: 'ともじゅ', company: c)
Brand.find_or_create_by!(name: '愛友', kana: 'あいゆう', company: c)
Brand.find_or_create_by!(name: '霰降', kana: 'あられふり', company: c)


c = Company.create_or_find_by!(name: '遠峰酒造', kana: 'とおみねしゅぞう')
address_attrs = { prefecture_code: 8, city: '潮来市', street_address: '潮来209', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0299-62-2014', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '文華', kana: 'ぶんか', company: c)


c = Company.create_or_find_by!(name: '伊能酒造店', kana: 'いのうしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '小美玉市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '幾久一', kana: 'きくいち', company: c)


c = Company.create_or_find_by!(name: '竹乃葉酒造', kana: 'たけのはしゅぞう')
address_attrs = { prefecture_code: 8, city: '行方市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '竹乃葉', kana: 'たけのは', company: c)
Brand.find_or_create_by!(name: '東竹乃葉', kana: 'あずまたけのは', company: c)


c = Company.create_or_find_by!(name: '岡部合名', kana: 'おかべごうめい')
address_attrs = { prefecture_code: 8, city: '常陸太田市', street_address: '小沢町2335', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0294-74-2171', fax: '0294-74-2172', website: 'https://www.matsuzakari.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '岡部', kana: 'おかべ', company: c)
Brand.find_or_create_by!(name: '黄門ばやし', kana: 'こうもんばやし', company: c)
Brand.find_or_create_by!(name: '穂内郷', kana: 'ほないごう', company: c)
Brand.find_or_create_by!(name: '昼下がりのランデヴー', kana: 'ひるさがりのらんで&#12436;ー', company: c)
Brand.find_or_create_by!(name: '悪代官', kana: 'あくだいかん', company: c)
Brand.find_or_create_by!(name: '助さん格さん', kana: 'すけさんかくさん', company: c)
Brand.find_or_create_by!(name: '松盛', kana: 'まつざかり', company: c)
Brand.find_or_create_by!(name: '金波寒月', kana: 'きんぱかんげつ', company: c)
Brand.find_or_create_by!(name: '竜神バンジー', kana: 'りゅうじんばんじー', company: c)
Brand.find_or_create_by!(name: '茨苑', kana: 'しえん', company: c)
Brand.find_or_create_by!(name: 'ご縁だね', kana: 'ごえんだね', company: c)


c = Company.create_or_find_by!(name: '剛烈酒造', kana: 'ごうれつしゅぞう')
address_attrs = { prefecture_code: 8, city: '常陸太田市', street_address: '大里町3401', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0294-76-2007', fax: '0294-76-2350', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '剛烈', kana: 'ごうれつ', company: c)
Brand.find_or_create_by!(name: '順子', kana: 'じゅんこ', company: c)


c = Company.create_or_find_by!(name: '太田銘醸', kana: 'おおためいじょう')
address_attrs = { prefecture_code: 8, city: '常陸太田市', street_address: '松平町1074', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0294-85-1100', fax: '0294-85-1101', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富久酔', kana: 'ふくよい', company: c)


c = Company.create_or_find_by!(name: '府中誉', kana: 'ふちゅうほまれ')
address_attrs = { prefecture_code: 8, city: '石岡市', street_address: '国府5-9-32', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0299-23-0233', fax: '0299-23-0234', website: 'http://www.huchuhomare.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '府中誉', kana: 'ふちゅうほまれ', company: c)
Brand.find_or_create_by!(name: '太平海', kana: 'たいへいかい', company: c)
Brand.find_or_create_by!(name: '渡舟', kana: 'わたりぶね', company: c)
Brand.find_or_create_by!(name: 'さきがけ', kana: 'さきがけ', company: c)


c = Company.create_or_find_by!(name: '石岡酒造', kana: 'いしおかしゅぞう')
address_attrs = { prefecture_code: 8, city: '石岡市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '白鹿', kana: 'はくしか', company: c)
Brand.find_or_create_by!(name: '筑波', kana: 'つくば', company: c)
Brand.find_or_create_by!(name: '寿山', kana: 'じゅざん', company: c)
Brand.find_or_create_by!(name: '米音', kana: 'こめおと', company: c)
Brand.find_or_create_by!(name: 'いしおか恋瀬姫', kana: 'いしおかこいせひめ', company: c)
Brand.find_or_create_by!(name: '酔鶴', kana: 'よいづる', company: c)


c = Company.create_or_find_by!(name: '廣瀬商店', kana: 'ひろせしょうてん')
address_attrs = { prefecture_code: 8, city: '石岡市', street_address: '高浜880', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0299-26-4131', fax: '0299-26-6699', website: 'https://shiragiku-sake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'SEN', kana: 'せん', company: c)
Brand.find_or_create_by!(name: '霞の里', kana: 'かすみのさと', company: c)
Brand.find_or_create_by!(name: 'オヤジナカセ', kana: 'おやじなかせ', company: c)
Brand.find_or_create_by!(name: '紅梅一輪', kana: 'こうばいいちりん', company: c)
Brand.find_or_create_by!(name: '白菊', kana: 'しらぎく', company: c)
Brand.find_or_create_by!(name: '筑波の白梅', kana: 'つくばのはくばい', company: c)


c = Company.create_or_find_by!(name: '藤田酒造店', kana: 'ふじたしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '石岡市', street_address: '井関994-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0299-26-2582', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富士泉', kana: 'ふじいずみ', company: c)


c = Company.create_or_find_by!(name: '嶋崎酒造', kana: 'しまざきしゅぞう')
address_attrs = { prefecture_code: 8, city: '日立市', street_address: '鮎川町4-2-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0294-33-0025', fax: '0294-35-5199', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '恵泉', kana: 'けいせん', company: c)
Brand.find_or_create_by!(name: '玉の雫', kana: 'たまのしずく', company: c)


c = Company.create_or_find_by!(name: '菊乃香酒造', kana: 'きくのかしゅぞう')
address_attrs = { prefecture_code: 8, city: '日立市', street_address: '十王町友部104', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0294-39-4311', fax: '0294-39-5555', website: 'http://www.kshuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'Any.', kana: 'エニー', company: c)
Brand.find_or_create_by!(name: '二人舞台', kana: 'ふたりぶたい', company: c)
Brand.find_or_create_by!(name: '十王蔵', kana: 'じゅうおうぐら', company: c)


c = Company.create_or_find_by!(name: '椎名酒造店', kana: 'しいなしゅぞうてん')
address_attrs = { prefecture_code: 8, city: '日立市', street_address: '十王町高原411', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0293-32-2041', fax: '0293-32-3121', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富久心', kana: 'ふくごころ', company: c)


c = Company.create_or_find_by!(name: '森島酒造', kana: 'もりしましゅぞう')
address_attrs = { prefecture_code: 8, city: '日立市', street_address: '川尻町1-17-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0294-43-5334', fax: '0294-43-5335', website: 'http://www.morishima-sake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日立盛', kana: 'ひたちざかり', company: c)
Brand.find_or_create_by!(name: '大観', kana: 'たいかん', company: c)
Brand.find_or_create_by!(name: '森嶋', kana: 'もりしま', company: c)


c = Company.create_or_find_by!(name: '住の友酒造', kana: 'すみのともしゅぞう')
address_attrs = { prefecture_code: 8, city: '北茨城市', street_address: '平潟町465', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0293-46-0403', fax: '0293-46-0403', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '住の友', kana: 'すみのとも', company: c)
Brand.find_or_create_by!(name: '天心抄', kana: 'てんしんしょう', company: c)


c = Company.create_or_find_by!(name: '浅川酒造', kana: 'あさかわしゅぞう')
address_attrs = { prefecture_code: 8, city: '常陸大宮市', street_address: '上大賀2534', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0295-52-0151', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '稲の盛', kana: 'いねのもり', company: c)
Brand.find_or_create_by!(name: '美人鶴', kana: 'びじんづる', company: c)


c = Company.create_or_find_by!(name: '酔富銘醸', kana: 'すいふめいじょう')
address_attrs = { prefecture_code: 8, city: '常陸大宮市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '酔富', kana: 'すいふ', company: c)


c = Company.create_or_find_by!(name: '根本酒造', kana: 'ねもとしゅぞう')
address_attrs = { prefecture_code: 8, city: '常陸大宮市', street_address: '山方630', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0295-57-2211', fax: '0295-57-6855', website: 'http://kujinoyama.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'カミマル', kana: 'かみまる', company: c)
Brand.find_or_create_by!(name: '久慈の山', kana: 'くじのやま', company: c)


c = Company.create_or_find_by!(name: '珂北酒造', kana: 'かほくしゅぞう')
address_attrs = { prefecture_code: 8, city: '久慈郡', street_address: '大子町内大野1887', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0295-76-0121', fax: '0295-76-0123', website: 'https://kahoku1896.jimdo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭桜', kana: 'あさひざくら', company: c)
Brand.find_or_create_by!(name: '清香酒', kana: 'せいこうしゅ', company: c)
Brand.find_or_create_by!(name: '袋田紀行', kana: 'ふくろだきこう', company: c)
Brand.find_or_create_by!(name: '月居姫', kana: 'つきおれひめ', company: c)


c = Company.create_or_find_by!(name: '家久長本店', kana: 'かくちょうほんてん')
address_attrs = { prefecture_code: 8, city: '久慈郡', street_address: '大子町大子248-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0295-72-0525', fax: '0295-72-3085', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '四度の瀧', kana: 'よどのたき', company: c)
Brand.find_or_create_by!(name: '家久長', kana: 'かくちょう', company: c)
Brand.find_or_create_by!(name: '霊水八溝', kana: 'れいすいやみぞ', company: c)
