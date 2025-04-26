c = Company.create_or_find_by!(name: '初光酒造', kana: 'はつひかりしゅぞう')
address_attrs = { prefecture_code: 30, city: '紀の川市', street_address: '貴志川町丸栖87', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0736-64-3320', fax: '0736-64-5045', website: 'http://www.yorokobi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'よろこびの酒', kana: 'よろこびのさけ', company: c)
Brand.find_or_create_by!(name: 'おめでとう', kana: 'おめでとう', company: c)


c = Company.create_or_find_by!(name: '中尾酒造店', kana: 'なかおしゅぞうてん')
address_attrs = { prefecture_code: 30, city: '海草郡', street_address: '紀美野町動木28', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '073-489-2017', fax: '073-489-5777', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '紀の川', kana: 'きのかわ', company: c)


c = Company.create_or_find_by!(name: '通宝酒造', kana: 'つうほうしゅぞう')
address_attrs = { prefecture_code: 30, city: '海南市', street_address: '野上中449', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '073-487-0144', fax: '073-487-4575', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夢いっぱい', kana: 'ゆめいっぱい', company: c)
Brand.find_or_create_by!(name: '通宝', kana: 'つうほう', company: c)


c = Company.create_or_find_by!(name: '平和酒造', kana: 'へいわしゅぞう')
address_attrs = { prefecture_code: 30, city: '海南市', street_address: '溝ノ口119', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0734-87-0189', fax: '073-487-4641', website: 'http://www.heiwashuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '和歌鶴', kana: 'わかつる', company: c)
Brand.find_or_create_by!(name: '紀風', kana: 'きふう', company: c)
Brand.find_or_create_by!(name: '紀美野', kana: 'きみの', company: c)
Brand.find_or_create_by!(name: '紀土 KID', kana: 'きっど', company: c)


c = Company.create_or_find_by!(name: '天長島村酒造', kana: 'てんちょうしまむらしゅぞう')
address_attrs = { prefecture_code: 30, city: '和歌山市', street_address: '本町7-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '073-431-3311', fax: '073-431-9900', website: 'http://www.tencho-shimamura.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '熊野路', kana: 'くまのじ', company: c)
Brand.find_or_create_by!(name: '天長', kana: 'てんちょう', company: c)
Brand.find_or_create_by!(name: '吉宗', kana: 'よしむね', company: c)
Brand.find_or_create_by!(name: '高野山', kana: 'こうやさん', company: c)


c = Company.create_or_find_by!(name: '世界一統', kana: 'せかいいっとう')
address_attrs = { prefecture_code: 30, city: '和歌山市', street_address: '湊紺屋町1-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '073-433-1441', fax: '073-428-1444', website: 'http://www.sekaiitto.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '世界一統', kana: 'せかいいっとう', company: c)
Brand.find_or_create_by!(name: '熊楠', kana: 'くまぐす', company: c)
Brand.find_or_create_by!(name: '風雲剣鬼伝 新陰十兵衛', kana: 'しんかげじゅうべえ', company: c)
Brand.find_or_create_by!(name: '紀州五十五万石', kana: 'きしゅうごじゅうごまんごく', company: c)
Brand.find_or_create_by!(name: '南方', kana: 'みなかた', company: c)
Brand.find_or_create_by!(name: '紀州', kana: 'きしゅう', company: c)
Brand.find_or_create_by!(name: '澪標', kana: 'みおつくし', company: c)
Brand.find_or_create_by!(name: 'いち辛', kana: 'いちから', company: c)
Brand.find_or_create_by!(name: '米乃滴', kana: 'こめのしずく', company: c)
Brand.find_or_create_by!(name: 'イチ', kana: 'いち', company: c)


c = Company.create_or_find_by!(name: '田端酒造', kana: 'たばたしゅぞう')
address_attrs = { prefecture_code: 30, city: '和歌山市', street_address: '吹屋町5-13-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '073-424-7121', fax: '073-431-9435', website: 'https://www.rashomon-kuramoto.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夢十夜', kana: 'ゆめじゅうや', company: c)
Brand.find_or_create_by!(name: '七人の侍', kana: 'しちにんのさむらい', company: c)
Brand.find_or_create_by!(name: '羅生門', kana: 'らしょうもん', company: c)
Brand.find_or_create_by!(name: 'さとこのお酒', kana: 'さとこのおさけ', company: c)
Brand.find_or_create_by!(name: '大東一', kana: 'だいとういち', company: c)
Brand.find_or_create_by!(name: 'つれもていこら。', kana: 'つれもていこら。', company: c)


c = Company.create_or_find_by!(name: '祝砲酒造', kana: 'しゅくほうしゅぞう')
address_attrs = { prefecture_code: 30, city: '和歌山市', street_address: '田中町2-20', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '073-424-4141', fax: '073-424-4143', website: 'http://www.shukuhou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '紀州魁', kana: 'きしゅうさきがけ', company: c)
Brand.find_or_create_by!(name: '祝砲', kana: 'しゅくほう', company: c)


c = Company.create_or_find_by!(name: '名手酒造店', kana: 'なてしゅぞうてん')
address_attrs = { prefecture_code: 30, city: '海南市', street_address: '黒江846', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '073-482-0005', fax: '073-483-3456', website: 'https://kuroushi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊御代', kana: 'きくみよ', company: c)
Brand.find_or_create_by!(name: '黒牛', kana: 'くろうし', company: c)
Brand.find_or_create_by!(name: '一掴', kana: 'ひとつかみ', company: c)


c = Company.create_or_find_by!(name: '中野ＢＣ', kana: 'なかのびぃしぃ')
address_attrs = { prefecture_code: 30, city: '海南市', street_address: '藤白758-45', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '073-482-1234', fax: '073-482-2244', website: 'https://www.nakano-group.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'かよ', kana: 'かよ', company: c)
Brand.find_or_create_by!(name: '紀伊国屋文左衛門', kana: 'きのくにやぶんざえもん', company: c)
Brand.find_or_create_by!(name: '長久', kana: 'ちょうきゅう', company: c)
Brand.find_or_create_by!(name: '超久', kana: 'ちょうきゅう', company: c)
Brand.find_or_create_by!(name: '兆久', kana: 'ちょうきゅう', company: c)
Brand.find_or_create_by!(name: '超超久', kana: 'ちょうちょうきゅう', company: c)


c = Company.create_or_find_by!(name: '島本酒造場', kana: 'しまもとしゅぞうじょう')
address_attrs = { prefecture_code: 30, city: '海南市', street_address: '藤白54', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '073-482-0017', fax: '073-482-0017', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御代正宗', kana: 'みよまさむね', company: c)


c = Company.create_or_find_by!(name: '平松酒造本家', kana: 'ひらまつしゅぞうほんけ')
address_attrs = { prefecture_code: 30, city: '有田郡', street_address: '有田川町下津野438', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0737-52-2009', fax: '0737-52-2509', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宗祇誉', kana: 'そうぎほまれ', company: c)
Brand.find_or_create_by!(name: '金葵', kana: 'きんあおい', company: c)


c = Company.create_or_find_by!(name: '高垣酒造', kana: 'たかがきしゅぞう')
address_attrs = { prefecture_code: 30, city: '有田郡', street_address: '有田川町小川1465', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0737-34-2109', fax: '0737-34-3052', website: 'https://takagakishuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '龍神丸', kana: 'りゅうじんまる', company: c)
Brand.find_or_create_by!(name: '里の花', kana: 'さとのはな', company: c)
Brand.find_or_create_by!(name: '天久', kana: 'てんきゅう', company: c)
Brand.find_or_create_by!(name: '喜楽里', kana: 'きらり', company: c)
Brand.find_or_create_by!(name: '流霞', kana: 'ながれかすみ', company: c)
Brand.find_or_create_by!(name: '紀勢鶴', kana: 'きせいつる', company: c)
Brand.find_or_create_by!(name: '紀ノ酒', kana: 'きのさけ', company: c)
Brand.find_or_create_by!(name: '白馬', kana: 'しらま', company: c)
Brand.find_or_create_by!(name: '高垣', kana: 'たかがき', company: c)
Brand.find_or_create_by!(name: '近大酒', kana: 'きんだいさけ', company: c)


c = Company.create_or_find_by!(name: '岸野酒造本家', kana: 'きしのしゅぞうほんけ')
address_attrs = { prefecture_code: 30, city: '御坊市', street_address: '御坊60', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0738-22-0101', fax: '0738-22-8541', website: 'http://www.kisyubijin.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '紀州美人', kana: 'きしゅうびじん', company: c)


c = Company.create_or_find_by!(name: '鈴木宗右衛門酒造', kana: 'すずきそうえもんしゅぞう')
address_attrs = { prefecture_code: 30, city: '田辺市', street_address: '秋津町1305', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0739-22-3131', fax: '0739-25-5550', website: 'http://suzumon.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '弁慶の里', kana: 'べんけいのさと', company: c)
Brand.find_or_create_by!(name: '三段壁', kana: 'さんだんべき', company: c)
Brand.find_or_create_by!(name: '熊野古道', kana: 'くまのこどう', company: c)
Brand.find_or_create_by!(name: '美熊野', kana: 'うましくまの', company: c)


c = Company.create_or_find_by!(name: '尾崎酒造', kana: 'おざきしゅぞう')
address_attrs = { prefecture_code: 30, city: '新宮市', street_address: '船町3-2-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0735-22-2105', fax: '0735-23-0009', website: 'http://ozakisyuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '熊野三山', kana: 'くまのさんざん', company: c)
Brand.find_or_create_by!(name: '熊野川', kana: 'くまのがわ', company: c)
Brand.find_or_create_by!(name: '勇魚', kana: 'いさな', company: c)
Brand.find_or_create_by!(name: '太平洋', kana: 'たいへいよう', company: c)


c = Company.create_or_find_by!(name: '九重雑賀', kana: 'ここのえさいか')
address_attrs = { prefecture_code: 30, city: '紀の川市', street_address: '桃山町元142-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0736-66-3160', fax: '0736-66-3163', website: 'https://www.kokonoesaika.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '廣川', kana: 'ひろかわ', company: c)
Brand.find_or_create_by!(name: '錦郷', kana: 'きんきょう', company: c)
Brand.find_or_create_by!(name: '雑賀孫市', kana: 'さいかまごいち', company: c)
Brand.find_or_create_by!(name: '雑賀', kana: 'さいか', company: c)


c = Company.create_or_find_by!(name: '吉村秀雄商店', kana: 'よしむらひでおしょうてん')
address_attrs = { prefecture_code: 30, city: '岩出市', street_address: '畑毛72', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0736-62-2121', fax: '0736-62-4457', website: 'https://nihonsyu-nihonjyou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鉄砲隊', kana: 'てっぽうたい', company: c)
Brand.find_or_create_by!(name: '伐折羅大将', kana: 'ばざらたいしょう', company: c)
Brand.find_or_create_by!(name: '亀の歩み', kana: 'かめのあゆみ', company: c)
Brand.find_or_create_by!(name: '車坂', kana: 'くるまざか', company: c)
Brand.find_or_create_by!(name: '日本城', kana: 'にほんじょう', company: c)


c = Company.create_or_find_by!(name: '初桜酒造', kana: 'はつさくらしゅぞう')
address_attrs = { prefecture_code: 30, city: '伊都郡', street_address: 'かつらぎ町中飯降85', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0736-22-0005', fax: '0736-22-2324', website: 'https://www.hatsusakura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '高野山般若湯', kana: 'こうやさんはんにゃとう', company: c)
Brand.find_or_create_by!(name: '初桜', kana: 'はつさくら', company: c)
Brand.find_or_create_by!(name: '亀鶴', kana: 'きかく', company: c)
Brand.find_or_create_by!(name: '真田忍び', kana: 'さなだしのび', company: c)
