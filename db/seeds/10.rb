c = Company.create_or_find_by!(name: '山崎酒造', kana: 'やまざきしゅぞう')
address_attrs = { prefecture_code: 10, city: '太田市', street_address: '新田木崎町966', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0276-56-1241', fax: '0276-56-3360', website: 'http://www.yamazaki-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日本譽', kana: 'にほんほまれ', company: c)
Brand.find_or_create_by!(name: '誠の心', kana: 'まことのこころ', company: c)
Brand.find_or_create_by!(name: '太平記の里', kana: 'たいへいきのさと', company: c)


c = Company.create_or_find_by!(name: '山川酒造', kana: 'やまかわしゅぞう')
address_attrs = { prefecture_code: 10, city: '邑楽郡', street_address: '千代田町赤岩185-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0276-86-2182', fax: '0276-86-2182', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '光東', kana: 'こうとう', company: c)
Brand.find_or_create_by!(name: '利根川育ち', kana: 'とねがわそだち', company: c)


c = Company.create_or_find_by!(name: '岡村合名', kana: 'おかむらごうめい')
address_attrs = { prefecture_code: 10, city: '高崎市', street_address: '台町5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '027-322-4137', fax: '027-322-4137', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '泉末広', kana: 'いずみすえひろ', company: c)
Brand.find_or_create_by!(name: '観音桜', kana: 'かんのんさくら', company: c)


c = Company.create_or_find_by!(name: '美峰酒類', kana: 'みほうしゅるい')
address_attrs = { prefecture_code: 10, city: '高崎市', street_address: '歌川町1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '027-322-2155', fax: '027-322-0084', website: 'http://www.mihoshurui.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '朝日桜', kana: 'あさひざくら', company: c)
Brand.find_or_create_by!(name: '蔵自慢', kana: 'くらじまん', company: c)


c = Company.create_or_find_by!(name: '町田酒造店', kana: 'まちだしゅぞうてん')
address_attrs = { prefecture_code: 10, city: '佐波郡', street_address: '玉村町下新田619', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0270-65-2050', fax: '0270-65-2886', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '太平人', kana: 'たいへいじん', company: c)


c = Company.create_or_find_by!(name: '井田酒造', kana: 'いだしゅぞう')
address_attrs = { prefecture_code: 10, city: '佐波郡', street_address: '玉村町上新田1626', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0270-65-2007', fax: '0270-65-8106', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ふじ泉', kana: 'ふじいずみ', company: c)


c = Company.create_or_find_by!(name: '藤﨑摠兵衛商店 鬼石支店', kana: 'ふじさきそうべえしょうてん おにししてん')
address_attrs = { prefecture_code: 10, city: '藤岡市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '鬼面山', kana: 'きめんざん', company: c)
Brand.find_or_create_by!(name: '寒桜', kana: 'かんざくら', company: c)


c = Company.create_or_find_by!(name: '聖徳銘醸', kana: 'せいとくめいじょう')
address_attrs = { prefecture_code: 10, city: '甘楽郡', street_address: '甘楽町白倉686-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0274-74-4111', fax: '0274-74-6325', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '妙義山', kana: 'みょうぎさん', company: c)
Brand.find_or_create_by!(name: '蔵群', kana: 'くらむれ', company: c)
Brand.find_or_create_by!(name: '城下町小幡', kana: 'じょうかまちおばた', company: c)
Brand.find_or_create_by!(name: '聖徳', kana: 'せいとく', company: c)


c = Company.create_or_find_by!(name: '牧野酒造', kana: 'まきのしゅぞう')
address_attrs = { prefecture_code: 10, city: '高崎市', street_address: '倉渕町権田2625-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '027-378-2011', fax: '027-378-3954', website: 'https://www.makino-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大盃', kana: 'おおさかずき', company: c)
Brand.find_or_create_by!(name: '榛名山', kana: 'はるなさん', company: c)
Brand.find_or_create_by!(name: '夢二ものがたり', kana: 'ゆめじものがたり', company: c)
Brand.find_or_create_by!(name: '高崎', kana: 'たかさき', company: c)
Brand.find_or_create_by!(name: '馥露酣', kana: 'ふくろかん', company: c)


c = Company.create_or_find_by!(name: '柴崎酒造', kana: 'しばさきしゅぞう')
address_attrs = { prefecture_code: 10, city: '北群馬郡', street_address: '吉岡町下野田649-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0279-55-1141', fax: '0279-54-0601', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '船尾瀧', kana: 'ふなおたき', company: c)


c = Company.create_or_find_by!(name: '伴内酒造店', kana: 'ばんないしゅぞうてん')
address_attrs = { prefecture_code: 10, city: '前橋市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '聖人', kana: 'せいじん', company: c)


c = Company.create_or_find_by!(name: '柳澤酒造', kana: 'やなぎさわしゅぞう')
address_attrs = { prefecture_code: 10, city: '前橋市', street_address: '粕川町深津104-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '027-285-2005', fax: '027-285-5558', website: 'http://www.katsuragawa-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勝楽雅和', kana: 'かつらがわ', company: c)
Brand.find_or_create_by!(name: '絶滅危惧酒', kana: 'ぜつめつきぐしゅ', company: c)
Brand.find_or_create_by!(name: '結人', kana: 'むすびと', company: c)
Brand.find_or_create_by!(name: '桂川', kana: 'かつらがわ', company: c)


c = Company.create_or_find_by!(name: '七ツ星醸造', kana: 'ななつぼしじょうぞう')
address_attrs = { prefecture_code: 10, city: '前橋市', street_address: '大胡町12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '027-283-2011', fax: '027-283-1273', website: 'http://www.kiminomatsu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '暴れ獅子', kana: 'あばれじし', company: c)
Brand.find_or_create_by!(name: '君乃松', kana: 'きみのまつ', company: c)


c = Company.create_or_find_by!(name: '太刀川酒造', kana: 'たちかわしゅぞう')
address_attrs = { prefecture_code: 10, city: '太田市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '利根鶴', kana: 'とねつる', company: c)


c = Company.create_or_find_by!(name: '島岡酒造', kana: 'しまおかしゅぞう')
address_attrs = { prefecture_code: 10, city: '太田市', street_address: '由良町375-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0276-31-2432', fax: '0276-31-7715', website: 'https://shimaokasyuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '群馬泉', kana: 'ぐんまいずみ', company: c)


c = Company.create_or_find_by!(name: '今井酒造店', kana: 'いまいしゅぞうてん')
address_attrs = { prefecture_code: 10, city: '太田市', street_address: '鳥山中町746-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0276-22-2680', fax: '0276-22-2687', website: 'http://www.nihonsyu.org', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'むつらぼし', kana: 'むつらぼし', company: c)
Brand.find_or_create_by!(name: '神龍', kana: 'しんりゅう', company: c)
Brand.find_or_create_by!(name: '風まかせ', kana: 'かぜまかせ', company: c)
Brand.find_or_create_by!(name: '新田山', kana: 'にいたやま', company: c)


c = Company.create_or_find_by!(name: '分福酒造', kana: 'ぶんぶくしゅぞう')
address_attrs = { prefecture_code: 10, city: '館林市', street_address: '仲町3-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0276-72-0017', fax: '0276-75-1977', website: 'http://www.bunbuku.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '男一心', kana: 'おとこいっしん', company: c)
Brand.find_or_create_by!(name: '分福', kana: 'ぶんぶく', company: c)


c = Company.create_or_find_by!(name: '龍神酒造', kana: 'りゅうじんしゅぞう')
address_attrs = { prefecture_code: 10, city: '館林市', street_address: '西本町7-13', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0276-72-3711', fax: '0276-72-3968', website: 'http://www.ryujin.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '尾瀬の雪どけ', kana: 'おぜのゆきどけ', company: c)
Brand.find_or_create_by!(name: '龍神', kana: 'りゅうじん', company: c)


c = Company.create_or_find_by!(name: '清水屋酒造', kana: 'しみずやしゅぞう')
address_attrs = { prefecture_code: 10, city: '館林市', street_address: '台宿町3-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0276-74-0269', fax: '0276-74-1303', website: 'https://sakaemasu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'KIYOMIZU', kana: 'きよみず', company: c)
Brand.find_or_create_by!(name: '榮万寿', kana: 'さかえます', company: c)


c = Company.create_or_find_by!(name: '松屋酒造', kana: 'まつやしゅぞう')
address_attrs = { prefecture_code: 10, city: '藤岡市', street_address: '藤岡180', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0274-22-0022', fax: '0274-24-0544', website: 'https://www.tousenkura.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '當選', kana: 'とうせん', company: c)
Brand.find_or_create_by!(name: '平井城', kana: 'ひらいじょう', company: c)
Brand.find_or_create_by!(name: 'ねむり酒', kana: 'ねむりざけ', company: c)
Brand.find_or_create_by!(name: '流輝', kana: 'るか', company: c)


c = Company.create_or_find_by!(name: '田島酒造店', kana: 'たじましゅぞうてん')
address_attrs = { prefecture_code: 10, city: '藤岡市', street_address: '神田899', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0274-22-0808', fax: '0274-23-0251', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三波石', kana: 'さんばせき', company: c)


c = Company.create_or_find_by!(name: '高井', kana: 'たかい')
address_attrs = { prefecture_code: 10, city: '藤岡市', street_address: '鮎川138', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0274-24-0011', fax: '0274-24-3118', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '巌', kana: 'いわお', company: c)
Brand.find_or_create_by!(name: '上州の寒梅', kana: 'じょうしゅうのかんばい', company: c)
Brand.find_or_create_by!(name: '十代目作右衛門', kana: 'じゅうだいめさくえもん', company: c)


c = Company.create_or_find_by!(name: '奥村酒造', kana: 'おくむらしゅぞう')
address_attrs = { prefecture_code: 10, city: 'みどり市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '福榮', kana: 'ふくえい', company: c)
Brand.find_or_create_by!(name: '上州っ子', kana: 'じょうしゅうっこ', company: c)
Brand.find_or_create_by!(name: '起龍', kana: 'きりゅう', company: c)


c = Company.create_or_find_by!(name: '近藤酒造', kana: 'こんどうしゅぞう')
address_attrs = { prefecture_code: 10, city: 'みどり市', street_address: '大間々町大間々1002', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0277-72-2221', fax: '0277-73-1603', website: 'http://www.akagisan.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '赤城山', kana: 'あかぎさん', company: c)


c = Company.create_or_find_by!(name: '聖酒造', kana: 'ひじりしゅぞう')
address_attrs = { prefecture_code: 10, city: '渋川市', street_address: '北橘町下箱田380', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0279-52-3911', fax: '0279-52-3900', website: 'http://www.hijiri-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '木曽川', kana: 'きそがわ', company: c)
Brand.find_or_create_by!(name: '関東の華', kana: 'かんとうのはな', company: c)
Brand.find_or_create_by!(name: '駒正宗', kana: 'こままさむね', company: c)
Brand.find_or_create_by!(name: '聖', kana: 'ひじり', company: c)
Brand.find_or_create_by!(name: 'からっ風', kana: 'からっかぜ', company: c)
Brand.find_or_create_by!(name: '入駒', kana: 'いりこま', company: c)
Brand.find_or_create_by!(name: '酒屋 傳兵衛', kana: 'さかや でんべえ', company: c)


c = Company.create_or_find_by!(name: '貴娘酒造', kana: 'きむすめしゅぞう')
address_attrs = { prefecture_code: 10, city: '吾妻郡', street_address: '中之条町大塚1768-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0279-75-3146', fax: '0279-75-3144', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '風の詩', kana: 'かぜのうた', company: c)
Brand.find_or_create_by!(name: '貴娘', kana: 'きむすめ', company: c)
Brand.find_or_create_by!(name: '牧水の詩', kana: 'ぼくすいのうた', company: c)
Brand.find_or_create_by!(name: '咲耶美', kana: 'さくやび', company: c)


c = Company.create_or_find_by!(name: '浅間酒造', kana: 'あさましゅぞう')
address_attrs = { prefecture_code: 10, city: '吾妻郡', street_address: '長野原町長野原30-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0279-82-2045', fax: '0279-82-3722', website: 'https://asama-sakagura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '草津節', kana: 'くさつぶし', company: c)
Brand.find_or_create_by!(name: '浅間山', kana: 'あさまやま', company: c)
Brand.find_or_create_by!(name: '秘幻', kana: 'ひげん', company: c)
Brand.find_or_create_by!(name: 'つま恋美人', kana: 'つまごいびじん', company: c)


c = Company.create_or_find_by!(name: '永井本家', kana: 'ながいほんけ')
address_attrs = { prefecture_code: 10, city: '沼田市', street_address: '下発知町703', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0278-23-9118', fax: '0278-23-9437', website: 'http://www.nagaihonke.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '尾瀬のあわ雪', kana: 'おぜのあわゆき', company: c)
Brand.find_or_create_by!(name: '利根錦', kana: 'とねにしき', company: c)


c = Company.create_or_find_by!(name: '土田酒造', kana: 'つちだしゅぞう')
address_attrs = { prefecture_code: 10, city: '利根郡', street_address: '川場村川場湯原2691', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0278-52-3511', fax: '0278-52-3513', website: 'https://tsuchidasake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '誉国光', kana: 'ほまれこっこう', company: c)
Brand.find_or_create_by!(name: '土田', kana: 'つちだ', company: c)


c = Company.create_or_find_by!(name: '永井酒造', kana: 'ながいしゅぞう')
address_attrs = { prefecture_code: 10, city: '利根郡', street_address: '川場村門前713', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0278-52-2311', fax: '0278-52-2314', website: 'http://www.nagai-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '水芭蕉', kana: 'みずばしょう', company: c)
Brand.find_or_create_by!(name: '谷川岳', kana: 'たにがわだけ', company: c)


c = Company.create_or_find_by!(name: '大利根酒造', kana: 'おおとねしゅぞう')
address_attrs = { prefecture_code: 10, city: '沼田市', street_address: '白沢町高平1306-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0278-53-2334', fax: '0278-53-2335', website: 'http://www.sadaijin.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花一匁', kana: 'はないちもんめ', company: c)
Brand.find_or_create_by!(name: '沼田城', kana: 'ぬまたじょう', company: c)
Brand.find_or_create_by!(name: '左大臣', kana: 'さだいじん', company: c)


c = Company.create_or_find_by!(name: '森本酒造', kana: 'もりもとしゅぞう')
address_attrs = { prefecture_code: 10, city: '前橋市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '赤城の寒梅', kana: 'あかぎのかんばい', company: c)
Brand.find_or_create_by!(name: '黒松正泉', kana: 'くろまつまさいずみ', company: c)
Brand.find_or_create_by!(name: '自然酒', kana: 'しぜんしゅ', company: c)


c = Company.create_or_find_by!(name: '町田酒造店', kana: 'まちだしゅぞうてん')
address_attrs = { prefecture_code: 10, city: '前橋市', street_address: '駒形町65', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '027-266-0052', fax: '027-266-0779', website: 'https://www.seiryo-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '清嘹', kana: 'せいりょう', company: c)
Brand.find_or_create_by!(name: '町田酒造', kana: 'まちだしゅぞう', company: c)
