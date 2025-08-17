c = Company.in_prefecture(13).find_or_create_by!(name: '東京駅酒造場 - TOKYO STATION SAKE BREWERY', kana: 'とうきょうえきしゅぞうじょう')
address_attrs = { prefecture_code: 13, city: '千代田区', street_address: '丸の内1-9-1　JR東日本 東京駅構内B1 はせがわ酒店 グランスタ 東京店', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
Brand.find_or_create_by!(name: '桃どぶろく', kana: 'ももどぶろく', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '東京港醸造', kana: 'とうきょうこうじょうぞう')
address_attrs = { prefecture_code: 13, city: '港区', street_address: '芝4-7-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '03-3451-2626', fax: '03-3451-2626', website: 'http://tokyoportbrewery.wkmty.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東京', kana: 'とうきょう', company: c)
Brand.find_or_create_by!(name: 'Tokyo Mead', kana: 'とうきょうみーど', company: c)
Brand.find_or_create_by!(name: '江戸開城', kana: 'えどかいじょう', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '木花之醸造所', kana: 'このはなのじょうぞうしょ')
address_attrs = { prefecture_code: 13, city: '台東区', street_address: '駒形2-5-5　小宮ビル B1F', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '03-5811-1905', website: 'https://konohanano-brewery.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ハナグモリ', kana: 'はなぐもり', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '野口酒造店', kana: 'のぐちしゅぞうてん')
address_attrs = { prefecture_code: 13, city: '府中市', street_address: '寿町2-4-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-362-2117', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '国府鶴', kana: 'こうづる', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '豊島屋酒造', kana: 'としまやしゅぞう')
address_attrs = { prefecture_code: 13, city: '東村山市', street_address: '久米川町3-14-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-391-0601', fax: '042-391-1983', website: 'http://www.toshimayasyuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東村山', kana: 'ひがしむらやま', company: c)
Brand.find_or_create_by!(name: '金婚', kana: 'きんこん', company: c)
Brand.find_or_create_by!(name: '利他', kana: 'りた', company: c)
Brand.find_or_create_by!(name: '二重橋', kana: 'にじゅうばし', company: c)
Brand.find_or_create_by!(name: '屋守', kana: 'おくのかみ', company: c)
Brand.find_or_create_by!(name: '羽田', kana: 'はねだ', company: c)
Brand.find_or_create_by!(name: '十右衛門', kana: 'じゅうえもん', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '野崎酒造', kana: 'のざきしゅぞう')
address_attrs = { prefecture_code: 13, city: 'あきる野市', street_address: '戸倉63', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-596-0123', fax: '042-596-5229', website: 'http://www.kisho-sake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '喜正', kana: 'きしょう', company: c)
Brand.find_or_create_by!(name: 'しろやま桜', kana: 'しろやまざくら', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '小澤酒造場', kana: 'おざわしゅぞうじょう')
address_attrs = { prefecture_code: 13, city: '八王子市', street_address: '八木町2-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-624-1201', fax: '042-623-0274', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八王子城', kana: 'はちおうじじょう', company: c)
Brand.find_or_create_by!(name: '桑乃都', kana: 'くわのみやこ', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '中島酒造場', kana: 'なかじましゅぞうじょう')
address_attrs = { prefecture_code: 13, city: '八王子市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '陣馬山', kana: 'じんばさん', company: c)
Brand.find_or_create_by!(name: '日出山', kana: 'ひのでやま', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '石川酒造', kana: 'いしかわしゅぞう')
address_attrs = { prefecture_code: 13, city: '福生市', street_address: '熊川1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-553-0100', fax: '042-553-2017', website: 'https://tamajiman.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'たまの八重桜', kana: 'やえさくら', company: c)
Brand.find_or_create_by!(name: 'りんご酸の爽やか風味', kana: 'りんごさんのさわやかふうみ', company: c)
Brand.find_or_create_by!(name: '多満自慢', kana: 'たまじまん', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '田村酒造場', kana: 'たむらしゅぞうじょう')
address_attrs = { prefecture_code: 13, city: '福生市', street_address: '福生626', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-551-0003', fax: '042-553-6021', website: 'http://www.seishu-kasen.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '嘉泉', kana: 'かせん', company: c)
Brand.find_or_create_by!(name: '田むら', kana: 'たむら', company: c)
Brand.find_or_create_by!(name: '風雲剣鬼伝 厳流小次郎', kana: 'がんりゅうこじろう', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '中村酒造', kana: 'なかむらしゅぞう')
address_attrs = { prefecture_code: 13, city: 'あきる野市', street_address: '牛沼63', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-558-0516', fax: '042-558-2010', website: 'https://www.chiyotsuru.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千代鶴', kana: 'ちよつる', company: c)
Brand.find_or_create_by!(name: '高尾山', kana: 'たかおさん', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '小澤酒造', kana: 'おざわしゅぞう')
address_attrs = { prefecture_code: 13, city: '青梅市', street_address: '沢井2-770', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0428-78-8215', fax: '0428-78-8195', website: 'http://www.sawanoi-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '澤乃井', kana: 'さわのい', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '土屋酒造', kana: 'つちやしゅぞう')
address_attrs = { prefecture_code: 13, city: '狛江市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: 'とうきょう地酒', kana: 'とうきょうじざけ', company: c)
Brand.find_or_create_by!(name: '鳳桜', kana: 'おおとりざくら', company: c)


c = Company.in_prefecture(13).find_or_create_by!(name: '渡辺酒造', kana: 'わたなべしゅぞう')
address_attrs = { prefecture_code: 13, city: '武蔵村山市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '吟雪', kana: 'ぎんせつ', company: c)
