c = Company.create_or_find_by!(name: '高嶋酒造', kana: 'たかしましゅぞう')
address_attrs = { prefecture_code: 22, city: '沼津市', street_address: '原354-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '055-966-0018', fax: '055-966-8324', website: 'http://www.hakuinmasamune.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白隠正宗', kana: 'はくいんまさむね', company: c)


c = Company.create_or_find_by!(name: '万大醸造', kana: 'ばんだいじょうぞう')
address_attrs = { prefecture_code: 22, city: '伊豆市', street_address: '年川34', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0558-72-0050', fax: '0558-72-9550', website: 'http://www.maroon.dti.ne.jp/banndai-jozo', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天城隧道', kana: 'あまぎずいどう', company: c)
Brand.find_or_create_by!(name: '下田美人', kana: 'しもだびじん', company: c)
Brand.find_or_create_by!(name: '江川酒', kana: 'えがわざけ', company: c)
Brand.find_or_create_by!(name: 'あらばしり', kana: 'あらばしり', company: c)
Brand.find_or_create_by!(name: '萬燿', kana: 'ばんよう', company: c)
Brand.find_or_create_by!(name: '豊楽', kana: 'ほうらく', company: c)
Brand.find_or_create_by!(name: '大沢里', kana: 'おおそうり', company: c)
Brand.find_or_create_by!(name: '伊豆の里', kana: 'いずのさと', company: c)
Brand.find_or_create_by!(name: '鶴生', kana: 'かくせい', company: c)
Brand.find_or_create_by!(name: '脇田屋', kana: 'わきたや', company: c)


c = Company.create_or_find_by!(name: '根上酒造店', kana: 'ねがみしゅぞうてん')
address_attrs = { prefecture_code: 22, city: '御殿場市', street_address: '保土沢850-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0550-89-3555', fax: '0550-89-7588', website: 'http://www.rakuten.co.jp/kinmei', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金明', kana: 'きんめい', company: c)


c = Company.create_or_find_by!(name: '富士高砂酒造', kana: 'ふじたかさごしゅぞう')
address_attrs = { prefecture_code: 22, city: '富士宮市', street_address: '宝町9-25', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0544-27-2008', fax: '0544-23-1752', website: 'http://www.fuji-takasago.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '高砂', kana: 'たかさご', company: c)
Brand.find_or_create_by!(name: '琉の扇', kana: 'りゅうのおうぎ', company: c)
Brand.find_or_create_by!(name: '下田黎明', kana: 'しもだれいめい', company: c)
Brand.find_or_create_by!(name: '裏高砂', kana: 'うらたかさご', company: c)
Brand.find_or_create_by!(name: '駿州中屋', kana: 'すんしゅうなかや', company: c)


c = Company.create_or_find_by!(name: '富士正酒造', kana: 'ふじまさしゅぞう')
address_attrs = { prefecture_code: 22, city: '富士宮市', street_address: '根原450-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0544-52-0313', fax: '0544-52-0314', website: 'http://www.fujimasa-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富士正', kana: 'ふじまさ', company: c)
Brand.find_or_create_by!(name: '千代の峯', kana: 'ちよのみね', company: c)


c = Company.create_or_find_by!(name: '牧野酒造', kana: 'まきのしゅぞう')
address_attrs = { prefecture_code: 22, city: '富士宮市', street_address: '下条1037', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0544-58-1188', fax: '0544-58-5778', website: 'http://www.makino-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富士山', kana: 'ふじさん', company: c)
Brand.find_or_create_by!(name: '白糸', kana: 'しらいと', company: c)


c = Company.create_or_find_by!(name: '富士錦酒造', kana: 'ふじにしきしゅぞう')
address_attrs = { prefecture_code: 22, city: '富士宮市', street_address: '上柚野532', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0544-66-0005', fax: '0544-66-0076', website: 'http://www.fujinishiki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あたみ', kana: 'あたみ', company: c)
Brand.find_or_create_by!(name: '富士錦', kana: 'ふじにしき', company: c)
Brand.find_or_create_by!(name: '下田富士', kana: 'しもだふじ', company: c)


c = Company.create_or_find_by!(name: '君盃酒造', kana: 'くんぱいしゅぞう')
address_attrs = { prefecture_code: 22, city: '静岡市駿河区', street_address: '手越302', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-259-3062', fax: '054-256-3062', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '君盃', kana: 'くんぱい', company: c)


c = Company.create_or_find_by!(name: '静岡平喜酒造', kana: 'しずおかひらきしゅぞう')
address_attrs = { prefecture_code: 22, city: '静岡市駿河区', street_address: '丸子新田1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-259-0758', fax: '054-258-4669', website: 'http://shizuokahirakishuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '喜平', kana: 'きへい', company: c)


c = Company.create_or_find_by!(name: '多々良酒造場', kana: 'たたらしゅぞうじょう')
address_attrs = { prefecture_code: 22, city: '焼津市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '享和東鶴', kana: 'きょうわあずまづる', company: c)


c = Company.create_or_find_by!(name: '初亀醸造', kana: 'はつかめじょぞう')
address_attrs = { prefecture_code: 22, city: '藤枝市', street_address: '岡部町岡部744', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-667-2222', fax: '054-667-3170', website: 'https://www.facebook.com/hatsukame1636', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初亀', kana: 'はつかめ', company: c)


c = Company.create_or_find_by!(name: '満寿一酒造', kana: 'ますいちしゅぞう')
address_attrs = { prefecture_code: 22, city: '静岡市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '満寿一', kana: 'ますいち', company: c)


c = Company.create_or_find_by!(name: '英君酒造', kana: 'えいくんしゅぞう')
address_attrs = { prefecture_code: 22, city: '静岡市', street_address: '清水区由比入山2152', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-375-2181', fax: '054-375-4304', website: 'http://eikun.fc2web.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '英君', kana: 'えいくん', company: c)


c = Company.create_or_find_by!(name: '神沢川酒造場', kana: 'かんざわがわしゅぞうじょう')
address_attrs = { prefecture_code: 22, city: '静岡市清水区', street_address: '由比181', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0543-75-2033', fax: '0543-75-2133', website: 'http://www.kanzawagawa.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '呂', kana: 'ろ', company: c)
Brand.find_or_create_by!(name: '正雪', kana: 'しょうせつ', company: c)
Brand.find_or_create_by!(name: '天満月', kana: 'あまみつき', company: c)


c = Company.create_or_find_by!(name: '萩錦酒造', kana: 'はぎにしきしゅぞう')
address_attrs = { prefecture_code: 22, city: '静岡市駿河区', street_address: '西脇381', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-285-2371', fax: '054-287-7569', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萩錦', kana: 'はぎにしき', company: c)


c = Company.create_or_find_by!(name: '駿河酒造場', kana: 'するがしゅぞうじょう')
address_attrs = { prefecture_code: 22, city: '静岡市駿河区', street_address: '西脇25-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-288-0003', fax: '054-288-0005', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '忠正', kana: 'ちゅうまさ', company: c)
Brand.find_or_create_by!(name: '萩の蔵', kana: 'はぎのくら', company: c)
Brand.find_or_create_by!(name: '鞠子の宿', kana: 'まりこのしゅく', company: c)
Brand.find_or_create_by!(name: '道草吉宗', kana: 'みちくさよしむね', company: c)
Brand.find_or_create_by!(name: '天虹', kana: 'てんこう', company: c)
Brand.find_or_create_by!(name: '曽我鶴', kana: 'そがつる', company: c)


c = Company.create_or_find_by!(name: '三和酒造', kana: 'さんわしゅぞう')
address_attrs = { prefecture_code: 22, city: '静岡市清水区', street_address: '西久保501-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-366-0839', fax: '054-366-0380', website: 'http://www.garyubai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '静ごころ', kana: 'しずごころ', company: c)
Brand.find_or_create_by!(name: '羽衣の舞', kana: 'はごろものまい', company: c)
Brand.find_or_create_by!(name: '臥龍梅', kana: 'がりゅうばい', company: c)


c = Company.create_or_find_by!(name: '磯自慢酒造', kana: 'いそじまんしゅぞう')
address_attrs = { prefecture_code: 22, city: '焼津市', street_address: '鰯ヶ島307', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-628-2204', fax: '054-629-7129', website: 'http://www.isojiman-sake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '磯自慢', kana: 'いそじまん', company: c)


c = Company.create_or_find_by!(name: '杉井酒造', kana: 'すぎいしゅぞう')
address_attrs = { prefecture_code: 22, city: '藤枝市', street_address: '小石川町4-6-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-641-0606', fax: '054-644-2447', website: 'http://suginishiki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '杉錦', kana: 'すぎにしき', company: c)


c = Company.create_or_find_by!(name: '青島酒造', kana: 'あおしましゅぞう')
address_attrs = { prefecture_code: 22, city: '藤枝市', street_address: '上青島246', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-641-5533', fax: '054-644-3156', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '喜久酔', kana: 'きくよい', company: c)


c = Company.create_or_find_by!(name: '岩本酒造', kana: 'いわもとしゅぞう')
address_attrs = { prefecture_code: 22, city: '藤枝市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '松若緑', kana: 'まつわかみどり', company: c)
Brand.find_or_create_by!(name: '士魂', kana: 'しこん', company: c)


c = Company.create_or_find_by!(name: '志太泉酒造', kana: 'しだいずみしゅぞう')
address_attrs = { prefecture_code: 22, city: '藤枝市', street_address: '宮原423-22-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '054-639-0010', fax: '054-639-0777', website: 'https://shidaizumi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '志太泉', kana: 'しだいずみ', company: c)
Brand.find_or_create_by!(name: 'シダ シードル', kana: 'しだ しーどる', company: c)
Brand.find_or_create_by!(name: '身上起', kana: 'しんしょうおこし', company: c)


c = Company.create_or_find_by!(name: '大村屋酒造場', kana: 'おおむらやしゅぞうじょう')
address_attrs = { prefecture_code: 22, city: '島田市', street_address: '本通1-1-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0547-37-3058', fax: '0547-37-7576', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鬼乙女', kana: 'おにおとめ', company: c)
Brand.find_or_create_by!(name: '若竹', kana: 'わかたけ', company: c)
Brand.find_or_create_by!(name: 'おんな泣かせ', kana: 'おんななかせ', company: c)


c = Company.create_or_find_by!(name: '浜松酒造', kana: 'はままつしゅぞう')
address_attrs = { prefecture_code: 22, city: '浜松市', street_address: '天神町3-57', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '053-540-2082', fax: '053-540-4189', website: 'http://hamamatsushuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '出世城', kana: 'しゅっせじょう', company: c)
Brand.find_or_create_by!(name: '浜名桜', kana: 'はまなざくら', company: c)
Brand.find_or_create_by!(name: 'Ten-Teki', kana: 'てんてき', company: c)


c = Company.create_or_find_by!(name: '花の舞酒造', kana: 'はなのまいしゅぞう')
address_attrs = { prefecture_code: 22, city: '浜松市', street_address: '浜北区宮口632', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '053-582-2121', fax: '053-589-0122', website: 'http://www.hananomai.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花の舞', kana: 'はなのまい', company: c)
Brand.find_or_create_by!(name: 'Abysse', kana: 'アビス', company: c)
Brand.find_or_create_by!(name: 'ちょびっと乾杯', kana: 'ちょびっとかんぱい', company: c)


c = Company.create_or_find_by!(name: '國香酒造', kana: 'こっこうしゅぞう')
address_attrs = { prefecture_code: 22, city: '袋井市', street_address: '山田537', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0538-48-6405', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '國香', kana: 'こっこう', company: c)


c = Company.create_or_find_by!(name: '山中酒造', kana: 'やまなかしゅぞう')
address_attrs = { prefecture_code: 22, city: '掛川市', street_address: '横須賀61', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0537-48-2012', fax: '0537-48-6312', website: 'http://www5a.biglobe.ne.jp/~yamanaka', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '葵天下', kana: 'あおいてんか', company: c)


c = Company.create_or_find_by!(name: '土井酒造場', kana: 'どいしゅぞうじょう')
address_attrs = { prefecture_code: 22, city: '掛川市', street_address: '小貫633', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0537-74-2006', fax: '0537-74-4077', website: 'https://kaiunsake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '遠州灘', kana: 'えんしゅうなだ', company: c)
Brand.find_or_create_by!(name: '開運', kana: 'かいうん', company: c)
Brand.find_or_create_by!(name: '高天神', kana: 'たかてんじん', company: c)
Brand.find_or_create_by!(name: '御日待家', kana: 'おひまちや', company: c)
Brand.find_or_create_by!(name: 'あさば一万石', kana: 'あさばいちまんごく', company: c)
Brand.find_or_create_by!(name: '熊鯨', kana: 'くまくじら', company: c)


c = Company.create_or_find_by!(name: '石川酒造', kana: 'いしかわしゅぞう')
address_attrs = { prefecture_code: 22, city: '御前崎市', street_address: '合戸1319', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0537-86-3012', fax: '0537-86-3012', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鷹松', kana: 'たかまつ', company: c)


c = Company.create_or_find_by!(name: '千寿酒造', kana: 'せんじゅしゅぞう')
address_attrs = { prefecture_code: 22, city: '磐田市', street_address: '中泉2914-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0538-32-7341', fax: '0538-32-7344', website: 'http://www.e-senju.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千寿', kana: 'せんじゅ', company: c)
Brand.find_or_create_by!(name: '今の浦', kana: 'いまのうら', company: c)


c = Company.create_or_find_by!(name: '森本酒造', kana: 'もりもとしゅぞう')
address_attrs = { prefecture_code: 22, city: '菊川市', street_address: '堀之内1477', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0537-35-2067', fax: '0537-35-1384', website: 'http://sayogoromo.jimdo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '小夜衣', kana: 'さよごろも', company: c)
Brand.find_or_create_by!(name: 'Ｈ．森本', kana: 'もりもと', company: c)


c = Company.create_or_find_by!(name: '白松酒造', kana: 'しらまつしゅぞう')
address_attrs = { prefecture_code: 22, city: '菊川市', street_address: '加茂750', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0537-36-3250', fax: '0537-36-6378', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松若', kana: 'まつわか', company: c)
