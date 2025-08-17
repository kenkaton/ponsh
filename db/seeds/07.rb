c = Company.in_prefecture(7).find_or_create_by!(name: 'ぷくぷく醸造', kana: 'ぷくぷくじょうぞう')
address_attrs = { prefecture_code: 7, city: '南相馬市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://twitter.com/tachikawa_tetsu', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ぷくぷく醸造の純米酒', kana: 'ぷくぷくじょうぞうのじゅんまいしゅ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '喜多方・坂下・高田エリア14蔵', kana: '')
address_attrs = { prefecture_code: 7, city: '', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
Brand.find_or_create_by!(name: '馬鹿三里', kana: 'ばかさんり', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '會津アクティベートアソシエーション株式会社', kana: 'あいづあくてぃべーとあそしえーしょん')
address_attrs = { prefecture_code: 7, city: '', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://aizuaa.thebase.in', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'AIZ’S-EYES', kana: 'アイズアイズ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '金水晶酒造店', kana: 'きんすいしょうしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '福島市', street_address: '松川町本町29', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '024-567-2011', fax: '024-567-5449', website: 'http://www.kinsuisho.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'おらが純米', kana: 'おらがじゅんまい', company: c)
Brand.find_or_create_by!(name: '金水晶', kana: 'きんすいしょう', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '有賀醸造', kana: 'ありがじょうぞう')
address_attrs = { prefecture_code: 7, city: '白河市', street_address: '東釜子本町96', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0248-34-2323', fax: '0248-34-2140', website: 'http://arinokawa.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'やまゆり', kana: 'やまゆり', company: c)
Brand.find_or_create_by!(name: '霧の華', kana: 'きりのはな', company: c)
Brand.find_or_create_by!(name: 'やまぶき', kana: 'やまぶき', company: c)
Brand.find_or_create_by!(name: '理系兄弟', kana: 'りけいきょうだい', company: c)
Brand.find_or_create_by!(name: '有の川', kana: 'ありのかわ', company: c)
Brand.find_or_create_by!(name: '生粋左馬', kana: 'きっすいひだりうま', company: c)
Brand.find_or_create_by!(name: '陣屋', kana: 'じんや', company: c)
Brand.find_or_create_by!(name: '元祖', kana: 'おおもと', company: c)
Brand.find_or_create_by!(name: 'しらかわ虎', kana: 'しらかわとら', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '千駒酒造', kana: 'せんこましゅぞう')
address_attrs = { prefecture_code: 7, city: '白河市', street_address: '年貢町15-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0248-23-3057', fax: '0248-22-0259', website: 'http://senkoma.wn.shopserve.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千駒', kana: 'せんこま', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '大谷忠吉本店', kana: 'おおやちゅうきちほんてん')
address_attrs = { prefecture_code: 7, city: '白河市', street_address: '本町54', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0248-23-2030', fax: '0248-23-2062', website: 'http://www.hakuyou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '登龍', kana: 'とりゅう', company: c)
Brand.find_or_create_by!(name: '白陽', kana: 'はくよう', company: c)
Brand.find_or_create_by!(name: 'しらかわ龍', kana: 'しらかわりゅう', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '白河銘醸', kana: 'しらかわめいじょう')
address_attrs = { prefecture_code: 7, city: '西白河郡', street_address: '西郷村小田倉中庄司4-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0248-25-1121', fax: '0248-25-2288', website: 'http://www.shirakawa-meijo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '会津磐梯山', kana: 'あいづばんだいさん', company: c)
Brand.find_or_create_by!(name: 'のんでみやがれ！', kana: 'のんでみやがれ！', company: c)
Brand.find_or_create_by!(name: '谷乃越', kana: 'たにのこし', company: c)
Brand.find_or_create_by!(name: '地水火風人', kana: 'ちすいかふうじん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '寿々乃井酒造店', kana: 'すずのいしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '岩瀬郡', street_address: '天栄村牧之内矢中1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0248-82-2021', fax: '0120-82-2071', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '寿月', kana: 'じゅげつ', company: c)
Brand.find_or_create_by!(name: '羽鳥郷', kana: 'はとりごう', company: c)
Brand.find_or_create_by!(name: '寿々乃井', kana: 'すゞのい', company: c)
Brand.find_or_create_by!(name: '天栄山', kana: 'てんえいざん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '松崎酒造店', kana: 'まつざきしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '岩瀬郡', street_address: '天栄村下松本要谷47-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0248-82-2022', fax: '0248-82-2107', website: 'http://matsuzakisyuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '廣戸川', kana: 'ひろとがわ', company: c)
Brand.find_or_create_by!(name: '石背', kana: 'いわせ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '笹の川酒造', kana: 'ささのかわしゅぞう')
address_attrs = { prefecture_code: 7, city: '郡山市', street_address: '笹川1-178', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '024-945-0261', fax: '024-945-7559', website: 'http://www.sasanokawa.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '笹の川', kana: 'ささのかわ', company: c)
Brand.find_or_create_by!(name: '夜の森桜', kana: 'よのもりさくら', company: c)
Brand.find_or_create_by!(name: 'ありがとう県警', kana: 'ありがとうけんけい', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '渡辺酒造本店', kana: 'わたなべしゅぞうほんてん')
address_attrs = { prefecture_code: 7, city: '郡山市', street_address: '西田町三町目桜内10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '024-972-2401', fax: '024-971-3007', website: 'http://www.yukikomachi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '雪小町', kana: 'ゆきこまち', company: c)
Brand.find_or_create_by!(name: '風雲剣鬼伝 髑髏玄四郎', kana: 'どくろげんしろう', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '仁井田本家', kana: 'にいだほんけ')
address_attrs = { prefecture_code: 7, city: '郡山市', street_address: '田村町金沢高屋敷139', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '024-955-2222', fax: '024-955-5151', website: 'http://www.kinpou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '自然酒', kana: 'しぜんしゅ', company: c)
Brand.find_or_create_by!(name: '田村', kana: 'たむら', company: c)
Brand.find_or_create_by!(name: '金寶', kana: 'きんぽう', company: c)
Brand.find_or_create_by!(name: '穏', kana: 'おだやか', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '小泉合名', kana: 'こいずみ')
address_attrs = { prefecture_code: 7, city: '田村郡', street_address: '小野町小野新町本町8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0247-72-3005', fax: '0247-72-3005', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '泉山', kana: 'いずみやま', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '秋元酒造店', kana: 'あきもとしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '田村郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '清川', kana: 'きよかわ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '玄葉本店', kana: 'げんばほんてん')
address_attrs = { prefecture_code: 7, city: '田村市', street_address: '船引町船引北町通41', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0247-82-0030', fax: '0247-82-0020', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あぶくま', kana: 'あぶくま', company: c)
Brand.find_or_create_by!(name: '奥州鶴', kana: 'おうしゅうつる', company: c)
Brand.find_or_create_by!(name: '小沢の桜', kana: 'おざわのさくら', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '矢澤酒造店', kana: 'やざわしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '東白川郡', street_address: '矢祭町戸塚41', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0247-46-3101', fax: '0247-46-3610', website: 'https://www.yazawashuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'うらら', kana: 'うらら', company: c)
Brand.find_or_create_by!(name: '銀箭', kana: 'ぎんせん', company: c)
Brand.find_or_create_by!(name: '南郷', kana: 'なんごう', company: c)
Brand.find_or_create_by!(name: '月と虹', kana: 'つきとにじ', company: c)
Brand.find_or_create_by!(name: '白孔雀', kana: 'しろくじゃく', company: c)
Brand.find_or_create_by!(name: 'つう', kana: 'つう', company: c)
Brand.find_or_create_by!(name: '薄紅葉', kana: 'うすもみじ', company: c)
Brand.find_or_create_by!(name: '矢祭山', kana: 'やまつりやま', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '家満寿美', kana: 'やますみ')
address_attrs = { prefecture_code: 7, city: '東白川郡', street_address: '塙町植田坂ノ下15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0247-43-1155', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松美と里', kana: 'まつみとり', company: c)
Brand.find_or_create_by!(name: '神代からの酒', kana: 'かみよからのさけ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '藤田屋本店', kana: 'ふじたやほんてん')
address_attrs = { prefecture_code: 7, city: '東白川郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '福賑栄', kana: 'ふくにぎわい', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '三春酒造', kana: 'みはるしゅぞう')
address_attrs = { prefecture_code: 7, city: '田村郡', street_address: '三春町中町67', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0247-62-2816', fax: '0247-62-2881', website: 'https://www.boki.co.jp/sake/index.html', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '傳', kana: 'でん', company: c)
Brand.find_or_create_by!(name: '愛姫', kana: 'めごひめ', company: c)
Brand.find_or_create_by!(name: '滝桜', kana: 'たきざくら', company: c)
Brand.find_or_create_by!(name: '三春駒', kana: 'みはるこま', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '佐藤酒造店', kana: 'さとうしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '郡山市', street_address: '富久山町久保田5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '024-922-1763', fax: '024-922-1763', website: 'http://www.fujinoi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '藤乃井', kana: 'ふじのい', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '若清水酒造', kana: 'わかしみずしゅぞう')
address_attrs = { prefecture_code: 7, city: '石川郡', street_address: '平田村北方寺屋敷18', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0247-54-2019', fax: '0247-54-3108', website: 'http://www.wakashimizu.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '若清水', kana: 'わかしみず', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '豊国酒造', kana: 'とよくにしゅぞう')
address_attrs = { prefecture_code: 7, city: '石川郡', street_address: '古殿町竹貫114', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0247-53-2001', fax: '0247-53-2070', website: 'http://azuma-toyokuni.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '一歩己', kana: 'いぶき', company: c)
Brand.find_or_create_by!(name: '東豊国', kana: 'あずまとよくに', company: c)
Brand.find_or_create_by!(name: '束', kana: 'たばね tabane', company: c)
Brand.find_or_create_by!(name: '超', kana: 'ちょう', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '若関酒造', kana: 'わかぜきしゅぞう')
address_attrs = { prefecture_code: 7, city: '郡山市', street_address: '久留米2-98', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '024-945-0010', fax: '024-945-0011', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'さかみずき', kana: 'さかみずき', company: c)
Brand.find_or_create_by!(name: '若関', kana: 'わかぜき', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '人気酒造', kana: 'にんきしゅぞう')
address_attrs = { prefecture_code: 7, city: '二本松市', street_address: '山田470', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0243-23-2091', fax: '0243-23-2098', website: 'http://www.ninki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '人気一', kana: 'にんきいち', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '奥の松酒造', kana: 'おくのまつしゅぞう')
address_attrs = { prefecture_code: 7, city: '二本松市', street_address: '長命69', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0243-22-2153', fax: '0243-22-2011', website: 'http://www.okunomatsu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '遊佐', kana: 'ゆさ', company: c)
Brand.find_or_create_by!(name: '奥の松', kana: 'おくのまつ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '大七酒造', kana: 'だいしちしゅぞう')
address_attrs = { prefecture_code: 7, city: '二本松市', street_address: '竹田1-66', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0243-23-0007', fax: '0243-23-0008', website: 'https://www.daishichi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大七', kana: 'だいしち', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '檜物屋酒造店', kana: 'ひものやしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '二本松市', street_address: '松岡173', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0243-23-0164', fax: '0243-22-3163', website: 'http://www.senkonari.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千功成', kana: 'せんこうなり', company: c)
Brand.find_or_create_by!(name: '奥州安達ヶ原', kana: 'おうしゅうあだちがはら', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '大内酒造', kana: 'おおうちしゅぞう')
address_attrs = { prefecture_code: 7, city: '二本松市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: 'あだたら菊水', kana: 'あだたらあきくすい', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '山口合名', kana: 'やまぐちごうめい')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '相生町7-17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-25-0054', fax: '0242-24-6533', website: 'http://blog.goo.ne.jp/kaisyuichi', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '儀兵衛', kana: 'ぎへい', company: c)
Brand.find_or_create_by!(name: '会州一', kana: 'かいしゅういち', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '東山酒造', kana: 'ひがしやましゅぞう')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '古典写楽', kana: 'こてんしゃらく', company: c)
Brand.find_or_create_by!(name: '東山', kana: 'ひがしやま', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '柏木酒造店', kana: 'かしわぎしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '天香', kana: 'てんこう', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '辰泉酒造', kana: 'たついずみしゅぞう')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '上町5-26', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-22-0504', fax: '0242-22-0503', website: 'http://www.tatsuizumi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '京の華', kana: 'きょうのはな', company: c)
Brand.find_or_create_by!(name: '会津流', kana: 'あいづながれ', company: c)
Brand.find_or_create_by!(name: '鶴ヶ城', kana: 'つるがじょう', company: c)
Brand.find_or_create_by!(name: '成志', kana: 'せいし', company: c)
Brand.find_or_create_by!(name: '辰泉', kana: 'たついずみ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '鶴乃江酒造', kana: 'つるのえしゅぞう')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '七日町2-46', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-27-0139', fax: '0242-27-0339', website: 'https://www.tsurunoe.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '会津中将', kana: 'あいづちゅうじょう', company: c)
Brand.find_or_create_by!(name: '永寶屋', kana: 'えいほうや', company: c)
Brand.find_or_create_by!(name: '鶴乃江', kana: 'つるのえ', company: c)
Brand.find_or_create_by!(name: 'ゆり', kana: 'ゆり', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '花春酒造', kana: 'はなはるしゅぞう')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '神指町中四合小見前24-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-22-0022', fax: '0242-37-2100', website: 'https://hanaharu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花春', kana: 'はなはる', company: c)
Brand.find_or_create_by!(name: '結芽の奏', kana: 'ゆめのかなで', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '名倉山酒造', kana: 'なぐらやましゅぞう')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '千石町2-46', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-22-0844', fax: '0242-24-6179', website: 'http://www.nagurayama.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '名倉山', kana: 'なぐらやま', company: c)
Brand.find_or_create_by!(name: '月弓', kana: 'げっきゅう', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '高橋庄作酒造店', kana: 'たかはししょうさくしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '門田町一ノ堰村東755', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-27-0108', fax: '0242-27-0108', website: 'http://aizumusume.a.la9.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '会津娘', kana: 'あいづむすめ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '石橋酒造場', kana: 'いしばししゅぞうじょう')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '御旗町3-18', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-27-0313', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '薫鷹', kana: 'くんたか', company: c)
Brand.find_or_create_by!(name: '会津灘', kana: 'あいづなだ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '末廣酒造', kana: 'すえひろしゅぞう')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '日新町12-38', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-27-0002', fax: '0242-27-0003', website: 'http://www.sake-suehiro.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '末廣', kana: 'すえひろ', company: c)
Brand.find_or_create_by!(name: '玄宰', kana: 'げんさい', company: c)
Brand.find_or_create_by!(name: '染井櫻', kana: 'そめいざくら', company: c)
Brand.find_or_create_by!(name: '壺中春', kana: 'こちゅうしゅん', company: c)
Brand.find_or_create_by!(name: '春高楼', kana: 'はるこうろう', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '宮泉銘醸', kana: 'みやいずみめいじょう')
address_attrs = { prefecture_code: 7, city: '会津若松市', street_address: '東栄町8-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-27-0031', fax: '0242-27-0032', website: 'http://www.miyaizumi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '会津宮泉', kana: 'あいづみやいずみ', company: c)
Brand.find_or_create_by!(name: '写楽', kana: 'しゃらく', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '夢心酒造', kana: 'ゆめごころしゅぞう')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '北町2932', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-22-1266', fax: '0241-25-7177', website: 'http://www.yumegokoro.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夢心', kana: 'ゆめごころ', company: c)
Brand.find_or_create_by!(name: '奈良萬', kana: 'ならまん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '小原酒造', kana: 'おはらしゅぞう')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '南町2846', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-22-0074', fax: '0241-22-0094', website: 'http://www.oharashuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '漢字のまち喜多方', kana: 'かんじのまちきたかた', company: c)
Brand.find_or_create_by!(name: '蔵粋', kana: 'くらしっく', company: c)
Brand.find_or_create_by!(name: '国光', kana: 'こっこう', company: c)
Brand.find_or_create_by!(name: '喜多方ラーメン酒', kana: 'きたかたらーめん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '峰の雪酒造場', kana: 'みねのゆきしゅぞうじょう')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '桜ガ丘1-17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-22-0431', fax: '0241-22-0432', website: 'http://minenoyuki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蔵', kana: 'くら', company: c)
Brand.find_or_create_by!(name: '清川', kana: 'きよかわ', company: c)
Brand.find_or_create_by!(name: '大和屋善内', kana: 'やまとやぜんない', company: c)
Brand.find_or_create_by!(name: '峰の雪', kana: 'みねのゆき', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '清川商店', kana: 'きよかわしょうてん')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '2-4659', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-22-0233', fax: '0241-22-1001', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '会津清川', kana: 'あいづきよかわ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '吉の川酒造店', kana: 'よしのがわしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '1-4635', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-22-0059', fax: '0241-22-0791', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '会津吉の川', kana: 'あいづよしのがわ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '大和川酒造店', kana: 'やまとがわしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '寺町4761', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-22-2233', fax: '0241-22-2223', website: 'http://www.yauemon.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夢酔月', kana: 'ゆめすいげつ', company: c)
Brand.find_or_create_by!(name: '彌右衛門', kana: 'やうえもん', company: c)
Brand.find_or_create_by!(name: '弥右衛門', kana: 'やうえもん', company: c)
Brand.find_or_create_by!(name: '佳き酔 歌磐梯', kana: 'よきよい うたばんだい', company: c)
Brand.find_or_create_by!(name: '桑折', kana: 'こおり', company: c)
Brand.find_or_create_by!(name: '大和川', kana: 'やまとがわ', company: c)
Brand.find_or_create_by!(name: '奥州岩代', kana: 'おうしゅういわしろ', company: c)
Brand.find_or_create_by!(name: '野恩', kana: 'やおん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '喜多の華酒造場', kana: 'きたのはなしゅぞうじょう')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '前田4924', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-22-0268', fax: '0241-22-0268', website: 'http://www.kitano87.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'きたのはな', kana: 'きたのはな', company: c)
Brand.find_or_create_by!(name: '蔵太鼓', kana: 'くらだいこ', company: c)
Brand.find_or_create_by!(name: '星自慢', kana: 'ほしじまん', company: c)
Brand.find_or_create_by!(name: '金澤屋', kana: 'かなざわや', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: 'ほまれ酒造', kana: 'ほまれしゅぞう')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '松山町村松常盤町2706', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-22-5151', fax: '0241-24-4600', website: 'http://www.aizuhomare.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'からはし', kana: 'からはし', company: c)
Brand.find_or_create_by!(name: '雲嶺庵', kana: 'うんれいあん', company: c)
Brand.find_or_create_by!(name: 'ライフプレミアム', kana: 'らいふぷれみあむ', company: c)
Brand.find_or_create_by!(name: '会津ほまれ', kana: 'あいづほまれ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '香久山', kana: 'かぐやま')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '松山町村松字常盤町2698', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-22-1717', fax: '0241-22-1717', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '香久山', kana: 'かぐやま', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '笹正宗酒造', kana: 'ささまさむねしゅぞう')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '上三宮町上三宮籬山675', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-24-2211', fax: '0241-23-1575', website: 'http://www.sasamasamune.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '笹正宗', kana: 'ささまさむね', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '国権酒造', kana: 'こっけんしゅぞう')
address_attrs = { prefecture_code: 7, city: '南会津郡', street_address: '南会津町田島上町甲4037', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-62-0036', fax: '0241-62-3878', website: 'http://www.kokken.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '国権', kana: 'こっけん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '開当男山酒造', kana: 'かいとうおとこやましゅぞう')
address_attrs = { prefecture_code: 7, city: '南会津郡', street_address: '南会津町中荒井久宝居785', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-62-0023', fax: '0241-62-0073', website: 'http://otokoyama.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '久宝居', kana: 'くぼい', company: c)
Brand.find_or_create_by!(name: '開当男山', kana: 'かいとうおとこやま', company: c)
Brand.find_or_create_by!(name: '山王丸', kana: 'さんのうまる', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '会津酒造', kana: 'あいづしゅぞう')
address_attrs = { prefecture_code: 7, city: '南会津郡', street_address: '南会津町永田穴沢603', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-62-0012', fax: '0241-62-0923', website: 'http://www.kinmon.aizu.or.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '田島', kana: 'たじま', company: c)
Brand.find_or_create_by!(name: '山の井', kana: 'やまのい', company: c)
Brand.find_or_create_by!(name: '金紋会津', kana: 'きんもんあいづ', company: c)
Brand.find_or_create_by!(name: '会津時間', kana: 'あいづじかん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '花泉酒造', kana: 'はないずみしゅぞう')
address_attrs = { prefecture_code: 7, city: '南会津郡', street_address: '南会津町界中田646-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-73-2029', fax: '0241-73-2566', website: 'http://www.hanaizumi.ne.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ロ万', kana: 'ろまん', company: c)
Brand.find_or_create_by!(name: '花泉', kana: 'はないずみ', company: c)
Brand.find_or_create_by!(name: 'だぢゅー', kana: 'だぢゅー', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: 'ねっか', kana: 'ねっか')
address_attrs = { prefecture_code: 7, city: '南会津郡', street_address: '只見町梁取沖998', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-72-8872', fax: '0241-72-8886', website: 'https://nekka.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '雪龍', kana: 'スノードラゴン', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '大木代吉本店', kana: 'おおきだいきちほんてん')
address_attrs = { prefecture_code: 7, city: '西白河郡', street_address: '矢吹町本町9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0248-42-2161', fax: '0248-42-2162', website: 'https://www.daikichi-sizengo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '愛郷の輝き', kana: 'あいきょうのかがやき', company: c)
Brand.find_or_create_by!(name: '自然郷', kana: 'しぜんごう', company: c)
Brand.find_or_create_by!(name: '開拓のうた', kana: 'かいたくのうた', company: c)
Brand.find_or_create_by!(name: '楽器正宗', kana: 'がっきまさむね', company: c)
Brand.find_or_create_by!(name: '國士冠', kana: 'こくしかん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '清鏡酒造', kana: 'きよかがみしゅぞう')
address_attrs = { prefecture_code: 7, city: '岩瀬郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '清鏡', kana: 'きよかがみ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '大天狗酒造', kana: 'だいてんぐしゅぞう')
address_attrs = { prefecture_code: 7, city: '本宮市', street_address: '本宮九縄18', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0243-33-2017', fax: '0243-33-2018', website: 'http://daitengusyuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大天狗', kana: 'だいてんぐ', company: c)
Brand.find_or_create_by!(name: '奥州二本松', kana: 'おうしゅうにほんまつ', company: c)
Brand.find_or_create_by!(name: 'もとみや', kana: 'もとみや', company: c)
Brand.find_or_create_by!(name: '智恵子', kana: 'ちえこ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '稲川酒造店', kana: 'いながわしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '耶麻郡', street_address: '猪苗代町新町4916', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-62-2001', fax: '0242-65-2167', website: 'http://www.sake-inagawa.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '稲川', kana: 'いながわ', company: c)
Brand.find_or_create_by!(name: '七重郎', kana: 'しちじゅうろう', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '磐梯酒造', kana: 'ばんだいしゅぞう')
address_attrs = { prefecture_code: 7, city: '耶麻郡', street_address: '磐梯町磐梯金上壇2568', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-73-2002', fax: '0242-73-2028', website: 'http://www.bandaishuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '乗丹坊', kana: 'じょうたんぼう', company: c)
Brand.find_or_create_by!(name: '会津桜', kana: 'あいづざくら', company: c)
Brand.find_or_create_by!(name: '磐梯山', kana: 'ばんだいさん', company: c)
Brand.find_or_create_by!(name: '明治一', kana: 'めいじいち', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '榮川酒造', kana: 'えいせんしゅぞう')
address_attrs = { prefecture_code: 7, city: '耶麻郡', street_address: '磐梯町更科中曽根平6841-11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-73-2300', fax: '0242-73-2586', website: 'http://www.eisen.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '栄川', kana: 'えいせん', company: c)
Brand.find_or_create_by!(name: '榮四郎', kana: 'えいしろう', company: c)
Brand.find_or_create_by!(name: '雷神光', kana: 'らいじんこう', company: c)
Brand.find_or_create_by!(name: '會津龍が沢', kana: 'あいづりゅうがさわ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '会津錦', kana: 'あいづにしき')
address_attrs = { prefecture_code: 7, city: '喜多方市', street_address: '高郷町西羽賀2524', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-44-2144', fax: '0241-44-2901', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '会津錦', kana: 'あいづにしき', company: c)
Brand.find_or_create_by!(name: '天海旭鶴', kana: 'てんかいあさひつる', company: c)
Brand.find_or_create_by!(name: '愛汗', kana: 'あいかん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '栄川酒造', kana: 'さかえがわしゅぞう')
address_attrs = { prefecture_code: 7, city: '耶麻郡', street_address: '西会津町野沢本町甲1184', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0241-45-2013', fax: '0241-45-2742', website: 'https://sakaegawa.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '会津栄川', kana: 'あいづさかえがわ', company: c)
Brand.find_or_create_by!(name: '冨國論', kana: 'ふこくろん', company: c)
Brand.find_or_create_by!(name: 'ちどりあし', kana: 'ちどりあし', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '男山酒造店', kana: 'おとこやましゅぞうてん')
address_attrs = { prefecture_code: 7, city: '大沼郡', street_address: '会津美里町旭杉原字村東乙94', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-54-2726', fax: '0242-54-2767', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '会津男山', kana: 'あいづおとこやま', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '白井酒造店', kana: 'しらいしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '大沼郡', street_address: '会津美里町永井野中町1862', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-54-3022', fax: '0242-54-4867', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萬代芳', kana: 'ばんだいほう', company: c)
Brand.find_or_create_by!(name: '風が吹く', kana: 'かぜがふく', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '豊国酒造', kana: 'とよくにしゅぞう')
address_attrs = { prefecture_code: 7, city: '河沼郡', street_address: '会津坂下町市中一番甲3554', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-83-2521', fax: '0242-83-2742', website: 'http://aizu-toyokuni.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夫婦さくら', kana: 'めおとさくら', company: c)
Brand.find_or_create_by!(name: 'ばんげぼんげ', kana: 'ばんげぼんげ', company: c)
Brand.find_or_create_by!(name: '学十郎', kana: 'がくじゅうろう', company: c)
Brand.find_or_create_by!(name: '真実', kana: 'しんじつ', company: c)
Brand.find_or_create_by!(name: '滄海', kana: 'そうかい', company: c)
Brand.find_or_create_by!(name: '会津正宗', kana: 'あいづまさむね', company: c)
Brand.find_or_create_by!(name: '豐圀', kana: 'とよくに', company: c)
Brand.find_or_create_by!(name: '豊久仁', kana: 'とよくに', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '曙酒造', kana: 'あけぼのしゅぞう')
address_attrs = { prefecture_code: 7, city: '河沼郡', street_address: '会津坂下町戌亥乙2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-83-2065', fax: '0242-82-3883', website: 'https://akebono-syuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天明', kana: 'てんめい', company: c)
b = Brand.find_or_create_by!(name: '絆舞', kana: 'きずなまい', company: c)
Product.find_or_create_by!(name: '芳酔', kana: 'ほうすい', brand: b)
Product.find_or_create_by!(name: '佳酔', kana: 'かすい', brand: b)
Product.find_or_create_by!(name: '爽酔', kana: 'そうすい', brand: b)
Product.find_or_create_by!(name: '極酔', kana: 'ごくすい', brand: b)
Brand.find_or_create_by!(name: '大俵引き', kana: 'おおたわらひき', company: c)
Brand.find_or_create_by!(name: '鹿狼山', kana: 'かろうさん', company: c)
Brand.find_or_create_by!(name: '絆結', kana: 'きゆ', company: c)
Brand.find_or_create_by!(name: '一生青春', kana: 'いっしょうせいしゅん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '廣木酒造本店', kana: 'ひろきしゅぞうほんてん')
address_attrs = { prefecture_code: 7, city: '河沼郡', street_address: '会津坂下町市中二番甲3574', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0242-83-2104', fax: '0242-83-4772', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '飛露喜', kana: 'ひろき', company: c)
Brand.find_or_create_by!(name: '泉川', kana: 'いずみかわ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '豊田酒造場', kana: 'とよたしゅぞうじょう')
address_attrs = { prefecture_code: 7, city: 'いわき市', street_address: '平下神谷吉袋31', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0246-34-3213', fax: '0246-34-3205', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松の友', kana: 'まつのとも', company: c)
Brand.find_or_create_by!(name: '花園', kana: 'はなぞの', company: c)
Brand.find_or_create_by!(name: 'みだれ髪', kana: 'みだれがみ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '常磐酒類', kana: 'じょうばんしゅるい')
address_attrs = { prefecture_code: 7, city: 'いわき市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '美ち乃久', kana: 'みちのく', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '御代酒造店', kana: 'みよしゅぞうてん')
address_attrs = { prefecture_code: 7, city: 'いわき市', street_address: '常磐岩ヶ岡町山ノ根25', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0246-42-2660', fax: '0246-42-4166', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勇冠', kana: 'ゆうかん', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '太平桜酒造', kana: 'たいへいざくらしゅぞう')
address_attrs = { prefecture_code: 7, city: 'いわき市', street_address: '常磐下湯長谷町町下92', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0246-43-2053', fax: '0246-42-2939', website: 'http://www.sake-iwaki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '太平桜', kana: 'たいへいざくら', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '四家酒造店', kana: 'しけしゅぞうてん')
address_attrs = { prefecture_code: 7, city: 'いわき市', street_address: '内郷高坂町中平14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0246-26-3504', fax: '0246-26-3560', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '又兵衛', kana: 'またべえ', company: c)
Brand.find_or_create_by!(name: '四時川', kana: 'しときがわ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '鷺酒造店', kana: 'さぎしゅぞうてん')
address_attrs = { prefecture_code: 7, city: 'いわき市', street_address: '植田町中央1-4-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0246-62-2003', fax: '0246-62-1239', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勿来の関', kana: 'なこそのせき', company: c)
Brand.find_or_create_by!(name: '清福', kana: 'せいふく', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '冨沢酒造店', kana: 'とみざわしゅぞうてん')
address_attrs = { prefecture_code: 7, city: '双葉郡', street_address: '双葉町新山北広町8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
Brand.find_or_create_by!(name: '白冨士', kana: 'しらふじ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '馬場酒造本店', kana: 'ばばしゅぞうほんてん')
address_attrs = { prefecture_code: 7, city: '双葉郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '三郎', kana: 'さぶろう', company: c)
Brand.find_or_create_by!(name: '樂實', kana: 'たのしみ', company: c)


c = Company.in_prefecture(7).find_or_create_by!(name: '上田善治郎商店', kana: 'うえだぜんじろうしょうてん')
address_attrs = { prefecture_code: 7, city: '双葉郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '天王山', kana: 'てんのうざん', company: c)
