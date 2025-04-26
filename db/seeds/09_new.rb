c = Company.create_or_find_by!(name: '虎屋本店', kana: 'とらやほんてん')
address_attrs = { prefecture_code: 9, city: '宇都宮市', street_address: '本町4-12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '028-622-8223', fax: '028-627-8916', website: 'http://www.toratora.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '喜連川 やすらぎの里', kana: 'きつれがわ やすらぎのさと', company: c)
Brand.find_or_create_by!(name: '虹乃井', kana: 'にじのい', company: c)
Brand.find_or_create_by!(name: '菊', kana: 'きく', company: c)
Brand.find_or_create_by!(name: '七水', kana: 'しちすい', company: c)


c = Company.create_or_find_by!(name: '小林杢三郎商店', kana: 'こばやしもくさぶろうしょうてん')
address_attrs = { prefecture_code: 9, city: '宇都宮市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '七井', kana: 'ななついど', company: c)
Brand.find_or_create_by!(name: '大英勇', kana: 'だいえいゆう', company: c)


c = Company.create_or_find_by!(name: '島崎酒造', kana: 'しまざきしゅぞう')
address_attrs = { prefecture_code: 9, city: '那須烏山市', street_address: '中央1-11-18', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-83-1221', fax: '0287-84-1728', website: 'http://www.azumarikishi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '熟露枯', kana: 'うろこ', company: c)
Brand.find_or_create_by!(name: '極一滴雫酒', kana: 'きわみいってきしずくざけ', company: c)
Brand.find_or_create_by!(name: '東力士', kana: 'あずまりきし', company: c)
Brand.find_or_create_by!(name: '廣重の郷 浮世酒', kana: 'ひろしげのさと うきよざけ', company: c)


c = Company.create_or_find_by!(name: '宇都宮酒造', kana: 'うつのみやしゅぞう')
address_attrs = { prefecture_code: 9, city: '宇都宮市', street_address: '柳田町248', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '028-661-0880', fax: '028-664-0944', website: 'https://shikisakura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '四季桜', kana: 'しきさくら', company: c)


c = Company.create_or_find_by!(name: '外池荘五郎商店', kana: 'とのいけしょうごろうしょうてん')
address_attrs = { prefecture_code: 9, city: '宇都宮市', street_address: '石井町1818-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '028-661-5581', fax: '028-662-9338', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天琴', kana: 'てんきん', company: c)
Brand.find_or_create_by!(name: '東錦', kana: 'あずまにしき', company: c)


c = Company.create_or_find_by!(name: '渡辺佐平商店', kana: 'わたなべさへいしょうてん')
address_attrs = { prefecture_code: 9, city: '日光市', street_address: '今市450', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0288-21-0007', fax: '0288-21-2647', website: 'http://www.watanabesahei.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日光誉', kana: 'にっこうほまれ', company: c)
Brand.find_or_create_by!(name: '酔神の鳴龍', kana: 'なきりゅう', company: c)
Brand.find_or_create_by!(name: '清開', kana: 'せいかい', company: c)


c = Company.create_or_find_by!(name: '片山酒造', kana: 'かたやましゅぞう')
address_attrs = { prefecture_code: 9, city: '日光市', street_address: '瀬川146-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0288-21-0039', fax: '0288-22-6911', website: 'http://www.kashiwazakari.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '柏盛', kana: 'かしわざかり', company: c)
Brand.find_or_create_by!(name: '日光路', kana: 'にっこうじ', company: c)
Brand.find_or_create_by!(name: 'ALL BLACKS', kana: 'オールブラックス', company: c)


c = Company.create_or_find_by!(name: '惣誉酒造', kana: 'そうほまれしゅぞう')
address_attrs = { prefecture_code: 9, city: '芳賀郡', street_address: '市貝町上根539', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0285-68-1141', fax: '0285-68-1142', website: 'https://sohomare.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '惣誉', kana: 'そうほまれ', company: c)
Brand.find_or_create_by!(name: '帰一', kana: 'きいつ', company: c)


c = Company.create_or_find_by!(name: '島崎泉治商店', kana: 'しまざきせんじしょうてん')
address_attrs = { prefecture_code: 9, city: '芳賀郡', street_address: '茂木町茂木辺1720', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0285-63-0006', fax: '0285-63-1090', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '島﨑雲圃', kana: 'しまざきうんぽ', company: c)
Brand.find_or_create_by!(name: '栄屋利兵衛', kana: 'さかえやりへえ', company: c)
Brand.find_or_create_by!(name: '棚田の雫', kana: 'たなだのしずく', company: c)
Brand.find_or_create_by!(name: '泉月花', kana: 'せんげつか', company: c)


c = Company.create_or_find_by!(name: '外池酒造店', kana: 'とのいけしゅぞうてん')
address_attrs = { prefecture_code: 9, city: '芳賀郡', street_address: '益子町塙333-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0285-72-0001', fax: '0285-72-0003', website: 'http://tonoike.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '望bo:', kana: 'ぼう', company: c)
Brand.find_or_create_by!(name: '燦爛', kana: 'さんらん', company: c)


c = Company.create_or_find_by!(name: '辻善兵衛商店', kana: 'つじぜんべえしょうてん')
address_attrs = { prefecture_code: 9, city: '真岡市', street_address: '田町1041-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0285-82-2059', fax: '0285-83-1170', website: 'http://www.nextftp.com/dotcom/sakuragawa', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桜川', kana: 'さくらがわ', company: c)
Brand.find_or_create_by!(name: '辻善兵衛', kana: 'つじぜんべえ', company: c)
Brand.find_or_create_by!(name: '辻寛之', kana: 'つじひろゆき', company: c)
Brand.find_or_create_by!(name: '辻風', kana: 'つじかぜ', company: c)
Brand.find_or_create_by!(name: '世は満続', kana: 'よはまんぞく', company: c)


c = Company.create_or_find_by!(name: '飯沼銘醸', kana: 'いいぬまめいじょう')
address_attrs = { prefecture_code: 9, city: '栃木市', street_address: '西方町元850', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0282-92-2005', fax: '0282-92-8181', website: 'https://www.iinumameijo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '杉並木', kana: 'すぎなみき', company: c)
Brand.find_or_create_by!(name: 'SG', kana: 'エスジー', company: c)
Brand.find_or_create_by!(name: '姿', kana: 'すがた', company: c)
Brand.find_or_create_by!(name: '壬生', kana: 'みぶ', company: c)


c = Company.create_or_find_by!(name: '若駒酒造', kana: 'わかこましゅぞう')
address_attrs = { prefecture_code: 9, city: '小山市', street_address: '小薬169-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0285-37-0429', fax: '0285-37-0743', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '善十郎', kana: 'ぜんじゅうろう', company: c)
Brand.find_or_create_by!(name: '羽衣伝説', kana: 'はごろもでんせつ', company: c)
Brand.find_or_create_by!(name: '若駒', kana: 'わかこま', company: c)
Brand.find_or_create_by!(name: '万延', kana: 'まんえん', company: c)


c = Company.create_or_find_by!(name: '杉田酒造', kana: 'すぎたしゅぞう')
address_attrs = { prefecture_code: 9, city: '小山市', street_address: '上泉237', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0285-38-0005', fax: '0285-37-2821', website: 'http://sugitasyuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '出流山', kana: 'いづるさん', company: c)
Brand.find_or_create_by!(name: '発光路強力', kana: 'ほっこうじごうりき', company: c)
Brand.find_or_create_by!(name: '雄東正宗', kana: 'ゆうとうまさむね', company: c)
Brand.find_or_create_by!(name: '鴎樹', kana: 'おうじゅ', company: c)


c = Company.create_or_find_by!(name: '三福酒造', kana: 'さんぷくしゅぞう')
address_attrs = { prefecture_code: 9, city: '小山市', street_address: '南小林87', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0285-38-0003', fax: '0285-38-3333', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三福', kana: 'さんぷく', company: c)


c = Company.create_or_find_by!(name: '小林酒造', kana: 'こばやししゅぞう')
address_attrs = { prefecture_code: 9, city: '小山市', street_address: '卒島743', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0285-37-0005', fax: '0285-37-0807', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鳳凰美田', kana: 'ほうおうびでん', company: c)
Brand.find_or_create_by!(name: '美田鶴', kana: 'びでんづる', company: c)


c = Company.create_or_find_by!(name: '平山酒造店', kana: 'ひらやましゅぞうてん')
address_attrs = { prefecture_code: 9, city: '大田原市', street_address: '羽田1136', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-23-1331', fax: '0287-24-0473', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '藤の盛', kana: 'ふじのもり', company: c)


c = Company.create_or_find_by!(name: '池島酒造', kana: 'いけしましゅぞう')
address_attrs = { prefecture_code: 9, city: '大田原市', street_address: '下石上1227', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-29-0011', fax: '0287-29-1938', website: 'http://www.ikenishiki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '質素堅実', kana: 'しっそけんじつ', company: c)
Brand.find_or_create_by!(name: '池嶋', kana: 'いけじま', company: c)
Brand.find_or_create_by!(name: '池錦', kana: 'いけにしき', company: c)


c = Company.create_or_find_by!(name: '鳳鸞酒造', kana: 'ほうらんしゅぞう')
address_attrs = { prefecture_code: 9, city: '大田原市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '鳳鸞', kana: 'ほうらん', company: c)


c = Company.create_or_find_by!(name: '渡辺酒造', kana: 'わたなべしゅぞう')
address_attrs = { prefecture_code: 9, city: '大田原市', street_address: '須佐木797-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-57-0107', fax: '0287-57-0457', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'たまか', kana: 'たまか', company: c)
Brand.find_or_create_by!(name: '桜の郷 喜連川', kana: 'さくらのさと きつれがわ', company: c)
Brand.find_or_create_by!(name: '旭興', kana: 'きょくこう', company: c)


c = Company.create_or_find_by!(name: '天鷹酒造', kana: 'てんたかしゅぞう')
address_attrs = { prefecture_code: 9, city: '大田原市', street_address: '蛭畑2166', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-98-2107', fax: '0287-98-2108', website: 'https://www.tentaka.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天鷹', kana: 'てんたか', company: c)
Brand.find_or_create_by!(name: '九尾', kana: 'きゅうび', company: c)
Brand.find_or_create_by!(name: '天鷹心', kana: 'てんたかこころ', company: c)


c = Company.create_or_find_by!(name: '菊の里酒造', kana: 'きくのさとしゅぞう')
address_attrs = { prefecture_code: 9, city: '大田原市', street_address: '片府田302-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-98-3477', fax: '0287-98-3333', website: 'https://www.daina-sake.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大那', kana: 'だいな', company: c)
Brand.find_or_create_by!(name: '菊の里', kana: 'きくのさと', company: c)
Brand.find_or_create_by!(name: '鹿沼娘', kana: 'かぬまむすめ', company: c)


c = Company.create_or_find_by!(name: '白相酒造', kana: 'しらそうしゅぞう')
address_attrs = { prefecture_code: 9, city: '那須郡', street_address: '小川町715-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-96-2015', fax: '0287-96-2016', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御用邸', kana: 'ごようてい', company: c)
Brand.find_or_create_by!(name: 'とちあかね', kana: 'とちあかね', company: c)
Brand.find_or_create_by!(name: '福寿松の井', kana: 'ふくじゅまつのい', company: c)


c = Company.create_or_find_by!(name: '金子酒造', kana: 'かねこしゅぞう')
address_attrs = { prefecture_code: 9, city: '那須郡那', street_address: '珂川町馬頭354', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-92-2016', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '栄冠', kana: 'えいかん', company: c)
Brand.find_or_create_by!(name: '寿一番', kana: 'ことぶきいちばん', company: c)
Brand.find_or_create_by!(name: '鳴竜', kana: 'なきりゅう', company: c)


c = Company.create_or_find_by!(name: '和泉酒造店', kana: 'いずみしゅぞうてん')
address_attrs = { prefecture_code: 9, city: '足利市', street_address: '助戸3-395', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0284-41-2789', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '尊氏', kana: 'たかうじ', company: c)


c = Company.create_or_find_by!(name: '吉井酒造', kana: 'よしいしゅぞう')
address_attrs = { prefecture_code: 9, city: '佐野市', street_address: '金屋下町2445', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0283-22-0300', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初戎', kana: 'はつえびす', company: c)


c = Company.create_or_find_by!(name: '第一酒造', kana: 'だいいちしゅぞう')
address_attrs = { prefecture_code: 9, city: '佐野市', street_address: '田島町488', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0283-22-0001', fax: '0283-24-6168', website: 'https://www.sakekaika.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '開華', kana: 'かいか', company: c)
Brand.find_or_create_by!(name: '開夏', kana: 'かいか', company: c)
Brand.find_or_create_by!(name: '開花', kana: 'かいか', company: c)
Brand.find_or_create_by!(name: '華囲香', kana: 'かいか', company: c)


c = Company.create_or_find_by!(name: '相沢酒造', kana: 'あいざわしゅぞう')
address_attrs = { prefecture_code: 9, city: '佐野市', street_address: '堀米町3954-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0283-22-0423', fax: '0283-22-0937', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '愛乃澤', kana: 'あいのさわ', company: c)
Brand.find_or_create_by!(name: '旭城', kana: 'きょくじょう', company: c)


c = Company.create_or_find_by!(name: '北関酒造', kana: 'ほっかんしゅぞう')
address_attrs = { prefecture_code: 9, city: '栃木市', street_address: '田村町480', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0282-27-9570', fax: '0282-27-5517', website: 'http://www.hokkansyuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北冠', kana: 'ほっかん', company: c)
Brand.find_or_create_by!(name: '森羅万象', kana: 'しんらばんしょう', company: c)


c = Company.create_or_find_by!(name: '西堀酒造', kana: 'にしぼりしゅぞう')
address_attrs = { prefecture_code: 9, city: '小山市', street_address: '粟宮1452', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0285-45-0035', fax: '0285-45-1628', website: 'https://nishiborisyuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '西堀', kana: 'にしぼり', company: c)
Brand.find_or_create_by!(name: '愛米魅 I MY ME', kana: 'アイマイミー', company: c)
Brand.find_or_create_by!(name: '若盛', kana: 'わかざかり', company: c)
Brand.find_or_create_by!(name: '門外不出', kana: 'もんがいふしゅつ', company: c)
Brand.find_or_create_by!(name: 'ILLUMINA', kana: 'イルミナ', company: c)


c = Company.create_or_find_by!(name: '井上清吉商店', kana: 'いのうえせいきちしょうてん')
address_attrs = { prefecture_code: 9, city: '宇都宮市', street_address: '白沢町1901-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '028-673-2350', fax: '028-673-2158', website: 'http://sawahime.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '澤姫', kana: 'さわひめ', company: c)
Brand.find_or_create_by!(name: '樺山', kana: 'かばやま', company: c)


c = Company.create_or_find_by!(name: 'せんきん', kana: 'せんきん')
address_attrs = { prefecture_code: 9, city: 'さくら市', street_address: '馬場106', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '028-681-0011', website: 'http://senkin.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '羽水', kana: 'うすい', company: c)
Brand.find_or_create_by!(name: '霧降', kana: 'きりふり', company: c)
Brand.find_or_create_by!(name: '仙禽', kana: 'せんきん', company: c)
Brand.find_or_create_by!(name: '葵日光', kana: 'あおいにっこう', company: c)


c = Company.create_or_find_by!(name: '富川酒造店', kana: 'とみかわしゅぞうてん')
address_attrs = { prefecture_code: 9, city: '矢板市', street_address: '大槻998', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-48-1510', fax: '0287-48-2798', website: 'http://www.kubun.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '忠愛', kana: 'ちゅうあい', company: c)
Brand.find_or_create_by!(name: '富美川', kana: 'とみかわ', company: c)


c = Company.create_or_find_by!(name: '小島酒造店', kana: 'こじましゅぞうてん')
address_attrs = { prefecture_code: 9, city: '塩谷郡', street_address: '塩谷町風見1185', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-46-0903', fax: '0287-46-0831', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '新郎', kana: 'しんろう', company: c)
Brand.find_or_create_by!(name: 'かんなびの里', kana: 'かんなびのさと', company: c)


c = Company.create_or_find_by!(name: '松井酒造店', kana: 'まついしゅぞうてん')
address_attrs = { prefecture_code: 9, city: '塩谷郡', street_address: '塩谷町船生3683', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-47-0008', fax: '0287-47-0558', website: 'https://www.matsunokotobuki.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松の寿', kana: 'まつのことぶき', company: c)
Brand.find_or_create_by!(name: '日光囃子', kana: 'にっこうはやし', company: c)


c = Company.create_or_find_by!(name: '森戸酒造', kana: 'もりとしゅぞう')
address_attrs = { prefecture_code: 9, city: '矢板市', street_address: '東泉645', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0287-43-0411', fax: '0287-44-1066', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '十一正宗', kana: 'じゅういちまさむね', company: c)


c = Company.create_or_find_by!(name: '相良酒造', kana: 'さがらしゅぞう')
address_attrs = { prefecture_code: 9, city: '栃木市', street_address: '岩舟町静3624', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0282-55-2013', fax: '0282-55-2076', website: 'http://asahisakae.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東照', kana: 'とうしょう', company: c)
Brand.find_or_create_by!(name: '三毳山', kana: 'みかもやま', company: c)
Brand.find_or_create_by!(name: '朝日栄', kana: 'あさひさかえ', company: c)
Brand.find_or_create_by!(name: '酒善', kana: 'さけよし', company: c)


c = Company.create_or_find_by!(name: '大平酒造', kana: 'おおひらしゅぞう')
address_attrs = { prefecture_code: 9, city: '栃木市', street_address: '大平町下皆川747', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0282-43-2099', fax: '0282-43-2003', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '黒龍', kana: 'こくりゅう', company: c)
