c = Company.create_or_find_by!(name: '岡山ZARU', kana: 'おかやまざる')
address_attrs = { prefecture_code: 33, city: '', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'http://okayamazaru.seesaa.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ORIGIN', kana: 'オリジン', company: c)


c = Company.create_or_find_by!(name: '萬歳酒造', kana: 'ばんざいしゅぞう')
address_attrs = { prefecture_code: 33, city: '岡山市', street_address: '旭本町1-38', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-222-3836', fax: '086-222-3836', website: 'http://homepage2.nifty.com/manzai-syuzo', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'さつき心', kana: 'さつきごころ', company: c)


c = Company.create_or_find_by!(name: '板野酒造場', kana: 'いたのしゅぞうじょう')
address_attrs = { prefecture_code: 33, city: '岡山市北区', street_address: '一宮35番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-284-1161', fax: '086-284-2387', website: 'https://www.ginpoo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'きびの吟風', kana: 'きびのぎんぷう', company: c)


c = Company.create_or_find_by!(name: '板野酒造本店', kana: 'いたのしゅぞうほんてん')
address_attrs = { prefecture_code: 33, city: '岡山市北区', street_address: '大井2272', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-295-0025', fax: '086-295-2132', website: 'http://www.futamo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '二面', kana: 'ふたも', company: c)
Brand.find_or_create_by!(name: '鬼ノ城', kana: 'きのじょう', company: c)


c = Company.create_or_find_by!(name: '利守酒造', kana: 'としもりしゅぞう')
address_attrs = { prefecture_code: 33, city: '赤磐市', street_address: '西軽部762-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-957-3117', fax: '086-957-3790', website: 'https://www.sakehitosuji.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酒一筋', kana: 'さけひとすじ', company: c)
Brand.find_or_create_by!(name: '遥', kana: 'はるか', company: c)
Brand.find_or_create_by!(name: '天下人', kana: 'てんかびと', company: c)


c = Company.create_or_find_by!(name: '小坂酒造', kana: 'こさかしゅぞう')
address_attrs = { prefecture_code: 33, city: '赤磐市', street_address: '山口265-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-957-3023', fax: '086-957-3146', website: 'http://www.turunoike.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鶴の池', kana: 'つるのいけ', company: c)


c = Company.create_or_find_by!(name: '小宮山酒造', kana: 'こみやましゅぞう')
address_attrs = { prefecture_code: 33, city: '赤磐市', street_address: '周匝1524-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-954-0411', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日月', kana: 'じつげつ', company: c)


c = Company.create_or_find_by!(name: '山本酒造', kana: 'やまもとしゅぞう')
address_attrs = { prefecture_code: 33, city: '美作市', street_address: '福本577', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0868-74-3165', fax: '0868-74-3287', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '古代', kana: 'こだい', company: c)
Brand.find_or_create_by!(name: '喜久娘', kana: 'きくむすめ', company: c)


c = Company.create_or_find_by!(name: '遠藤酒造場', kana: 'えんどうしゅぞうじょう')
address_attrs = { prefecture_code: 33, city: '美作市', street_address: '福本610', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0868-74-2001', fax: '0868-74-2002', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '光露', kana: 'こうろ', company: c)


c = Company.create_or_find_by!(name: '服部本家酒造場', kana: 'はっとりほんけしゅぞうじょう')
address_attrs = { prefecture_code: 33, city: '瀬戸内市', street_address: '牛窓町牛窓3849', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0869-34-2047', fax: '0869-34-5960', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大古酒', kana: 'だいこしゅ', company: c)
Brand.find_or_create_by!(name: '折鶴', kana: 'おりづる', company: c)
Brand.find_or_create_by!(name: '有春', kana: 'ゆうしゅん', company: c)


c = Company.create_or_find_by!(name: '高祖酒造', kana: 'こうそしゅぞう')
address_attrs = { prefecture_code: 33, city: '瀬戸内市', street_address: '牛窓町牛窓4943-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0869-34-2002', fax: '0869-34-2003', website: 'http://www.kouso-senju.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千寿', kana: 'せんじゅ', company: c)


c = Company.create_or_find_by!(name: '宮下酒造', kana: 'みやしたしゅぞう')
address_attrs = { prefecture_code: 33, city: '岡山市', street_address: '西川原184', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-272-5594', fax: '086-273-9243', website: 'http://www.msb.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '極聖', kana: 'きわみひじり', company: c)


c = Company.create_or_find_by!(name: '小林本店', kana: 'こばやしほんてん')
address_attrs = { prefecture_code: 33, city: '岡山市東区', street_address: '長沼833-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-942-5561', fax: '086-943-6456', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天来', kana: 'てんらい', company: c)


c = Company.create_or_find_by!(name: '玉泉酒造', kana: 'たまいずみしゅぞう')
address_attrs = { prefecture_code: 33, city: '備前市', street_address: '東片上312', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0869-64-2008', fax: '0869-64-2039', website: 'http://www11.ocn.ne.jp/~tamano', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '備前', kana: 'びぜん', company: c)
Brand.find_or_create_by!(name: '玉泉', kana: 'たまいずみ', company: c)


c = Company.create_or_find_by!(name: '藤原酒造', kana: 'ふじわらしゅぞう')
address_attrs = { prefecture_code: 33, city: '玉野市', street_address: '八浜町八浜843', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0863-51-2014', fax: '0863-51-2676', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '亀乃井', kana: 'かめのい', company: c)


c = Company.create_or_find_by!(name: '東郷酒造', kana: 'とうごうしゅぞう')
address_attrs = { prefecture_code: 33, city: '美作市', street_address: '巨勢1686', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0868-72-1338', fax: '0868-72-1339', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東郷', kana: 'とうごう', company: c)


c = Company.create_or_find_by!(name: '田中酒造場', kana: 'たなかしゅぞうじょう')
address_attrs = { prefecture_code: 33, city: '美作市', street_address: '古町1655', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0868-78-2059', fax: '0868-78-3378', website: 'http://www.musashi-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白梅', kana: 'しらうめ', company: c)
Brand.find_or_create_by!(name: '武蔵の里', kana: 'むさしのさと', company: c)
Brand.find_or_create_by!(name: '宙狐', kana: 'ちゅうこ', company: c)


c = Company.create_or_find_by!(name: '後藤酒造', kana: 'ごとうしゅぞう')
address_attrs = { prefecture_code: 33, city: '苫田郡', street_address: '鏡野町香々美457', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0868-56-0301', fax: '0868-56-0113', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '舌鼓', kana: 'したつづみ', company: c)
Brand.find_or_create_by!(name: '藤娘', kana: 'ふじむすめ', company: c)


c = Company.create_or_find_by!(name: '牧野酒造本店', kana: 'まきのしゅぞうほんてん')
address_attrs = { prefecture_code: 33, city: '苫田郡', street_address: '鏡野町寺元425-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0868-54-3881', fax: '0868-54-3883', website: 'http://makinosyuzo.web.fc2.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '五十鈴', kana: 'いすず', company: c)


c = Company.create_or_find_by!(name: '難波酒造', kana: 'なんばしゅぞう')
address_attrs = { prefecture_code: 33, city: '津山市', street_address: '一宮436', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0868-27-0008', fax: '0868-27-0234', website: 'http://musashi-sake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '津山城', kana: 'つやまじょう', company: c)
Brand.find_or_create_by!(name: '富久迎', kana: 'ふくむかえ', company: c)
Brand.find_or_create_by!(name: '和心', kana: 'わしん', company: c)
Brand.find_or_create_by!(name: '作州武蔵', kana: 'さくしゅうむさし', company: c)


c = Company.create_or_find_by!(name: '苅田酒造エネルギー', kana: 'かんだしゅぞうえねるぎー')
address_attrs = { prefecture_code: 33, city: '津山市', street_address: '勝間田町17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0868-22-2018', fax: '0868-22-2188', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '諸白', kana: 'もろはく', company: c)


c = Company.create_or_find_by!(name: '多胡本家酒造場', kana: 'たごほんけしゅぞうじょう')
address_attrs = { prefecture_code: 33, city: '津山市', street_address: '楢69', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0868-29-1111', fax: '0868-29-1140', website: 'http://www.tsuyamabeer.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '加茂五葉', kana: 'かもいつは', company: c)


c = Company.create_or_find_by!(name: '金剛酒造', kana: 'こんごうしゅぞう')
address_attrs = { prefecture_code: 33, city: '和気郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '二人静', kana: 'ふたりしずか', company: c)
Brand.find_or_create_by!(name: '金剛', kana: 'こんごう', company: c)


c = Company.create_or_find_by!(name: '赤磐酒造', kana: 'あかいわしゅぞう')
address_attrs = { prefecture_code: 33, city: '赤磐市', street_address: '河本1113', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-955-0130', fax: '086-955-0762', website: 'http://www.akaiwa.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桃の里', kana: 'もものさと', company: c)


c = Company.create_or_find_by!(name: '室町酒造', kana: 'むろまちしゅぞう')
address_attrs = { prefecture_code: 33, city: '赤磐市', street_address: '西中1342-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-955-0029', fax: '086-955-6887', website: 'http://www.sakuramuromachi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '櫻室町', kana: 'さくらむろまち', company: c)
Brand.find_or_create_by!(name: '左近', kana: 'さこん', company: c)


c = Company.create_or_find_by!(name: '旭鶴酒造', kana: 'あさひつるしゅぞう')
address_attrs = { prefecture_code: 33, city: '久米郡', street_address: '久米南町上神目474-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '08672-2-1212', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭鶴', kana: 'あさひつる', company: c)


c = Company.create_or_find_by!(name: '森田酒造', kana: 'もりたしゅぞう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '本町8-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-422-0252', fax: '086-424-0088', website: 'http://www.moritasyuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萬年雪', kana: 'まんねんゆき', company: c)


c = Company.create_or_find_by!(name: '熊屋酒造', kana: 'くまやしゅぞう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '林705', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-485-0007', fax: '086-485-0465', website: 'https://www.facebook.com/ishichicom', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '伊七', kana: 'いしち', company: c)
Brand.find_or_create_by!(name: '庵', kana: 'あん', company: c)
Brand.find_or_create_by!(name: 'HARE', kana: 'はれ', company: c)
Brand.find_or_create_by!(name: '巴福正宗', kana: 'ともえふくまさむね', company: c)


c = Company.create_or_find_by!(name: '白神酒造', kana: 'しらがしゅぞう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '福井358', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-422-0090', fax: '086-422-3949', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '玉司', kana: 'たまつかさ', company: c)


c = Company.create_or_find_by!(name: '十八盛酒造', kana: 'じゅうはちざかりしゅぞう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '児島田の口5-6-14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-477-7125', fax: '086-477-6518', website: 'http://www.juhachi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '十八盛', kana: 'じゅうはちざかり', company: c)
Brand.find_or_create_by!(name: 'ことのわ', kana: 'ことのわ', company: c)
Brand.find_or_create_by!(name: '多賀治', kana: 'たがじ', company: c)


c = Company.create_or_find_by!(name: '三冠酒造', kana: 'さんかんしゅぞう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '児島下の町2-9-22', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-472-3010', fax: '086-473-7252', website: 'http://www.sankan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '和井田', kana: 'わいた', company: c)
Brand.find_or_create_by!(name: '三冠', kana: 'さんかん', company: c)


c = Company.create_or_find_by!(name: '大野酒造', kana: 'おおのしゅぞう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '連島町西之浦3821', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-444-8022', fax: '086-444-8048', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富志美盛', kana: 'ふしみざかり', company: c)


c = Company.create_or_find_by!(name: '遠藤酒造場', kana: 'えんどうしゅぞうじょう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '連島町西之浦2787', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-444-8005', fax: '086-444-8127', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宝富士', kana: 'たからふじ', company: c)


c = Company.create_or_find_by!(name: '渡辺酒造本店', kana: 'わたなべしゅぞうほんてん')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '連島町亀島新田170', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-444-8045', fax: '086-444-8043', website: 'http://www.minenohomare.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夢倉敷', kana: 'ゆめくらしき', company: c)
Brand.find_or_create_by!(name: '嶺乃誉', kana: 'みねのほまれ', company: c)
Brand.find_or_create_by!(name: '千歳楽', kana: 'せんざいらく', company: c)


c = Company.create_or_find_by!(name: '中田酒造', kana: 'なかたしゅぞう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '歓びの泉', kana: 'よろこびのいずみ', company: c)


c = Company.create_or_find_by!(name: '三千鶴酒造', kana: 'みちつるしゅぞう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '三千鶴', kana: 'みちつる', company: c)


c = Company.create_or_find_by!(name: '菊池酒造', kana: 'きくちしゅぞう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '玉島阿賀崎1212', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-522-5145', fax: '086-522-5146', website: 'http://www.kikuchishuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '燦然', kana: 'さんぜん', company: c)


c = Company.create_or_find_by!(name: '不二菊酒造本店', kana: 'ふじぎくしゅぞうほんてん')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '玉島黒崎8757-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-528-1052', fax: '086-528-0656', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '不二菊', kana: 'ふじぎく', company: c)


c = Company.create_or_find_by!(name: '酔宝酒造', kana: 'すいほうしゅぞう')
address_attrs = { prefecture_code: 33, city: '倉敷市', street_address: '玉島黒崎7985', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '086-528-1111', fax: '086-528-1112', website: 'http://www.optic.or.jp/com/suiho/suiho.html', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔寶', kana: 'すいほう', company: c)


c = Company.create_or_find_by!(name: '大内酒造場', kana: 'おおうちしゅぞうじょう')
address_attrs = { prefecture_code: 33, city: '笠岡市', street_address: '西大島7496', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0865-67-0828', fax: '0865-67-0678', website: 'http://homepage1.nifty.com/ohuchi', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御嶽鶴', kana: 'みたけつる', company: c)


c = Company.create_or_find_by!(name: '嘉美心酒造', kana: 'かみこころしゅぞう')
address_attrs = { prefecture_code: 33, city: '浅口市', street_address: '寄島町7500-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0865-54-3101', fax: '0865-54-3105', website: 'https://kamikokoro.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '真夏の果実', kana: 'まなつのかじつ', company: c)
Brand.find_or_create_by!(name: '神心', kana: 'かみこころ', company: c)
Brand.find_or_create_by!(name: '備中流', kana: 'びっちゅうりゅう', company: c)
Brand.find_or_create_by!(name: 'しゅわしゅわ', kana: 'しゅわしゅわ', company: c)
Brand.find_or_create_by!(name: '嘉美心', kana: 'かみこころ', company: c)
Brand.find_or_create_by!(name: '冬の月', kana: 'ふゆのつき', company: c)


c = Company.create_or_find_by!(name: '山成酒造', kana: 'やまなりしゅぞう')
address_attrs = { prefecture_code: 33, city: '井原市', street_address: '芳井町簗瀬23', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0866-72-0001', fax: '0866-72-0010', website: 'http://yamanari.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蘭の誉', kana: 'らんのほまれ', company: c)


c = Company.create_or_find_by!(name: '瀧本酒造', kana: 'たきもとしゅぞう')
address_attrs = { prefecture_code: 33, city: '井原市', street_address: '井原町1050-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0866-62-0026', fax: '0866-62-0126', website: 'http://www.瀧本酒造.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '一品', kana: 'いっぴん', company: c)


c = Company.create_or_find_by!(name: '白菊酒造', kana: 'しらぎくしゅぞう')
address_attrs = { prefecture_code: 33, city: '高梁市', street_address: '成羽町下日名163-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0866-42-3132', fax: '0866-42-2165', website: 'https://www.shiragiku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大典白菊', kana: 'たいてんしらぎく', company: c)
Brand.find_or_create_by!(name: '備州', kana: 'びしゅう', company: c)


c = Company.create_or_find_by!(name: '赤木酒造', kana: 'あかぎしゅぞう')
address_attrs = { prefecture_code: 33, city: '高梁市', street_address: '備中町長屋43', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0866-45-3006', fax: '0866-45-3789', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蘭亭曲水', kana: 'らんていきょくすい', company: c)


c = Company.create_or_find_by!(name: '小出酒造', kana: 'こいでしゅぞう')
address_attrs = { prefecture_code: 33, city: '加賀郡', street_address: '吉備中央町納地111-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0866-54-1436', fax: '0866-54-0436', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '高雪', kana: 'たかゆき', company: c)


c = Company.create_or_find_by!(name: '芳烈酒造', kana: 'ほうれつしゅぞう')
address_attrs = { prefecture_code: 33, city: '高梁市', street_address: '有漢町有漢2535-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0866-57-2003', fax: '0866-57-2003', website: 'http://www.houretu.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '櫻芳烈', kana: 'おうほうれつ', company: c)


c = Company.create_or_find_by!(name: '落酒造場', kana: 'おちしゅぞうじょう')
address_attrs = { prefecture_code: 33, city: '真庭市', street_address: '下呰部664-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0866-52-2311', fax: '0866-52-4495', website: 'http://taishonotsuru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '落花流水', kana: 'らっかりゅうすい', company: c)
Brand.find_or_create_by!(name: '大正の鶴', kana: 'たいしょうのつる', company: c)


c = Company.create_or_find_by!(name: '辻本店', kana: 'つじほんてん')
address_attrs = { prefecture_code: 33, city: '真庭市', street_address: '勝山116', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0867-44-3155', fax: '0867-44-5290', website: 'https://www.gozenshu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '炭屋彌兵衛', kana: 'すみややへい', company: c)
Brand.find_or_create_by!(name: '御前酒', kana: 'ごぜんしゅ', company: c)


c = Company.create_or_find_by!(name: '大美酒造', kana: 'おおみしゅぞう')
address_attrs = { prefecture_code: 33, city: '真庭市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '美保鶴', kana: 'みほつる', company: c)


c = Company.create_or_find_by!(name: '神露酒造', kana: 'しんろしゅぞう')
address_attrs = { prefecture_code: 33, city: '浅口市', street_address: '金光町大谷227', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0865-42-2015', fax: '0865-42-5983', website: 'http://www.sinro.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神露', kana: 'しんろ', company: c)


c = Company.create_or_find_by!(name: '丸本酒造', kana: 'まるもとしゅぞう')
address_attrs = { prefecture_code: 33, city: '浅口市', street_address: '鴨方町本庄2485', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0865-44-3155', fax: '0865-44-3156', website: 'http://kamomidori.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '泡々酒', kana: 'ほうほうしゅ', company: c)
Brand.find_or_create_by!(name: '竹林', kana: 'ちくりん', company: c)
Brand.find_or_create_by!(name: 'かもみどり', kana: 'かもみどり', company: c)
Brand.find_or_create_by!(name: 'EARTH SCIENCE', kana: 'アース サイエンス', company: c)


c = Company.create_or_find_by!(name: '平喜酒造', kana: 'ひらきしゅぞう')
address_attrs = { prefecture_code: 33, city: '浅口市', street_address: '鴨方町鴨方1283', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0865-44-2122', fax: '0865-44-2863', website: 'http://www.hirakishuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鯨正宗', kana: 'くじらまさむね', company: c)
Brand.find_or_create_by!(name: '喜平', kana: 'きへい', company: c)
Brand.find_or_create_by!(name: '将軍', kana: 'しょうぐん', company: c)
Brand.find_or_create_by!(name: '新婚', kana: 'しんこん', company: c)
Brand.find_or_create_by!(name: '正義櫻', kana: 'せいぎざくら', company: c)


c = Company.create_or_find_by!(name: '藤田酒造', kana: 'ふじたしゅぞう')
address_attrs = { prefecture_code: 33, city: '浅口市', street_address: '鴨方町鴨方152-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0865-44-2016', fax: '0865-44-9868', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金光賀眞', kana: 'こんこうかしん', company: c)


c = Company.create_or_find_by!(name: '磯千鳥酒造', kana: 'いそちどりしゅぞう')
address_attrs = { prefecture_code: 33, city: '浅口郡', street_address: '里庄町新庄306', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0865-64-3456', fax: '0865-64-4336', website: 'http://www.isochidori.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '磯千鳥', kana: 'いそちどり', company: c)


c = Company.create_or_find_by!(name: '松永酒造', kana: 'まつながしゅぞう')
address_attrs = { prefecture_code: 33, city: '総社市', street_address: '真壁541', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0866-92-0174', fax: '020-4665-5416', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '常磐鶴', kana: 'ときわつる', company: c)
Brand.find_or_create_by!(name: '吉備路', kana: 'きびじ', company: c)
Brand.find_or_create_by!(name: 'かみよ 赤米の酒', kana: 'かみよ あかまいのさけ', company: c)


c = Company.create_or_find_by!(name: '三宅酒造', kana: 'みやけしゅぞう')
address_attrs = { prefecture_code: 33, city: '総社市', street_address: '宿355', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0866-92-0075', fax: '0866-92-0075', website: 'http://suifu-miyake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '粹府', kana: 'すいふ', company: c)


c = Company.create_or_find_by!(name: 'ヨイキゲン', kana: 'よいきげん')
address_attrs = { prefecture_code: 33, city: '総社市', street_address: '清音上中島372-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0866-94-0011', fax: '0866-94-4052', website: 'http://www.yoikigen.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'れんげの舞い', kana: 'れんげのまい', company: c)
Brand.find_or_create_by!(name: '酔機嫌', kana: 'よいきげん', company: c)
Brand.find_or_create_by!(name: '碧天', kana: 'へきてん', company: c)


c = Company.create_or_find_by!(name: '三光正宗', kana: 'さんこうまさむね')
address_attrs = { prefecture_code: 33, city: '新見市', street_address: '哲西町上神代951', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0867-94-3131', fax: '0867-94-3200', website: 'http://www.sake-sanko.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蛇形', kana: 'じゃがた', company: c)
Brand.find_or_create_by!(name: '三光洸雲', kana: 'さんこうこううん', company: c)
Brand.find_or_create_by!(name: '三光天賦', kana: 'さんこうてんぷ', company: c)
Brand.find_or_create_by!(name: '三光正宗', kana: 'さんこうまさむね', company: c)
Brand.find_or_create_by!(name: '克正', kana: 'かつまさ', company: c)
