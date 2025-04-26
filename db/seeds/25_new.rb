c = Company.create_or_find_by!(name: '平井商店', kana: 'ひらいしょうてん')
address_attrs = { prefecture_code: 25, city: '大津市', street_address: '中央1-2-33', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '077-522-1277', fax: '077-522-2250', website: 'http://www.biwa.ne.jp/~asajio', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '浅茅生', kana: 'あさぢを', company: c)


c = Company.create_or_find_by!(name: '浪乃音酒造', kana: 'なみのおとしゅぞう')
address_attrs = { prefecture_code: 25, city: '大津市', street_address: '本堅田1-7-16', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '077-573-0002', fax: '077-573-4948', website: 'http://naminooto.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '無名蔵', kana: 'むめいぐら', company: c)
Brand.find_or_create_by!(name: '浪乃音', kana: 'なみのおと', company: c)


c = Company.create_or_find_by!(name: '滋賀県酒造組合', kana: 'しがしゅぞうくみあい')
address_attrs = { prefecture_code: 25, city: '大津市', street_address: '打出浜2番1号　コラボしが21　1F', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '077-522-3070', fax: '077-522-3185', website: 'https://shiga-sake.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '近江の酒にて候 一万人で乾杯', kana: 'おうみのさけにてそうろう いちまんにんでかんぱい', company: c)


c = Company.create_or_find_by!(name: '月の里酒造', kana: 'つきのさとしゅぞう')
address_attrs = { prefecture_code: 25, city: '大津市', street_address: '石山寺3-29-9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '077-537-0007', fax: '077-533-3467', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月の里', kana: 'つきのさと', company: c)


c = Company.create_or_find_by!(name: '福井弥平商店', kana: 'ふくいやへいしょうてん')
address_attrs = { prefecture_code: 25, city: '高島市', street_address: '勝野1387-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0740-36-1011', fax: '0740-36-1633', website: 'https://www.haginotsuyu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萩乃露', kana: 'はぎのつゆ', company: c)
Brand.find_or_create_by!(name: 'びわ湖正宗', kana: 'びわこまさむね', company: c)
Brand.find_or_create_by!(name: '双子座のスピカ', kana: 'ふたござのすぴか', company: c)
Brand.find_or_create_by!(name: '雨垂れ石を穿つ', kana: 'あまだれいしをうがつ', company: c)


c = Company.create_or_find_by!(name: '川島酒造', kana: 'かわしましゅぞう')
address_attrs = { prefecture_code: 25, city: '高島市', street_address: '新旭町旭83', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0740-25-2202', fax: '0740-25-5007', website: 'http://www.matsu87.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松の花', kana: 'まつのはな', company: c)


c = Company.create_or_find_by!(name: '上原酒造', kana: 'うえはらしゅぞう')
address_attrs = { prefecture_code: 25, city: '高島市', street_address: '新旭町太田1524', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0740-25-2075', fax: '0740-25-5463', website: 'http://furosen.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '奥琵琶湖', kana: 'おくびわこ', company: c)
Brand.find_or_create_by!(name: '不老泉', kana: 'ふろうせん', company: c)
Brand.find_or_create_by!(name: '杣の天狗', kana: 'そまのてんぐ', company: c)
Brand.find_or_create_by!(name: '百笑の夢', kana: 'ひゃくしょうのゆめ', company: c)
Brand.find_or_create_by!(name: '風の舞', kana: 'かぜのまい', company: c)
Brand.find_or_create_by!(name: '寿扇', kana: 'じゅせん', company: c)
Brand.find_or_create_by!(name: '御家ごろし', kana: 'ごけごろし', company: c)
Brand.find_or_create_by!(name: '亀亀覇', kana: 'かめかめは', company: c)


c = Company.create_or_find_by!(name: '七洋酒造', kana: 'しちようしゅぞう')
address_attrs = { prefecture_code: 25, city: '高島市', street_address: '新旭町新庄1154', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0740-25-2111', fax: '0740-25-5780', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '若恵比寿', kana: 'わかえびす', company: c)
Brand.find_or_create_by!(name: '比叡の淡雪', kana: 'ひえいのあわゆき', company: c)


c = Company.create_or_find_by!(name: '池本酒造', kana: 'いけもとしゅぞう')
address_attrs = { prefecture_code: 25, city: '高島市', street_address: '今津町今津221', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0740-22-2112', fax: '0740-22-1571', website: 'https://biwa-cho.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '琵琶の長寿', kana: 'びわのちょうじゅ', company: c)


c = Company.create_or_find_by!(name: '吉田酒造', kana: 'よしだしゅぞう')
address_attrs = { prefecture_code: 25, city: '高島市', street_address: 'マキノ町海津2292', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0740-28-0014', fax: '0740-28-1390', website: 'http://chikubu-sakura.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '竹生嶋', kana: 'ちくぶしま', company: c)
Brand.find_or_create_by!(name: '緑樹影', kana: 'りょくじゅかげ', company: c)


c = Company.create_or_find_by!(name: '暁酒造', kana: 'あかつきしゅぞう')
address_attrs = { prefecture_code: 25, city: '野洲市', street_address: '小篠原1389', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '077-587-0020', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '暁', kana: 'あかつき', company: c)


c = Company.create_or_find_by!(name: '宇野勝酒造場', kana: 'うのまさるしゅぞうじょう')
address_attrs = { prefecture_code: 25, city: '野洲市', street_address: '野洲236', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '077-587-0073', fax: '077-587-0073', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '悠紀', kana: 'ゆうき', company: c)
Brand.find_or_create_by!(name: '玉の春', kana: 'たまのはる', company: c)


c = Company.create_or_find_by!(name: '宇野酒造', kana: 'うのしゅぞう')
address_attrs = { prefecture_code: 25, city: '野洲市', street_address: '野洲429', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '077-587-0005', fax: '077-587-0096', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千代世界', kana: 'ちよせかい', company: c)
Brand.find_or_create_by!(name: '近江富士', kana: 'おうみふじ', company: c)


c = Company.create_or_find_by!(name: '徳田酒造', kana: 'とくだしゅぞう')
address_attrs = { prefecture_code: 25, city: '野洲市', street_address: '久野部155-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '077-587-0048', fax: '077-587-0197', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉兆', kana: 'きっちょう', company: c)
Brand.find_or_create_by!(name: '徳娘', kana: 'とくむすめ', company: c)


c = Company.create_or_find_by!(name: '松瀬酒造', kana: 'まつせしゅぞう')
address_attrs = { prefecture_code: 25, city: '蒲生郡', street_address: '竜王町弓削475', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-58-0009', fax: '0748-58-0194', website: 'http://matsunotsukasa.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松の司', kana: 'まつのつかさ', company: c)


c = Company.create_or_find_by!(name: '服部岩彦酒造場', kana: 'はっとりいわひこしゅぞうじょう')
address_attrs = { prefecture_code: 25, city: '栗東市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '金泉', kana: 'きんせん', company: c)


c = Company.create_or_find_by!(name: '竹内酒造', kana: 'たけうちしゅぞう')
address_attrs = { prefecture_code: 25, city: '湖南市', street_address: '石部中央1-6-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-77-2001', fax: '0748-77-2963', website: 'http://www.kanoizumi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '明尽', kana: 'みょうじん', company: c)
Brand.find_or_create_by!(name: '唯々', kana: 'ただただ', company: c)
Brand.find_or_create_by!(name: '近江万葉', kana: 'おうみまんよう', company: c)
Brand.find_or_create_by!(name: '香の泉', kana: 'かのいずみ', company: c)
Brand.find_or_create_by!(name: '琵琶湖夢心地', kana: 'びわこゆめごこち', company: c)


c = Company.create_or_find_by!(name: '北島酒造', kana: 'きたじましゅぞう')
address_attrs = { prefecture_code: 25, city: '湖南市', street_address: '針756', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-72-0012', fax: '0748-72-0124', website: 'http://www.kitajima-shuzo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北島', kana: 'きたじま', company: c)
Brand.find_or_create_by!(name: '御代栄', kana: 'みよさかえ', company: c)


c = Company.create_or_find_by!(name: '重田酒造', kana: 'しげたしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '米運', kana: 'べいうん', company: c)


c = Company.create_or_find_by!(name: '中村酒造', kana: 'なかむらしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '正重', kana: 'まさしげ', company: c)


c = Company.create_or_find_by!(name: '瀬古酒造', kana: 'せこしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '甲賀町上野1807', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-88-2102', fax: '0748-88-4130', website: 'http://www.sekoshuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '柳緑花紅', kana: 'りゅうりょくかこう', company: c)
Brand.find_or_create_by!(name: '桜生', kana: 'さくらぎ', company: c)
Brand.find_or_create_by!(name: '忍者', kana: 'にんじゃ', company: c)
Brand.find_or_create_by!(name: '大甲賀', kana: 'だいこうが', company: c)
Brand.find_or_create_by!(name: '月あかり', kana: 'つきあかり', company: c)
Brand.find_or_create_by!(name: '柳花', kana: 'りゅうか', company: c)


c = Company.create_or_find_by!(name: '望月酒造', kana: 'もちづきしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '甲賀町毛枚1158', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-88-2020', fax: '0748-88-6090', website: 'http://suzukabuto.blog.fc2.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '晴朗', kana: 'せいろう', company: c)
Brand.find_or_create_by!(name: '寿々兜', kana: 'すずかぶと', company: c)


c = Company.create_or_find_by!(name: '田中酒造', kana: 'たなかしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '甲賀町大原市場474', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-88-2023', fax: '0748-88-2261', website: 'http://harunomine.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '春乃峰', kana: 'はるのみね', company: c)


c = Company.create_or_find_by!(name: '前川酒造', kana: 'まえかわしゅぞう')
address_attrs = { prefecture_code: 25, city: '米原市', street_address: '枝折652', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-54-0035', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あら玉', kana: 'あらたま', company: c)


c = Company.create_or_find_by!(name: '増本酒造場', kana: 'ますもとしゅぞうじょう')
address_attrs = { prefecture_code: 25, city: '東近江市', street_address: '神郷町1019', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-42-0129', fax: '0748-42-6077', website: 'http://www.ususakura.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '薄桜', kana: 'うすさくら', company: c)
Brand.find_or_create_by!(name: '近江藤兵衛', kana: 'おうみとうべえ', company: c)


c = Company.create_or_find_by!(name: '音瀬酒造場', kana: 'おとせしゅぞうじょう')
address_attrs = { prefecture_code: 25, city: '彦根市', street_address: '高宮町1079', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-22-2136', fax: '0749-24-9236', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '猩々菊', kana: 'しょうじょうぎく', company: c)


c = Company.create_or_find_by!(name: '多賀', kana: 'たが')
address_attrs = { prefecture_code: 25, city: '犬上郡', street_address: '多賀町中川原102', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-48-0134', fax: '0749-48-1363', website: 'http://www.sakenotaga.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '多賀', kana: 'たが', company: c)


c = Company.create_or_find_by!(name: '西勝酒造', kana: 'にしかつしゅぞう')
address_attrs = { prefecture_code: 25, city: '近江八幡市', street_address: '仲屋町　中21', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-32-2054', fax: '0748-32-6336', website: 'http://www.shuyukan.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'HEART LAND', kana: 'ハートランド', company: c)
Brand.find_or_create_by!(name: '湖東富貴', kana: 'ことぶき', company: c)


c = Company.create_or_find_by!(name: '宇野本家', kana: 'うのほんけ')
address_attrs = { prefecture_code: 25, city: '守山市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '榮爵', kana: 'えいしゃく', company: c)


c = Company.create_or_find_by!(name: '金盛酒造', kana: 'きんせいしゅぞう')
address_attrs = { prefecture_code: 25, city: '守山市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '金盛', kana: 'きんせい', company: c)


c = Company.create_or_find_by!(name: '太田酒造', kana: 'おおたしゅぞう')
address_attrs = { prefecture_code: 25, city: '草津市', street_address: '草津3-10-37', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '077-562-1105', fax: '077-564-0046', website: 'https://www.ohta-shuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '道灌', kana: 'どうかん', company: c)
Brand.find_or_create_by!(name: '千代八千代', kana: 'ちよやちよ', company: c)
Brand.find_or_create_by!(name: '皇泉', kana: 'すめらぎのいずみ', company: c)
Brand.find_or_create_by!(name: 'Born KURA', kana: 'ぼんくら', company: c)
Brand.find_or_create_by!(name: '湖弧艪', kana: 'こころ', company: c)


c = Company.create_or_find_by!(name: '古川酒造', kana: 'ふるかわしゅぞう')
address_attrs = { prefecture_code: 25, city: '草津市', street_address: '矢倉1-3-33', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '077-562-2116', fax: '077-562-2116', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天井川', kana: 'てんじょうがわ', company: c)
Brand.find_or_create_by!(name: '宗花', kana: 'むねはな', company: c)


c = Company.create_or_find_by!(name: '佐野酒造', kana: 'さのしゅぞう')
address_attrs = { prefecture_code: 25, city: '長浜市', street_address: '今荘町350', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-74-1005', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '淡海司', kana: 'たんかいつかさ', company: c)


c = Company.create_or_find_by!(name: '佐藤酒造', kana: 'さとうしゅぞう')
address_attrs = { prefecture_code: 25, city: '長浜市', street_address: '榎木町979', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-68-3600', fax: '0749-68-3601', website: 'http://www.nagahamanosake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '生乍自由', kana: 'うまれながらじゆう', company: c)
Brand.find_or_create_by!(name: '湖濱', kana: 'こはま', company: c)
Brand.find_or_create_by!(name: '六瓢箪', kana: 'むびょうたん', company: c)
Brand.find_or_create_by!(name: '大湖', kana: 'たいこ', company: c)


c = Company.create_or_find_by!(name: '近江酒造', kana: 'おうみしゅぞう')
address_attrs = { prefecture_code: 25, city: '東近江市', street_address: '八日市上之町9-16', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-22-0001', fax: '0748-23-1000', website: 'http://shigasakari.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '近江ねこ正宗', kana: 'おうみねこまさむね', company: c)
Brand.find_or_create_by!(name: '志賀盛', kana: 'しがさかり', company: c)
Brand.find_or_create_by!(name: '近江路', kana: 'おうみじ', company: c)
Brand.find_or_create_by!(name: '近江龍門', kana: 'おうみりゅうもん', company: c)
Brand.find_or_create_by!(name: '十八', kana: 'とっぱち', company: c)
Brand.find_or_create_by!(name: '志賀櫻', kana: 'しがさくら', company: c)


c = Company.create_or_find_by!(name: '喜多酒造', kana: 'きたしゅぞう')
address_attrs = { prefecture_code: 25, city: '東近江市', street_address: '池田町1129', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-22-2505', fax: '0748-24-0505', website: 'https://kirakucho.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '百済寺樽', kana: 'ひゃくさいじたる', company: c)
Brand.find_or_create_by!(name: '権座', kana: 'ごんざ', company: c)
Brand.find_or_create_by!(name: '喜楽長', kana: 'きらくちょう', company: c)
Brand.find_or_create_by!(name: '湖風', kana: 'こふう', company: c)


c = Company.create_or_find_by!(name: '奥野酒造場', kana: 'おくのしゅぞうじょう')
address_attrs = { prefecture_code: 25, city: '東近江市', street_address: '下二俣町416', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-22-0730', fax: '0748-22-0730', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '百笑', kana: 'ひゃくしょう', company: c)
Brand.find_or_create_by!(name: '稲玉', kana: 'いなたま', company: c)


c = Company.create_or_find_by!(name: '畑酒造', kana: 'はたしゅぞう')
address_attrs = { prefecture_code: 25, city: '東近江市', street_address: '小脇町1410', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-22-0332', fax: '0748-23-5689', website: 'https://ja-jp.facebook.com/H.daijirou', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '喜量能', kana: 'きりょうよし', company: c)
Brand.find_or_create_by!(name: '19歳の酒', kana: 'じゅうきゅうさいのさけ', company: c)
Brand.find_or_create_by!(name: '大治郎', kana: 'だいじろう', company: c)


c = Company.create_or_find_by!(name: '西田酒造', kana: 'にしだしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '水口町松栄1-29', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-62-0046', fax: '0748-62-0046', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔小町', kana: 'よいこまち', company: c)


c = Company.create_or_find_by!(name: '美冨久酒造', kana: 'みふくしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '水口町西林口3-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-62-1113', fax: '0748-62-1173', website: 'https://mifuku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三連星', kana: 'さんれんせい', company: c)
Brand.find_or_create_by!(name: '桜東風', kana: 'さくらごち', company: c)
Brand.find_or_create_by!(name: '正信', kana: 'まさのぶ', company: c)
Brand.find_or_create_by!(name: 'しのび', kana: 'しのび', company: c)
Brand.find_or_create_by!(name: '水口城', kana: 'みなくちじょう', company: c)
Brand.find_or_create_by!(name: '美冨久', kana: 'みふく', company: c)


c = Company.create_or_find_by!(name: '笑四季酒造', kana: 'えみしきしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '水口町本町1-7-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-62-0007', fax: '0748-62-9545', website: 'http://www.emishiki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '笑四季', kana: 'えみしき', company: c)
Brand.find_or_create_by!(name: 'しのび', kana: 'しのび', company: c)


c = Company.create_or_find_by!(name: '滋賀酒造', kana: 'しがしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '水口町三大寺39', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-62-2001', fax: '0748-62-4114', website: 'http://www.biwacity.com/shiga-syuzo', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '貴生娘', kana: 'きぶむすめ', company: c)


c = Company.create_or_find_by!(name: '藤本酒造', kana: 'ふじもとしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '水口町伴中山696', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-62-0410', fax: '0748-62-0650', website: 'http://www.ac-koka.jp/sinkai', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大津絵シリーズ', kana: 'おおつえしりーず', company: c)
Brand.find_or_create_by!(name: '神開', kana: 'しんかい', company: c)


c = Company.create_or_find_by!(name: '松岡酒造', kana: 'まつおかしゅぞう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '土山町前野517-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-67-0216', fax: '0748-67-1307', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '馬子唄', kana: 'まごうた', company: c)
Brand.find_or_create_by!(name: '日乃出松', kana: 'ひのでまつ', company: c)
Brand.find_or_create_by!(name: 'たむら', kana: 'たむら', company: c)
Brand.find_or_create_by!(name: '斎王の里', kana: 'さいおうのさと', company: c)
Brand.find_or_create_by!(name: 'つちやま', kana: 'つちやま', company: c)


c = Company.create_or_find_by!(name: '安井酒造場', kana: 'やすいしゅぞうじょう')
address_attrs = { prefecture_code: 25, city: '甲賀市', street_address: '土山町徳原225', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-67-0027', fax: '0748-67-0819', website: 'https://hatsusakura.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初桜', kana: 'はつさくら', company: c)
Brand.find_or_create_by!(name: '田村川', kana: 'たむらがわ', company: c)
Brand.find_or_create_by!(name: '初恋', kana: 'はつこい', company: c)


c = Company.create_or_find_by!(name: '山岡酒造', kana: 'やまおかしゅぞう')
address_attrs = { prefecture_code: 25, city: '長浜市', street_address: '高月町西阿閉1395-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-85-5167', fax: '0749-85-5417', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '湖の誉', kana: 'このほまれ', company: c)
Brand.find_or_create_by!(name: '月の観音', kana: 'つきのかんのん', company: c)


c = Company.create_or_find_by!(name: '冨田酒造', kana: 'とみたしゅぞう')
address_attrs = { prefecture_code: 25, city: '長浜市', street_address: '木之本町木之本1107', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-82-2013', fax: '0749-82-5507', website: 'http://www.7yari.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '七本鎗', kana: 'しちほんやり', company: c)


c = Company.create_or_find_by!(name: '山路酒造', kana: 'やまじしゅぞう')
address_attrs = { prefecture_code: 25, city: '長浜市', street_address: '木之本町木之本990', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-82-3037', fax: '0749-82-5100', website: 'http://www.hokkokukaidou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北国街道', kana: 'ほっこくかいどう', company: c)
Brand.find_or_create_by!(name: '桑酒', kana: 'くわざけ', company: c)


c = Company.create_or_find_by!(name: '岡村本家', kana: 'おかむらほんけ')
address_attrs = { prefecture_code: 25, city: '犬上郡', street_address: '豊郷町吉田100', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-35-2538', fax: '0749-35-3500', website: 'https://kin-kame.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金亀', kana: 'きんかめ', company: c)
Brand.find_or_create_by!(name: '大星', kana: 'おおぼし', company: c)
Brand.find_or_create_by!(name: '肥田城', kana: 'ひだじょう', company: c)
Brand.find_or_create_by!(name: '小野庄こまち', kana: 'こまち', company: c)
Brand.find_or_create_by!(name: '目賀田', kana: 'めかた', company: c)
Brand.find_or_create_by!(name: '富之尾', kana: 'とみのお', company: c)
Brand.find_or_create_by!(name: '阿酒羅', kana: 'あしゅら', company: c)


c = Company.create_or_find_by!(name: '西沢藤平商店', kana: 'にしざわとうへいしょうてん')
address_attrs = { prefecture_code: 25, city: '犬上郡', street_address: '豊郷町沢2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-35-2002', fax: '0749-35-5173', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊郷', kana: 'とよさと', company: c)
Brand.find_or_create_by!(name: 'よいとよいやまかどっこさのせー 江州音頭', kana: 'よいとよいやまかどっこさのせー ごうしゅうおんど', company: c)
Brand.find_or_create_by!(name: '出世誉', kana: 'しゅっせほまれ', company: c)
Brand.find_or_create_by!(name: '幸', kana: 'しあわせ', company: c)


c = Company.create_or_find_by!(name: '愛知酒造', kana: 'えちしゅぞう')
address_attrs = { prefecture_code: 25, city: '愛知郡', street_address: '愛荘町野々目207', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-42-2134', fax: '0749-42-6361', website: 'http://www.tomitsuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富鶴', kana: 'とみつる', company: c)


c = Company.create_or_find_by!(name: '藤居本家', kana: 'ふじいほんけ')
address_attrs = { prefecture_code: 25, city: '愛知郡', street_address: '愛荘町長野793', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0749-42-2080', fax: '0749-42-3047', website: 'http://www.fujiihonke.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '琵琶の舞', kana: 'びわのまい', company: c)
Brand.find_or_create_by!(name: '旭日', kana: 'きょくじつ', company: c)


c = Company.create_or_find_by!(name: '中澤酒造', kana: 'なかざわしゅぞう')
address_attrs = { prefecture_code: 25, city: '東近江市', street_address: '五個荘小幡町570', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-48-2054', fax: '0748-48-5778', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'てんびんの里', kana: 'てんびんのさと', company: c)
Brand.find_or_create_by!(name: '秀一', kana: 'しゅういち', company: c)
Brand.find_or_create_by!(name: '一博', kana: 'かずひろ', company: c)


c = Company.create_or_find_by!(name: '吉本酒造', kana: 'よしもとしゅぞう')
address_attrs = { prefecture_code: 25, city: '蒲生郡', street_address: '日野町中之郷760', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-52-0232', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '龍王', kana: 'りゅうおう', company: c)


c = Company.create_or_find_by!(name: '矢尾酒造', kana: 'やおしゅぞう')
address_attrs = { prefecture_code: 25, city: '蒲生郡', street_address: '日野町中在寺512', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-53-0015', fax: '0748-53-2218', website: 'http://yaosyuzou.web.fc2.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鈴正宗', kana: 'すずまさむね', company: c)


c = Company.create_or_find_by!(name: '森本酒造', kana: 'もりもとしゅぞう')
address_attrs = { prefecture_code: 25, city: '蒲生郡', street_address: '日野町北脇427-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0748-53-0012', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花乃友', kana: 'はなのとも', company: c)
