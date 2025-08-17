c = Company.in_prefecture(21).find_or_create_by!(name: '足立酒造', kana: 'あだちしゅぞう')
address_attrs = { prefecture_code: 21, city: '岐阜市', street_address: '琴塚3-21-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '058-245-3658', fax: '058-246-7093', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金華山', kana: 'きんかざん', company: c)
Brand.find_or_create_by!(name: '日の出鶴', kana: 'ひのでつる', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '日本泉酒造', kana: 'にほんいずみしゅぞう')
address_attrs = { prefecture_code: 21, city: '岐阜市', street_address: '加納清水町3-8-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '058-271-3218', fax: '058-271-3209', website: 'http://www.nihonizumi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '織田信長', kana: 'おだのぶなが', company: c)
Brand.find_or_create_by!(name: '濃姫', kana: 'のうひめ', company: c)
Brand.find_or_create_by!(name: '日本泉', kana: 'にほんいずみ', company: c)
Brand.find_or_create_by!(name: '豊臣秀吉', kana: 'とよとみひでよし', company: c)
Brand.find_or_create_by!(name: '撫瓜', kana: 'なでか', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '柴田酒造', kana: 'しばたしゅぞう')
address_attrs = { prefecture_code: 21, city: '本巣郡', street_address: '北方町　北方1512', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '058-324-0028', fax: '058-323-0028', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '根尾泉', kana: 'ねおいずみ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '杉原酒造', kana: 'すぎはらしゅぞう')
address_attrs = { prefecture_code: 21, city: '揖斐郡', street_address: '大野町下磯1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0585-35-2508', fax: '0585-35-2176', website: 'http://www.sugiharasake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千代乃花', kana: 'ちよのはな', company: c)
Brand.find_or_create_by!(name: '射美', kana: 'いび', company: c)
Brand.find_or_create_by!(name: '揖斐川', kana: 'いびがわ', company: c)
Brand.find_or_create_by!(name: '杉乃井', kana: 'すぎのい', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '所酒造', kana: 'ところしゅぞう')
address_attrs = { prefecture_code: 21, city: '揖斐郡', street_address: '揖斐川町三輪537-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0585-22-0002', fax: '0585-22-0679', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '房島屋', kana: 'ぼうじまや', company: c)
Brand.find_or_create_by!(name: '揖斐の蔵', kana: 'いびのくら', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '池田屋酒造', kana: 'いけだやしゅぞう')
address_attrs = { prefecture_code: 21, city: '揖斐郡', street_address: '揖斐川町三輪612-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0585-22-0016', fax: '0585-22-0101', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富久若松', kana: 'ふくわかまつ', company: c)
Brand.find_or_create_by!(name: '甕口', kana: 'かめぐち', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '白木恒助商店', kana: 'しらきつねすけしょうてん')
address_attrs = { prefecture_code: 21, city: '岐阜市', street_address: '門屋門61', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '058-229-1008', fax: '058-229-1010', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '淡墨桜', kana: 'うすずみざくら', company: c)
Brand.find_or_create_by!(name: '達磨正宗', kana: 'だるままさむね', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '松井屋酒造場', kana: 'まついやしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '加茂郡', street_address: '富加町加治田688-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0574-54-3111', fax: '0574-54-3111', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '睦鳥', kana: 'むつみどり', company: c)
Brand.find_or_create_by!(name: '加治田城', kana: 'かじたじょう', company: c)
Brand.find_or_create_by!(name: '半布里戸籍', kana: 'はぶりこせき', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '小坂酒造場', kana: 'こさかしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '美濃市', street_address: '相生町2267', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0575-33-0682', fax: '0575-35-1365', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '百春', kana: 'ひゃくしゅん', company: c)
Brand.find_or_create_by!(name: 'さんやほう', kana: 'さんやほう', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '平野本店', kana: 'ひらのほんてん')
address_attrs = { prefecture_code: 21, city: '郡上市', street_address: '八幡町本町865-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0575-65-2155', fax: '0575-65-2100', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '積翠', kana: 'せきすい', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '平野醸造', kana: 'ひらのじょうぞう')
address_attrs = { prefecture_code: 21, city: '郡上市', street_address: '大和町徳永164', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0575-88-2006', fax: '0575-88-2051', website: 'http://www.bojo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '一豊の妻', kana: 'かずとよのつま', company: c)
Brand.find_or_create_by!(name: '母情', kana: 'ぼじょう', company: c)
Brand.find_or_create_by!(name: '郡上一揆', kana: 'ぐじょういっき', company: c)
Brand.find_or_create_by!(name: '郡上おどり', kana: 'ぐじょうおどり', company: c)
Brand.find_or_create_by!(name: '八竹', kana: 'やっちく', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '原酒造場', kana: 'はらしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '郡上市', street_address: '白鳥町白鳥991', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0575-82-2021', fax: '0575-82-6233', website: 'http://genbun.sakura.ne.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '元文', kana: 'げんぶん', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '久納酒造', kana: 'くのしゅぞう')
address_attrs = { prefecture_code: 21, city: '羽島郡', street_address: '笠松町下本町59', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '058-387-3034', fax: '058-387-6943', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美笠万代', kana: 'みかさばんだい', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '千代菊', kana: 'ちよぎく')
address_attrs = { prefecture_code: 21, city: '羽島市', street_address: '竹鼻町2733', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '058-391-3131', fax: '058-391-5022', website: 'http://www.chiyogiku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '光琳', kana: 'こうりん', company: c)
Brand.find_or_create_by!(name: '千代菊', kana: 'ちよぎく', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '林彰一郎商店', kana: 'はやししょういちろうしょうてん')
address_attrs = { prefecture_code: 21, city: '羽島市', street_address: '上中町沖1493', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '058-398-4141', fax: '058-398-4142', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '泉松竹', kana: 'いずみしょうちく', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '渡辺酒造醸', kana: 'わたなべしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '大垣市', street_address: '林町8-1126', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0584-78-2848', fax: '0584-78-5790', website: 'http://www.minonishiki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '覚眠森水酒', kana: 'かくみんしんすいしゅ', company: c)
Brand.find_or_create_by!(name: '美濃錦', kana: 'みのにしき', company: c)
Brand.find_or_create_by!(name: '白雪姫', kana: 'しらゆきひめ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '吉田合資', kana: 'よしだごうし')
address_attrs = { prefecture_code: 21, city: '安八郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '大輪', kana: 'たいりん', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '武内酒造', kana: 'たけうちしゅぞう')
address_attrs = { prefecture_code: 21, city: '大垣市', street_address: '伝馬町1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0584-81-3311', fax: '0584-81-3364', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御幸鶴', kana: 'みゆきつる', company: c)
Brand.find_or_create_by!(name: '一滴千山', kana: 'いってきせんざん', company: c)
Brand.find_or_create_by!(name: '平成菊', kana: 'へいせいぎく', company: c)
Brand.find_or_create_by!(name: '大輪', kana: 'たいりん', company: c)
Brand.find_or_create_by!(name: '兄花', kana: 'このはな', company: c)
Brand.find_or_create_by!(name: '美濃紅梅', kana: 'みのこうばい', company: c)
Brand.find_or_create_by!(name: '大垣城', kana: 'おおがきじょう', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '三輪酒造', kana: 'みわしゅぞう')
address_attrs = { prefecture_code: 21, city: '大垣市', street_address: '船町4-48', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0584-78-2201', fax: '0584-81-2065', website: 'http://www.miwashuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白川郷', kana: 'しらかわごう', company: c)
Brand.find_or_create_by!(name: 'バロン鉄心', kana: 'ばろんてっしん', company: c)
Brand.find_or_create_by!(name: '道三吟雪花', kana: 'どうさんぎんせっか', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '玉泉堂酒造', kana: 'ぎょくせんどうしゅぞう')
address_attrs = { prefecture_code: 21, city: '養老郡', street_address: '養老町高田800-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0584-32-1155', fax: '0584-32-2190', website: 'https://www.minogiku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'なぶら', kana: 'なぶら', company: c)
Brand.find_or_create_by!(name: '醴泉', kana: 'れいせん', company: c)
Brand.find_or_create_by!(name: '瀧津瀬', kana: 'たきつせ', company: c)
Brand.find_or_create_by!(name: '無風', kana: 'むかで', company: c)
Brand.find_or_create_by!(name: '伊吹山 鬼ころし', kana: 'いぶきやま おにころし', company: c)
Brand.find_or_create_by!(name: '美濃菊', kana: 'みのぎく', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '大塚酒造', kana: 'おおつかしゅぞう')
address_attrs = { prefecture_code: 21, city: '揖斐郡', street_address: '池田町池野422', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0585-45-2057', fax: '0585-45-3069', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '竹雀', kana: 'たけすずめ', company: c)
Brand.find_or_create_by!(name: '初霜', kana: 'はつしも', company: c)
Brand.find_or_create_by!(name: '清松正宗', kana: 'きよまつまさむね', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '小町酒造', kana: 'こまちしゅぞう')
address_attrs = { prefecture_code: 21, city: '各務原市', street_address: '蘇原伊吹町2-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '058-382-0077', fax: '058-371-1027', website: 'http://www.nagaragawa.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '紫雲英', kana: 'れんげ', company: c)
Brand.find_or_create_by!(name: '長良川', kana: 'ながらがわ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '林本店', kana: 'はやしほんてん')
address_attrs = { prefecture_code: 21, city: '各務原市', street_address: '那加新加納町2239', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0583-82-1238', fax: '0583-83-3315', website: 'http://www.eiichi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'SAKEDELIC', kana: 'サケデリック', company: c)
Brand.find_or_create_by!(name: '百十郎', kana: 'ひゃくじゅうろう', company: c)
Brand.find_or_create_by!(name: '海路', kana: 'かいじ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '御代桜醸造', kana: 'みよざくらじょうぞう')
address_attrs = { prefecture_code: 21, city: '美濃加茂市', street_address: '太田本町3-2-9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0574-25-3428', fax: '0574-25-7579', website: 'http://www.miyozakura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御代櫻', kana: 'みよざくら', company: c)
Brand.find_or_create_by!(name: '津島屋', kana: 'つしまや', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '平井酒造場', kana: 'ひらいしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '可児郡', street_address: '御嵩町中切1341', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0574-67-1195', fax: '0574-67-1196', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東美', kana: 'あずまよし', company: c)
Brand.find_or_create_by!(name: '宮太鼓', kana: 'みやだいこ', company: c)
Brand.find_or_create_by!(name: '神代の味', kana: 'かみよのあじ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '伊藤酒造', kana: 'いとうしゅぞう')
address_attrs = { prefecture_code: 21, city: '可児市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '烏峯泉', kana: 'うほうせん', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '古田酒造', kana: 'ふるたしゅぞう')
address_attrs = { prefecture_code: 21, city: '加茂郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '雪中寒梅', kana: 'せっちゅうかんばい', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '花盛酒造', kana: 'はなもりしゅぞう')
address_attrs = { prefecture_code: 21, city: '加茂郡', street_address: '八百津町八百津4091', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0574-43-0016', fax: '0574-43-1120', website: 'http://www.hanazakari.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花盛', kana: 'はなざかり', company: c)
Brand.find_or_create_by!(name: '久田見', kana: 'くたみ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '蔵元やまだ', kana: 'くらもとやまだ')
address_attrs = { prefecture_code: 21, city: '加茂郡', street_address: '八百津町八百津3888-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0574-43-0015', fax: '0574-43-1148', website: 'https://www.kura-yamada.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉宝', kana: 'きっぽう', company: c)
Brand.find_or_create_by!(name: '山ノ湊', kana: 'まのみなと', company: c)
Brand.find_or_create_by!(name: '二百八十八夜', kana: 'にひゃくはちじゅうはちや', company: c)
Brand.find_or_create_by!(name: '開', kana: 'かい', company: c)
Brand.find_or_create_by!(name: '龍吟 忍者', kana: 'りゅうぎん にんじゃ', company: c)
Brand.find_or_create_by!(name: '恋度', kana: 'れんど', company: c)
Brand.find_or_create_by!(name: '玉柏', kana: 'たまかしわ', company: c)
Brand.find_or_create_by!(name: '金花水', kana: 'きんかすい', company: c)
Brand.find_or_create_by!(name: 'むかしのまんま', kana: 'むかしのまんま', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '田辺酒造場', kana: 'たなべしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '高山市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '豊年', kana: 'ほうねん', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '平瀬酒造店', kana: 'ひらせしゅぞうてん')
address_attrs = { prefecture_code: 21, city: '高山市', street_address: '上一之町82', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0577-34-0010', fax: '0577-34-0011', website: 'http://www.kusudama.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '久寿玉', kana: 'くすだま', company: c)
Brand.find_or_create_by!(name: '飛騨乃辛燗', kana: 'ひだのからかん', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '二木酒造', kana: 'にきしゅぞう')
address_attrs = { prefecture_code: 21, city: '高山市', street_address: '上二之町40', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0577-32-0021', fax: '0577-34-8899', website: 'http://www.niki-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '氷室', kana: 'ひむろ', company: c)
Brand.find_or_create_by!(name: '玉の井', kana: 'たまのい', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '川尻酒造場', kana: 'かわじりしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '高山市', street_address: '上二之町68', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0577-32-0143', fax: '0577-32-9630', website: 'http://www.hidamasamune.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山ひだ', kana: 'やまひだ', company: c)
Brand.find_or_create_by!(name: '山峡飛騨路', kana: 'さんきょうひだじ', company: c)
Brand.find_or_create_by!(name: 'ひだ山水', kana: 'ひださんすい', company: c)
Brand.find_or_create_by!(name: '天恩', kana: 'てんおん', company: c)
Brand.find_or_create_by!(name: 'ひだ正宗', kana: 'ひだまさむね', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '平田酒造場', kana: 'ひらたしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '高山市', street_address: '上二之町43', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0577-32-0352', fax: '0577-32-8393', website: 'http://hidanohana.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山の光', kana: 'やまのひかり', company: c)
Brand.find_or_create_by!(name: '飛騨の華', kana: 'ひだのはな', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '原田酒造場', kana: 'はらだしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '高山市', street_address: '上三之町10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0577-32-0120', fax: '0577-34-6001', website: 'http://www.sansya.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山車', kana: 'さんしゃ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '老田酒造店', kana: 'おいたしゅぞうてん')
address_attrs = { prefecture_code: 21, city: '高山市', street_address: '上三之町67', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0577-32-0166', fax: '0577-34-8023', website: 'http://www.onikorosi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夢悠遊', kana: 'ゆめゆうゆう', company: c)
Brand.find_or_create_by!(name: '飛騨自慢 鬼ころし', kana: 'おにころし', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '舩坂酒造店', kana: 'ふなさかしゅぞうてん')
address_attrs = { prefecture_code: 21, city: '高山市', street_address: '上三之町105', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0577-32-0016', fax: '0577-32-2824', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '甚五郎', kana: 'じんごろう', company: c)
Brand.find_or_create_by!(name: '夕映え', kana: 'ゆうばえ', company: c)
Brand.find_or_create_by!(name: '四ツ星', kana: 'よつぼし', company: c)
Brand.find_or_create_by!(name: '深山菊', kana: 'みやまぎく', company: c)
Brand.find_or_create_by!(name: '白無垢', kana: 'しろむく', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '大坪酒造店', kana: 'おおつぼしゅぞうてん')
address_attrs = { prefecture_code: 21, city: '飛騨市', street_address: '神岡町朝浦557', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0578-82-0008', fax: '0578-82-0008', website: 'http://www.hida-ootsubo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '冬ごもり', kana: 'ふゆごもり', company: c)
Brand.find_or_create_by!(name: '神代', kana: 'じんだい', company: c)
Brand.find_or_create_by!(name: '飛騨娘', kana: 'ひだむすめ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '三千盛', kana: 'みちさかり')
address_attrs = { prefecture_code: 21, city: '多治見市', street_address: '笠原町2919', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0572-43-3181', fax: '0572-43-3183', website: 'http://www.michisakari.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三千盛', kana: 'みちさかり', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: 'はざま酒造', kana: 'はざましゅぞう')
address_attrs = { prefecture_code: 21, city: '中津川市', street_address: '本町4-1-51', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0573-65-4106', fax: '0573-65-6233', website: 'http://www.enasan.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '醇', kana: 'じゅん', company: c)
Brand.find_or_create_by!(name: '恵那山', kana: 'えなさん', company: c)
Brand.find_or_create_by!(name: '五味饗宴', kana: 'ごみきょうえん', company: c)
Brand.find_or_create_by!(name: '旬', kana: 'しゅん', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '恵那醸造', kana: 'えなじょうぞう')
address_attrs = { prefecture_code: 21, city: '中津川市', street_address: '福岡2992-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0573-72-2055', fax: '0573-72-2184', website: 'http://www.kujiranami.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鯨波', kana: 'くじらなみ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '菊川', kana: 'きくかわ')
address_attrs = { prefecture_code: 21, city: '各務原市', street_address: '鵜沼西町1-543', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '058-384-1235', fax: '058-384-1230', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '篝火', kana: 'かがりび', company: c)
Brand.find_or_create_by!(name: '菊川', kana: 'きくかわ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '林酒造', kana: 'はやししゅぞう')
address_attrs = { prefecture_code: 21, city: '可児市', street_address: '羽崎1418', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0574-62-0023', fax: '0574-61-2760', website: 'http://www.minotengu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美濃天狗', kana: 'みのてんぐ', company: c)
Brand.find_or_create_by!(name: '明智光秀', kana: 'あけちみつひで', company: c)
Brand.find_or_create_by!(name: '富輿', kana: 'とみこし', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '平和錦酒造', kana: 'へいわにしきしゅぞう')
address_attrs = { prefecture_code: 21, city: '加茂郡', street_address: '川辺町下麻生2121', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0574-53-5007', fax: '0574-53-3833', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '秘蔵古酒', kana: 'ひぞうこしゅ', company: c)
Brand.find_or_create_by!(name: '秋の夜長に旨い酒', kana: 'あきのよながにうまいさけ', company: c)
Brand.find_or_create_by!(name: '飛騨路の寒椿', kana: 'ひだじのかんつばき', company: c)
Brand.find_or_create_by!(name: 'のんでみてちょ', kana: 'のんでみてちょ', company: c)
Brand.find_or_create_by!(name: '紅満天星', kana: 'べにどうだん', company: c)
Brand.find_or_create_by!(name: '宮の白珠', kana: 'みやのしらたま', company: c)
Brand.find_or_create_by!(name: '金泉', kana: 'きんせん', company: c)
Brand.find_or_create_by!(name: '円空', kana: 'えんくう', company: c)
Brand.find_or_create_by!(name: '郡上踊 踊り免状', kana: 'ぐじょうおどり おどりめんじょう', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '白扇酒造', kana: 'はくせんしゅぞう')
address_attrs = { prefecture_code: 21, city: '加茂郡', street_address: '川辺町中川辺28', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0574-43-3835', fax: '0574-43-3878', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花美蔵', kana: 'はなみくら', company: c)
Brand.find_or_create_by!(name: '黒松白扇', kana: 'くろまつはくせん', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '奥飛騨酒造', kana: 'おくひだしゅぞう')
address_attrs = { prefecture_code: 21, city: '下呂市', street_address: '金山町金山1984', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0576-32-2033', fax: '0576-32-3328', website: 'https://www.okuhida.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初緑', kana: 'はつみどり', company: c)
Brand.find_or_create_by!(name: '生活の柄', kana: 'せいかつのがら', company: c)
Brand.find_or_create_by!(name: '合掌造り', kana: 'がっしょうづくり', company: c)
Brand.find_or_create_by!(name: '奥飛騨', kana: 'おくひだ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '天領酒造', kana: 'てんりょうしゅぞう')
address_attrs = { prefecture_code: 21, city: '下呂市', street_address: '萩原町萩原1289-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0576-52-1515', fax: '0576-52-3727', website: 'https://www.tenryou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'すますま', kana: 'すますま', company: c)
Brand.find_or_create_by!(name: 'ひだほまれ', kana: 'ひだほまれ', company: c)
Brand.find_or_create_by!(name: '天領', kana: 'てんりょう', company: c)
Brand.find_or_create_by!(name: '又六', kana: 'またろく', company: c)
Brand.find_or_create_by!(name: '日野屋', kana: 'ひのや', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '渡辺酒造店', kana: 'わたなべしゅぞうてん')
address_attrs = { prefecture_code: 21, city: '飛騨市', street_address: '古川町壱之町7-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0577-73-2347', fax: '0577-57-7334', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'W', kana: 'ダブリュー', company: c)
Brand.find_or_create_by!(name: '色おとこ', kana: 'いろおとこ', company: c)
Brand.find_or_create_by!(name: '蓬莱', kana: 'ほうらい', company: c)
Brand.find_or_create_by!(name: '騨飛龍', kana: 'ダブリュウ', company: c)
Brand.find_or_create_by!(name: '飛騨のどぶ', kana: 'ひだのどぶ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '蒲酒造場', kana: 'かばしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '飛騨市', street_address: '古川町壱之町6-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0577-73-3333', fax: '0577-73-6367', website: 'http://www.yancha.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'やんちゃ酒', kana: 'やんちゃざけ', company: c)
Brand.find_or_create_by!(name: 'じゃんぱん', kana: 'じゃんぱん', company: c)
Brand.find_or_create_by!(name: '白真弓', kana: 'しらまゆみ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '千古乃岩酒造', kana: 'ちごのいわしゅぞう')
address_attrs = { prefecture_code: 21, city: '土岐市', street_address: '駄知町2177-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0572-59-8014', fax: '0572-59-8144', website: 'http://www.chigonoiwa.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千古乃岩', kana: 'ちごのいわ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '中島醸造', kana: 'なかしまじょうぞう')
address_attrs = { prefecture_code: 21, city: '瑞浪市', street_address: '土岐町7181-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0572-68-3151', fax: '0572-68-3152', website: 'http://www.kozaemon.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '始禄', kana: 'しろく', company: c)
Brand.find_or_create_by!(name: '小左衛門', kana: 'こざえもん', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '若葉', kana: 'わかば')
address_attrs = { prefecture_code: 21, city: '瑞浪市', street_address: '土岐町7270-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0572-68-3168', fax: '0572-68-4639', website: 'http://www.wakaba-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '若葉', kana: 'わかば', company: c)
Brand.find_or_create_by!(name: '美濃路', kana: 'みのじ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '白梅酒造', kana: 'しらうめしゅぞう')
address_attrs = { prefecture_code: 21, city: '瑞浪市', street_address: '寺河戸町1067-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0572-68-2188', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '志ら梅', kana: 'しらうめ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: 'いとう鶴酒造', kana: 'いとうつるしゅぞう')
address_attrs = { prefecture_code: 21, city: '恵那市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: 'いとう鶴', kana: 'いとうつる', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '恵那醸造', kana: 'えなじょうぞう')
address_attrs = { prefecture_code: 21, city: '恵那市', street_address: '三郷町野井380-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0573-25-3030', fax: '0573-25-3030', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '市乃川', kana: 'いちのかわ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '岩村醸造', kana: 'いわむらじょうぞう')
address_attrs = { prefecture_code: 21, city: '恵那市', street_address: '岩村町342', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0573-43-2029', fax: '0573-43-4045', website: 'http://www.torokko.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '幻の城', kana: 'まぼろしのしろ', company: c)
Brand.find_or_create_by!(name: '女城主', kana: 'おんなじょうしゅ', company: c)
Brand.find_or_create_by!(name: 'ゑなのほまれ', kana: 'えなのほまれ', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '大橋酒造', kana: 'おおはししゅぞう')
address_attrs = { prefecture_code: 21, city: '中津川市', street_address: '蛭川1119-1-1-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0573-45-2018', fax: '0573-45-2149', website: 'http://www.k-tsuru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '笠置鶴', kana: 'かさぎつる', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '山内酒造場', kana: 'やまうちしゅぞうじょう')
address_attrs = { prefecture_code: 21, city: '中津川市', street_address: '上野小野沢134-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0573-75-4417', fax: '0573-75-4418', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '小野櫻', kana: 'おのざくら', company: c)


c = Company.in_prefecture(21).find_or_create_by!(name: '丸田屋酒造', kana: 'まるたやしゅぞう')
address_attrs = { prefecture_code: 21, city: '中津川市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '太公望', kana: 'たいこうぼう', company: c)
