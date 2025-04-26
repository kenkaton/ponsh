c = Company.create_or_find_by!(name: '福岡銘酒会', kana: 'ふくおかめいしゅかい')
address_attrs = { prefecture_code: 40, city: '', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
Brand.find_or_create_by!(name: 'まぼろしの酒', kana: 'まぼろしのさけ', company: c)
Brand.find_or_create_by!(name: '須々許里', kana: 'すすこり', company: c)


c = Company.create_or_find_by!(name: '無法松酒造', kana: 'むほうまつしゅぞう')
address_attrs = { prefecture_code: 40, city: '北九州市', street_address: '小倉南区大字新道寺310', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '093-451-0002', fax: '093-451-0095', website: 'http://muhomatsu.ntf.ne.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '無法松', kana: 'むほうまつ', company: c)


c = Company.create_or_find_by!(name: '溝上酒造', kana: 'みぞかみしゅぞう')
address_attrs = { prefecture_code: 40, city: '北九州市', street_address: '八幡東区景勝町1-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '093-652-0289', fax: '093-652-3936', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '皿倉', kana: 'さらくら', company: c)
Brand.find_or_create_by!(name: '天心', kana: 'てんしん', company: c)


c = Company.create_or_find_by!(name: '花関酒造', kana: 'はなのせきしゅぞう')
address_attrs = { prefecture_code: 40, city: '福岡市中央区', street_address: '舞鶴1-3-43', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '092-741-0215', fax: '092-741-1267', website: 'http://www.hananoseki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花の関', kana: 'はなのせき', company: c)
Brand.find_or_create_by!(name: '観世', kana: 'かんぜ', company: c)
Brand.find_or_create_by!(name: '此乃美', kana: 'このみ', company: c)
Brand.find_or_create_by!(name: '沖屋儀七', kana: 'おきやぎしち', company: c)


c = Company.create_or_find_by!(name: '小林酒造本店', kana: 'こばやししゅぞうほんてん')
address_attrs = { prefecture_code: 40, city: '糟屋郡', street_address: '宇美町宇美2丁目11-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '092-932-0001', fax: '092-932-6606', website: 'http://www.sakebandai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萬代', kana: 'ばんだい', company: c)


c = Company.create_or_find_by!(name: '光酒造', kana: 'ひかりしゅぞう')
address_attrs = { prefecture_code: 40, city: '糟屋郡', street_address: '粕屋町長者原95-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '092-938-2458', fax: '092-939-2553', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '西乃蔵', kana: 'にしのくら', company: c)


c = Company.create_or_find_by!(name: '翁酒造', kana: 'おきなしゅぞう')
address_attrs = { prefecture_code: 40, city: '古賀市', street_address: '花見南3丁目19-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '092-944-0551', fax: '092-944-0552', website: 'http://www.okina-shuzo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '稲田重造', kana: 'いなだしげぞう', company: c)
Brand.find_or_create_by!(name: '大観', kana: 'たいかん', company: c)
Brand.find_or_create_by!(name: '酔天女', kana: 'すいてんにょ', company: c)


c = Company.create_or_find_by!(name: '豊村酒造', kana: 'とよむらしゅぞう')
address_attrs = { prefecture_code: 40, city: '福津市', street_address: '津屋崎4-14-18', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0940-52-0001', fax: '0940-52-0454', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊盛', kana: 'とよさかり', company: c)


c = Company.create_or_find_by!(name: '鷲頭酒造場', kana: 'わしずしゅぞうじょう')
address_attrs = { prefecture_code: 40, city: '宗像市', street_address: '田熊492 ', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0940-36-2007', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宗像美人', kana: 'むなかたびじん', company: c)
Brand.find_or_create_by!(name: '炎の一滴', kana: 'ほのおのいってき', company: c)
Brand.find_or_create_by!(name: '稲の寿', kana: 'いねのことぶき', company: c)


c = Company.create_or_find_by!(name: '勝屋酒造', kana: 'かつやしゅぞう')
address_attrs = { prefecture_code: 40, city: '宗像市', street_address: '赤間4丁目1-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0940-32-3010', fax: '0940-32-4772', website: 'http://www.katsuyashuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '養生訓', kana: 'ようじょうくん', company: c)
Brand.find_or_create_by!(name: '楢の露', kana: 'ならのつゆ', company: c)
Brand.find_or_create_by!(name: '麓寿泉', kana: 'ろくじゅせん', company: c)
Brand.find_or_create_by!(name: '宗像のちから', kana: 'むなかたのちから', company: c)
Brand.find_or_create_by!(name: '神郡宗像', kana: 'かみのさとむなかた', company: c)
Brand.find_or_create_by!(name: '沖ノ島', kana: 'おきのしま', company: c)
Brand.find_or_create_by!(name: '赤間宿', kana: 'あかましゅく', company: c)


c = Company.create_or_find_by!(name: '伊豆本店', kana: 'いずほんてん')
address_attrs = { prefecture_code: 40, city: '宗像市', street_address: '武丸1060', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0940-32-3001', fax: '0940-33-0512', website: 'http://www.kamenoo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '博多物語', kana: 'はかたものがたり', company: c)
Brand.find_or_create_by!(name: '亀の尾', kana: 'かめのお', company: c)


c = Company.create_or_find_by!(name: '石蔵酒造', kana: 'いしくらしゅぞう')
address_attrs = { prefecture_code: 40, city: '博多区', street_address: '堅粕1-30-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '092-651-1986', fax: '092-632-0864', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '祝いめでた', kana: 'いわいめでた', company: c)
Brand.find_or_create_by!(name: '百年蔵', kana: 'ひゃくねんぐら', company: c)
Brand.find_or_create_by!(name: '初吉野', kana: 'はつよしの', company: c)
Brand.find_or_create_by!(name: '如水', kana: 'じょすい', company: c)


c = Company.create_or_find_by!(name: '綾杉酒造場', kana: 'あやすぎしゅぞうじょう')
address_attrs = { prefecture_code: 40, city: '福岡市南区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '一酌散千愁', kana: 'いっしゃくせんしゅうをさんず', company: c)
Brand.find_or_create_by!(name: 'はこざき物語', kana: 'はこざきものがたり', company: c)
Brand.find_or_create_by!(name: '綾杉', kana: 'あやすぎ', company: c)


c = Company.create_or_find_by!(name: '大賀酒造', kana: 'おおがしゅぞう')
address_attrs = { prefecture_code: 40, city: '筑紫野市', street_address: '二日市中央4丁目9-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '092-922-2633', fax: '092-922-2151', website: 'http://www.ogashuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大賀', kana: 'おおが', company: c)
Brand.find_or_create_by!(name: 'ゆめほたる', kana: 'ゆめほたる', company: c)
Brand.find_or_create_by!(name: '筑紫野', kana: 'ちくしの', company: c)
Brand.find_or_create_by!(name: '仁四郎', kana: 'じんしろう', company: c)
Brand.find_or_create_by!(name: '菅公の酒', kana: 'かんこうのさけ', company: c)
Brand.find_or_create_by!(name: '玉出泉', kana: 'たまでいずみ', company: c)


c = Company.create_or_find_by!(name: '浜地酒造', kana: 'はまちしゅぞう')
address_attrs = { prefecture_code: 40, city: '福岡市西区', street_address: '元岡1442', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '092-806-1186', fax: '092-807-9051', website: 'http://www.suginoya.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '九州大吟醸', kana: 'きゅうしゅうだいぎんじょう', company: c)
Brand.find_or_create_by!(name: '和膳会釈 能', kana: 'わぜんあしらい', company: c)
Brand.find_or_create_by!(name: '富貴の誉', kana: 'ふきのほまれ', company: c)
Brand.find_or_create_by!(name: '杉能舎', kana: 'すぎのや', company: c)


c = Company.create_or_find_by!(name: '白糸酒造', kana: 'しらいとしゅぞう')
address_attrs = { prefecture_code: 40, city: '糸島市', street_address: '本1986', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '092-322-2901', fax: '092-324-2163', website: 'http://www.shiraito.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '跳木', kana: 'はねぎ', company: c)
Brand.find_or_create_by!(name: '白糸', kana: 'しらいと', company: c)
Brand.find_or_create_by!(name: '喜蔵', kana: 'きぞう', company: c)
Brand.find_or_create_by!(name: '田中六五', kana: 'たなかろくじゅうご', company: c)


c = Company.create_or_find_by!(name: '薫仙', kana: 'くんせん')
address_attrs = { prefecture_code: 40, city: '飯塚市', street_address: '楽市417', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0948-22-1023', fax: '0948-22-5136', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '薫仙', kana: 'くんせん', company: c)


c = Company.create_or_find_by!(name: '瑞穂菊酒造', kana: 'みずほぎくしゅぞう')
address_attrs = { prefecture_code: 40, city: '飯塚市', street_address: '天道375', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0948-22-1050', fax: '0948-23-3240', website: 'http://www.mizuhogiku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '瑞穂菊', kana: 'みずほぎく', company: c)
Brand.find_or_create_by!(name: '運大吉', kana: 'うおきち', company: c)
Brand.find_or_create_by!(name: '姫乙', kana: 'ひめおとめ', company: c)
Brand.find_or_create_by!(name: '舎利蔵', kana: 'しゃりくら', company: c)
Brand.find_or_create_by!(name: '一鳥万宝', kana: 'いっちょうまんぽう', company: c)


c = Company.create_or_find_by!(name: '寒北斗酒造', kana: 'かんほくとしゅぞう')
address_attrs = { prefecture_code: 40, city: '嘉麻市', street_address: '大隈町1036-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0948-57-0009', fax: '0948-57-0023', website: 'https://kanhokuto.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '玉の井', kana: 'たまのい', company: c)
Brand.find_or_create_by!(name: 'BLACK JACK', kana: 'ブラックジャック', company: c)
Brand.find_or_create_by!(name: '30VISION', kana: 'サンマルビジョン', company: c)
Brand.find_or_create_by!(name: '喜久玉の井', kana: 'きくたまのい', company: c)
Brand.find_or_create_by!(name: '喜平太', kana: 'きへいた', company: c)
Brand.find_or_create_by!(name: '寒北斗', kana: 'かんほくと', company: c)


c = Company.create_or_find_by!(name: '梅ヶ谷酒造', kana: 'うめがたにしゅぞう')
address_attrs = { prefecture_code: 40, city: '嘉麻市', street_address: '大隈町346', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0948-57-0005', fax: '0948-57-0600', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '梅ヶ谷', kana: 'うめがたに', company: c)


c = Company.create_or_find_by!(name: '大里酒造', kana: 'おおさとしゅぞう')
address_attrs = { prefecture_code: 40, city: '嘉麻市', street_address: '大隈551', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0948-57-0059', fax: '0948-57-0513', website: 'http://www.kurodabusi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '黒田武士', kana: 'くろだぶし', company: c)
Brand.find_or_create_by!(name: '英彦山', kana: 'ひこさん', company: c)


c = Company.create_or_find_by!(name: '石井産業', kana: 'いしいさんぎょう')
address_attrs = { prefecture_code: 40, city: '宮若市', street_address: '金生279', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0949-52-0003', fax: '0949-52-2203', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富久鶴', kana: 'ふくつる', company: c)


c = Company.create_or_find_by!(name: '林龍平酒造場', kana: 'はやしりゅうへいしゅぞうじょう')
address_attrs = { prefecture_code: 40, city: '京都郡', street_address: 'みやこ町犀川崎山992-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0930-42-0015', fax: '0930-42-1027', website: 'http://www.kusugiku.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '九州菊', kana: 'くすぎく', company: c)
Brand.find_or_create_by!(name: '源じいの森', kana: 'げんじいのもり', company: c)
Brand.find_or_create_by!(name: '残心', kana: 'ざんしん', company: c)


c = Company.create_or_find_by!(name: '戸渡酒造', kana: 'とわたりしゅぞう')
address_attrs = { prefecture_code: 40, city: '田川郡', street_address: '添田町添田1448', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0947-82-0027', fax: '0947-82-4083', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊駒', kana: 'とよこま', company: c)
Brand.find_or_create_by!(name: '英彦山', kana: 'ひこさん', company: c)


c = Company.create_or_find_by!(name: '福太郎', kana: 'ふくたろう')
address_attrs = { prefecture_code: 40, city: '田川郡', street_address: '添田町英彦山1881-12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0947-47-0210', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福太郎', kana: 'ふくたろう', company: c)


c = Company.create_or_find_by!(name: '後藤酒造', kana: 'ごとうしゅぞう')
address_attrs = { prefecture_code: 40, city: '豊前市', street_address: '狭間546', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0979-83-4538', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊の寿', kana: 'とよのことぶき', company: c)


c = Company.create_or_find_by!(name: '鷹正宗', kana: 'たかまさむね')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '大善寺町黒田297', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-26-8181', fax: '0942-26-2132', website: 'http://www.takamasamune.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宰府寒梅', kana: 'さいふかんばい', company: c)
Brand.find_or_create_by!(name: '鷹正宗', kana: 'たかまさむね', company: c)
Brand.find_or_create_by!(name: '筑後の寒梅', kana: 'ちくごのかんばい', company: c)


c = Company.create_or_find_by!(name: '瑞穂錦酒造', kana: 'みずほにしきしゅぞう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '大善寺町藤吉940', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-26-2430', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鬼夜', kana: 'おによ', company: c)
Brand.find_or_create_by!(name: '瑞穂錦', kana: 'みずほにしき', company: c)


c = Company.create_or_find_by!(name: '池亀酒造', kana: 'いけかめしゅぞう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '三潴町草場545', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-64-3101', fax: '0942-64-2929', website: 'https://ikekame.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '風雲剣鬼伝 丹下左膳', kana: 'たんげさぜん', company: c)
Brand.find_or_create_by!(name: '池亀', kana: 'いけかめ', company: c)
Brand.find_or_create_by!(name: '黒兜', kana: 'くろかぶと', company: c)


c = Company.create_or_find_by!(name: '萬年亀酒造', kana: 'まんねんがめしゅぞう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '三潴町草場68-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-64-2025', fax: '0942-64-2031', website: 'http://www.mannengame.info', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萬屋荒神', kana: 'よろすやこうじん', company: c)
Brand.find_or_create_by!(name: '萬年亀', kana: 'まんねんがめ', company: c)


c = Company.create_or_find_by!(name: '杜の蔵', kana: 'もりのくら')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '三潴町玉満2773', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-64-3001', fax: '0942-65-0800', website: 'http://www.morinokura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '独楽蔵', kana: 'こまぐら', company: c)
Brand.find_or_create_by!(name: '旭鶴亀', kana: 'あさひつるかめ', company: c)
Brand.find_or_create_by!(name: '杜の蔵', kana: 'もりのくら', company: c)
Brand.find_or_create_by!(name: '杜氏の詩', kana: 'とじのうた', company: c)
Brand.find_or_create_by!(name: 'うち田', kana: 'うちだ', company: c)
Brand.find_or_create_by!(name: '黒田城大手門', kana: 'くろだじょうおおてもん', company: c)


c = Company.create_or_find_by!(name: '旭菊酒造', kana: 'あさひぎくしゅぞう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '三潴町壱町原403', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-64-2003', fax: '0942-64-2403', website: 'https://www.asahikiku.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大地', kana: 'だいち', company: c)
Brand.find_or_create_by!(name: '綾花', kana: 'あやか', company: c)
Brand.find_or_create_by!(name: '旭菊', kana: 'あさひきく', company: c)


c = Company.create_or_find_by!(name: '有薫酒造', kana: 'ゆうくんしゅぞう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '有薫', kana: 'ゆうくん', company: c)
Brand.find_or_create_by!(name: '捌', kana: 'さばき', company: c)


c = Company.create_or_find_by!(name: '花の露', kana: 'はなのつゆ')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '城島町城島223-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-62-2151', fax: '0942-62-2032', website: 'http://hananotsuyu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '冨の寿', kana: 'とみのことぶき', company: c)
Brand.find_or_create_by!(name: '鴻臚館', kana: 'こうろかん', company: c)
Brand.find_or_create_by!(name: '花の露', kana: 'はなのつゆ', company: c)


c = Company.create_or_find_by!(name: '比翼鶴酒造', kana: 'ひよくつるしゅぞう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '城島町内野466-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-62-2171', fax: '0942-62-2173', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '耶馬寒梅', kana: 'やまかんばい', company: c)
Brand.find_or_create_by!(name: '比翼鶴', kana: 'ひよくつる', company: c)


c = Company.create_or_find_by!(name: '千年乃松酒造', kana: 'ちとせのまつしゅぞう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '北野町今山370-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-78-3003', fax: '0942-78-3114', website: 'http://www.chitosenomatu.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千年乃松', kana: 'ちとせのまつ', company: c)


c = Company.create_or_find_by!(name: '山口酒造場', kana: 'やまぐちしゅぞうじょう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '北野町今山534-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-78-2008', fax: '0942-78-5233', website: 'https://niwanouguisu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '庭のうぐいす', kana: 'にわのうぐいす', company: c)
Brand.find_or_create_by!(name: '鶯印のどぶろく', kana: 'うぐいすじるしのどぶろく', company: c)
Brand.find_or_create_by!(name: '有馬', kana: 'ありま', company: c)


c = Company.create_or_find_by!(name: '山の壽酒造', kana: 'やまのことぶきしゅぞう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '北野町乙丸1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-78-3025', fax: '0942-78-4673', website: 'http://yamanokotobuki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '万作', kana: 'まんさく', company: c)
Brand.find_or_create_by!(name: '山の寿', kana: 'やまのことぶき', company: c)
Brand.find_or_create_by!(name: '燦寿の息吹', kana: 'さんじゅのいぶき', company: c)


c = Company.create_or_find_by!(name: '飛龍酒造', kana: 'ひりゅうしゅぞう')
address_attrs = { prefecture_code: 40, city: '三井郡', street_address: '大刀洗町本郷4616', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-77-0010', fax: '0942-77-0410', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '筑後川', kana: 'ちくごがわ', company: c)
Brand.find_or_create_by!(name: '飛龍', kana: 'ひりゅう', company: c)


c = Company.create_or_find_by!(name: 'みいの寿', kana: 'みいのことぶき')
address_attrs = { prefecture_code: 40, city: '三井郡', street_address: '大刀洗町栄田1067-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-77-0019', fax: '0942-77-2194', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美田', kana: 'びでん', company: c)
Brand.find_or_create_by!(name: '三井の寿', kana: 'みいのことぶき', company: c)
Brand.find_or_create_by!(name: '栄田', kana: 'えいでん', company: c)


c = Company.create_or_find_by!(name: '筑紫の誉酒造', kana: 'ちくしのほまれしゅぞう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '城島町青木島181', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-62-2320', fax: '0942-62-5387', website: 'http://www.c-homare.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '筑紫の誉', kana: 'ちくしのほまれ', company: c)


c = Company.create_or_find_by!(name: '若波酒造', kana: 'わかなみしゅぞう')
address_attrs = { prefecture_code: 40, city: '大川市', street_address: '鐘ヶ江752', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0944-88-1225', fax: '0944-88-1226', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蜻蛉', kana: 'とんぼ', company: c)
Brand.find_or_create_by!(name: '侍士の門', kana: 'さむらいのもん', company: c)
Brand.find_or_create_by!(name: '若波', kana: 'わかなみ', company: c)
Brand.find_or_create_by!(name: '蒲公英', kana: 'たんぽぽ', company: c)


c = Company.create_or_find_by!(name: '蔵内堂', kana: 'くらうちどう')
address_attrs = { prefecture_code: 40, city: '大川市', street_address: '鐘ヶ江682-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0944-87-2145', fax: '0944-87-2187', website: 'http://www.seiriki.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '清力', kana: 'せいりき', company: c)


c = Company.create_or_find_by!(name: '柳川酒造', kana: 'やながわしゅぞう')
address_attrs = { prefecture_code: 40, city: '柳川市', street_address: '三橋町百町766', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0944-72-5254', fax: '0944-72-1700', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'Rouge Naturelle', kana: 'るーじゅなちゅれ', company: c)
Brand.find_or_create_by!(name: '国の寿', kana: 'くにのことぶき', company: c)
Brand.find_or_create_by!(name: '百花撩乱', kana: 'ひゃっかりょうらん', company: c)


c = Company.create_or_find_by!(name: '喜多屋', kana: 'きたや')
address_attrs = { prefecture_code: 40, city: '八女市', street_address: '本町374', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0943-23-2154', fax: '0943-23-2156', website: 'http://www.kitaya.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八峰', kana: 'やっほう', company: c)
Brand.find_or_create_by!(name: '有馬', kana: 'ありま', company: c)
Brand.find_or_create_by!(name: '寒山水', kana: 'かんさんすい', company: c)
Brand.find_or_create_by!(name: '蒼田', kana: 'そうでん', company: c)
Brand.find_or_create_by!(name: '吟の瞳', kana: 'ぎんのひとみ', company: c)
Brand.find_or_create_by!(name: 'あいのひめ', kana: 'あいのひめ', company: c)
Brand.find_or_create_by!(name: '喜多屋', kana: 'きたや', company: c)


c = Company.create_or_find_by!(name: '福島酒造', kana: 'ふくしましゅぞう')
address_attrs = { prefecture_code: 40, city: '八女市', street_address: '本町204', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0943-22-2372', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花宗', kana: 'はなむね', company: c)


c = Company.create_or_find_by!(name: '高橋商店', kana: 'たかはししょうてん')
address_attrs = { prefecture_code: 40, city: '八女市', street_address: '本町2-22-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0943-23-5101', fax: '0943-22-2344', website: 'http://www.shigemasu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '博多一本〆', kana: 'はかたいっぽんじめ', company: c)
Brand.find_or_create_by!(name: '繁桝', kana: 'しげます', company: c)
Brand.find_or_create_by!(name: '可也', kana: 'かや', company: c)
Brand.find_or_create_by!(name: '枯淡', kana: 'こたん', company: c)
Brand.find_or_create_by!(name: '麹屋', kana: 'こうじや', company: c)


c = Company.create_or_find_by!(name: '後藤酒造場', kana: 'ごとうしゅぞうじょう')
address_attrs = { prefecture_code: 40, city: '八女市', street_address: '黒木町黒木26', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0943-42-0011', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金襴藤娘', kana: 'きんらんふじむすめ', company: c)


c = Company.create_or_find_by!(name: '旭松酒造', kana: 'あさひまつしゅぞう')
address_attrs = { prefecture_code: 40, city: '八女市', street_address: '黒木町黒木36', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0943-42-0003', fax: '0943-42-3613', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭松', kana: 'あさひまつ', company: c)


c = Company.create_or_find_by!(name: '野田酒造', kana: 'のだしゅぞう')
address_attrs = { prefecture_code: 40, city: 'みやま市', street_address: '瀬高町大江900', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0944-62-5101', fax: '0944-62-4495', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千代錦', kana: 'ちよにしき', company: c)


c = Company.create_or_find_by!(name: '星隈酒造', kana: 'ほしくましゅぞう')
address_attrs = { prefecture_code: 40, city: 'みやま市', street_address: '瀬高町下庄985', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0944-62-2035', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '友ひさご', kana: 'ともひさご', company: c)


c = Company.create_or_find_by!(name: '池田屋', kana: 'いけだや')
address_attrs = { prefecture_code: 40, city: 'みやま市', street_address: '瀬高町下庄1287', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0944-62-2049', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '池泉', kana: 'いけいずみ', company: c)


c = Company.create_or_find_by!(name: '菊美人酒造', kana: 'きくびじんしゅぞう')
address_attrs = { prefecture_code: 40, city: 'みやま市', street_address: '瀬高町上庄183', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0944-62-3001', fax: '0944-62-2168', website: 'http://kikubijin.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊美人', kana: 'きくびじん', company: c)
Brand.find_or_create_by!(name: '九州男児', kana: 'きゅうしゅうだんじ', company: c)


c = Company.create_or_find_by!(name: '玉水酒造', kana: 'たまみずしゅぞう')
address_attrs = { prefecture_code: 40, city: 'みやま市', street_address: '高田町舞鶴214-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0944-67-2001', fax: '0944-67-3171', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神力', kana: 'しんりき', company: c)
Brand.find_or_create_by!(name: '玉水', kana: 'たまみず', company: c)
Brand.find_or_create_by!(name: '峰乃蔵', kana: 'みねのくら', company: c)


c = Company.create_or_find_by!(name: '江頭酒造', kana: 'えがしらしゅぞう')
address_attrs = { prefecture_code: 40, city: '大牟田市', street_address: '三池947', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0944-52-3796', fax: '0944-52-3796', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭盛', kana: 'あさひもり', company: c)
Brand.find_or_create_by!(name: 'すごく逢いたい', kana: 'すごくあいたい', company: c)
Brand.find_or_create_by!(name: '百薬之長', kana: 'ひゃくやくのちょう', company: c)
Brand.find_or_create_by!(name: '大蛇山', kana: 'だいじゃやま', company: c)


c = Company.create_or_find_by!(name: '朝倉酒造', kana: 'あさくらしゅぞう')
address_attrs = { prefecture_code: 40, city: '朝倉市', street_address: '三奈木字川原4408', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0946-22-3377', fax: '0946-22-3381', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三吉正宗', kana: 'みよしまさむね', company: c)


c = Company.create_or_find_by!(name: '雪の里酒造', kana: 'ゆきのさとしゅぞう')
address_attrs = { prefecture_code: 40, city: '朝倉市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '雪の里', kana: 'ゆきのさと', company: c)


c = Company.create_or_find_by!(name: '森山酒造', kana: 'もりやましゅぞう')
address_attrs = { prefecture_code: 40, city: '小郡市', street_address: '大保1067-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-75-2302', fax: '0942-75-6531', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月の桂', kana: 'つきのかつら', company: c)


c = Company.create_or_find_by!(name: '篠崎', kana: 'しのざき')
address_attrs = { prefecture_code: 40, city: '朝倉市', street_address: '比良松185', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0946-52-0005', fax: '0946-52-2165', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '比良松', kana: 'ひらまつ', company: c)
Brand.find_or_create_by!(name: '国菊', kana: 'くにぎく', company: c)


c = Company.create_or_find_by!(name: '安岡酒造場', kana: 'やすおかしゅぞうじょう')
address_attrs = { prefecture_code: 40, city: '朝倉市', street_address: '杷木久喜宮1105-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0946-62-0038', fax: '0946-62-0067', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あさ喜久', kana: 'あさきく', company: c)


c = Company.create_or_find_by!(name: '片岡酒造場', kana: 'かたおかしゅぞうじょう')
address_attrs = { prefecture_code: 40, city: '朝倉郡', street_address: '東峰村大字宝珠山22', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0946-72-2321', fax: '0946-72-2096', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福稲', kana: 'ふくいね', company: c)


c = Company.create_or_find_by!(name: '朝凪酒造', kana: 'あさなぎしゅぞう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '朝凪', kana: 'あさなぎ', company: c)


c = Company.create_or_find_by!(name: '若竹屋酒造場', kana: 'わかたけやしゅぞうじょう')
address_attrs = { prefecture_code: 40, city: '久留米市', street_address: '田主丸町田主丸706', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0943-72-2175', fax: '0943-72-3698', website: 'http://www.wakatakeya.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初々', kana: 'ういうい', company: c)
Brand.find_or_create_by!(name: '若竹屋', kana: 'わかたけや', company: c)
Brand.find_or_create_by!(name: '若の寿', kana: 'わかのことぶき', company: c)
Brand.find_or_create_by!(name: '博多練酒', kana: 'はかたねりざけ', company: c)
Brand.find_or_create_by!(name: '若竹屋伝兵衛馥郁元禄之酒', kana: 'わかたけやでんべえふくいくげんろくのさけ', company: c)


c = Company.create_or_find_by!(name: 'いそのさわ', kana: 'いそのさわ')
address_attrs = { prefecture_code: 40, city: 'うきは市', street_address: '浮羽町西隈上1-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0943-77-3103', fax: '0943-77-7268', website: 'https://isonosawa.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '優', kana: 'ゆう', company: c)
Brand.find_or_create_by!(name: '中洲', kana: 'なかず', company: c)
Brand.find_or_create_by!(name: '磯乃澤', kana: 'いそのさわ', company: c)
Brand.find_or_create_by!(name: '駿', kana: 'しゅん', company: c)


c = Company.create_or_find_by!(name: '高野酒造場', kana: 'たかのしゅぞうじょう')
address_attrs = { prefecture_code: 40, city: '築上郡', street_address: '上毛町土佐井469', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0979-72-2002', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '興玉', kana: 'おきたま', company: c)
