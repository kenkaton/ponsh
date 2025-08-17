c = Company.in_prefecture(15).find_or_create_by!(name: '越後・謙信SAKEまつり', kana: 'えちごけんしんさけまつり')
address_attrs = { prefecture_code: 15, city: '上越市', street_address: '高田本町', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-521-2627', website: 'https://www.kenshinsake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '総がかり', kana: 'そうがかり', company: c)
Brand.find_or_create_by!(name: '車懸', kana: 'くるまがかり', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '高橋酒造', kana: 'たかはししゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '地蔵1-8-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-32-0181', fax: '0258-35-7101', website: 'https://echigo-choryo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '長陵', kana: 'ちょうりょう', company: c)
Brand.find_or_create_by!(name: '八一', kana: 'やいち', company: c)
Brand.find_or_create_by!(name: '春まちうさぎ', kana: 'はるまちうさぎ', company: c)
Brand.find_or_create_by!(name: 'カワセミの旅', kana: 'かわせみのたび', company: c)
Brand.find_or_create_by!(name: '越乃輝虎', kana: 'こしのてるとら', company: c)
Brand.find_or_create_by!(name: 'はくしょん大魔王 はくしょんでごじゃる！', kana: 'はくしょんでごじゃる', company: c)
Brand.find_or_create_by!(name: '雪兜', kana: 'ゆきかぶと', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '美の川酒造', kana: 'みのがわしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '越の雄町', kana: 'こしのおまち', company: c)
Brand.find_or_create_by!(name: '朱鷺', kana: 'とき', company: c)
Brand.find_or_create_by!(name: '美の川', kana: 'みのがわ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '越銘醸', kana: 'こしめいじょう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '栃尾大町2－8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-52-3667', fax: '0258-52-9817', website: 'https://ja-jp.facebook.com/koshinotsuru', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越の鶴', kana: 'こしのつる', company: c)
Brand.find_or_create_by!(name: '越の川', kana: 'こしのかわ', company: c)
Brand.find_or_create_by!(name: '壱醸', kana: 'いちじょう', company: c)
Brand.find_or_create_by!(name: '山城屋', kana: 'やましろや', company: c)
Brand.find_or_create_by!(name: '本正', kana: 'ほんしょう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '諸橋酒造', kana: 'もろはししゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '北荷頃408', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-52-1151', fax: '0258-53-6106', website: 'http://www.morohashi-shuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越乃千禄', kana: 'こしのせんろく', company: c)
Brand.find_or_create_by!(name: '越乃景虎', kana: 'こしのかげとら', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '長谷川酒造', kana: 'はせがわしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '摂田屋2-7-28', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-32-0270', fax: '0258-35-6066', website: 'http://www.sekkobai.ecnet.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越後 雪紅梅', kana: 'せっこうばい', company: c)
Brand.find_or_create_by!(name: '初日正宗', kana: 'はつひまさむね', company: c)
Brand.find_or_create_by!(name: 'NAGAOKA', kana: 'ながおか', company: c)
Brand.find_or_create_by!(name: '越後 長岡城', kana: 'ながおかじょう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: 'お福酒造', kana: 'おふくしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '横枕町606', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-22-0086', fax: '0258-22-0087', website: 'http://www.ofuku-shuzo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'お福正宗', kana: 'おふくまさむね', company: c)
Brand.find_or_create_by!(name: '五百代', kana: 'いおしろ', company: c)
Brand.find_or_create_by!(name: '山古志', kana: 'やまこし', company: c)
Brand.find_or_create_by!(name: '千代都', kana: 'ちよのみやこ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '柏露酒造', kana: 'はくろしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '十日町字小島1927', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-22-2234', fax: '0258-22-2235', website: 'https://www.hakuroshuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越乃柏露', kana: 'こしのはくろ', company: c)
Brand.find_or_create_by!(name: '越乃桂', kana: 'こしのかつら', company: c)
Brand.find_or_create_by!(name: '越乃黒鷹', kana: 'こしのくろたか', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '恩田酒造', kana: 'おんだしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '六日市町1330', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-22-2134', fax: '0258-22-2135', website: 'http://www.maitsuru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越の吟月', kana: 'こしのぎんげつ', company: c)
Brand.find_or_create_by!(name: '幾久屋', kana: 'きくや', company: c)
Brand.find_or_create_by!(name: '舞鶴', kana: 'まいつる', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '吉乃川', kana: 'よしのがわ')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '摂田屋4-8-12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-35-3000', fax: '0258-36-1107', website: 'http://www.yosinogawa.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉乃川', kana: 'よしのがわ', company: c)
Brand.find_or_create_by!(name: '越乃飛燕', kana: 'こしのひえん', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '関原酒造', kana: 'せきはらしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '関原町1-1029-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-46-2010', fax: '0258-46-6519', website: 'http://www.sake-sekihara.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越後長岡藩', kana: 'えちごながおかはん', company: c)
Brand.find_or_create_by!(name: '群亀', kana: 'ぐんき', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '栃倉酒造', kana: 'とちくらしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '大積町1乙274-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-46-2205', fax: '0258-47-1030', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '六郎次', kana: 'ろくろうじ', company: c)
Brand.find_or_create_by!(name: '米百俵', kana: 'こめひゃっぴょう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '中川酒造', kana: 'なかがわしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '脇野町2011', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-42-2707', fax: '0258-42-2596', website: 'https://www.koshinohakugan.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越乃白雁', kana: 'こしのはくがん', company: c)
Brand.find_or_create_by!(name: '越燦燦', kana: 'こしさんさん', company: c)
Brand.find_or_create_by!(name: '越乃碧', kana: 'こしのあおい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '河忠酒造', kana: 'かわちゅうしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '脇野町1677番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-42-2405', fax: '0258-42-2822', website: 'http://www.soutenbou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'じゃんげ', kana: 'じゃんげ', company: c)
Brand.find_or_create_by!(name: '福扇', kana: 'ふくせん', company: c)
Brand.find_or_create_by!(name: '底ぬけ', kana: 'そこぬけ', company: c)
Brand.find_or_create_by!(name: '想天坊', kana: 'そうてんぼう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '住乃井酒造', kana: 'すみのいしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '吉崎581-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-42-2229', fax: '0258-42-3117', website: 'http://www.suminoi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '笑満壽', kana: 'わらいます', company: c)
Brand.find_or_create_by!(name: '古雅', kana: 'こが', company: c)
Brand.find_or_create_by!(name: '住乃井', kana: 'すみのい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '猪又酒造', kana: 'いのまたしゅぞう')
address_attrs = { prefecture_code: 15, city: '糸魚川市', street_address: '新町71-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-555-2402', fax: '025-555-4006', website: 'https://www.tsukimizunoike.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'サビ猫ロック', kana: 'さびねころっく', company: c)
Brand.find_or_create_by!(name: '月不見の池', kana: 'つきみずのいけ', company: c)
Brand.find_or_create_by!(name: '邂逅 思', kana: 'かいこう おもい', company: c)
Brand.find_or_create_by!(name: '奴奈姫', kana: 'ぬなひめ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '田原酒造', kana: 'たはらしゅぞう')
address_attrs = { prefecture_code: 15, city: '糸魚川市', street_address: '押上1-1-25', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-552-0109', fax: '025-552-2189', website: 'http://yukituru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '奴奈川族', kana: 'ぬながわぞく', company: c)
Brand.find_or_create_by!(name: 'KIEI 姫栄', kana: 'きえい', company: c)
Brand.find_or_create_by!(name: '連華山', kana: 'れんげさん', company: c)
Brand.find_or_create_by!(name: '春よ来い', kana: 'はるよこい', company: c)
Brand.find_or_create_by!(name: '雪鶴', kana: 'ゆきつる', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '加賀の井酒造', kana: 'かがのいしゅぞう')
address_attrs = { prefecture_code: 15, city: '糸魚川市', street_address: '大町2-3-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-552-0047', fax: '025-552-4482', website: 'http://www.kaganoi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '加賀の井', kana: 'かがのい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '池田屋酒造', kana: 'いけだやしゅぞう')
address_attrs = { prefecture_code: 15, city: '糸魚川市', street_address: '新鉄1-3-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-552-0011', fax: '025-552-4603', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '謙信', kana: 'けんしん', company: c)
Brand.find_or_create_by!(name: '池田屋', kana: 'いけだや', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '丸山酒造場', kana: 'まるやましゅぞうじょう')
address_attrs = { prefecture_code: 15, city: '上越市三和区', street_address: '塔ノ輪617', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-532-2603', fax: '025-532-2535', website: 'https://maruyama-shuzojo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '雪中梅', kana: 'せっちゅうばい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '新潟第一酒造', kana: 'にいがただいいちしゅぞう')
address_attrs = { prefecture_code: 15, city: '上越市浦川原区', street_address: '横川660', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-599-2236', fax: '025-599-2237', website: 'http://www.sake-hakuchou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山間', kana: 'やんま', company: c)
Brand.find_or_create_by!(name: '越の白鳥', kana: 'こしのはくちょう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '上越酒造', kana: 'じょうえつしゅぞう')
address_attrs = { prefecture_code: 15, city: '上越市', street_address: '大字飯田508', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0255-28-4011', fax: '0255-28-4058', website: 'https://www.joetsu-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越後美人', kana: 'えちごびじん', company: c)
Brand.find_or_create_by!(name: '越の若竹', kana: 'こしのわかたけ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '新潟県酒造組合 高田支部', kana: 'にいがたけんしゅぞうくみあい たかだしぶ')
address_attrs = { prefecture_code: 15, city: '上越市', street_address: '西城町3-10-29', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-522-2144', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ニホンノ、オサケ 千代の光 鮎正宗', kana: 'にほんのおさけ ちよのひかり あゆまさむね', company: c)
Brand.find_or_create_by!(name: 'ニホンノ、オサケ 越の白鳥 能鷹', kana: 'にほんのおさけ こしのはくちょう のうたか', company: c)
Brand.find_or_create_by!(name: 'ニホンノ、オサケ 妙高山 吟田川', kana: 'にほんのおさけ みょうこうさん ちびたがわ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '武蔵野酒造', kana: 'むさしのしゅぞう')
address_attrs = { prefecture_code: 15, city: '上越市', street_address: '西城町4-7-46', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0255-23-2169', fax: '0255-24-3041', website: 'http://www.musashino-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '寿亀正宗', kana: 'すきまさむね', company: c)
Brand.find_or_create_by!(name: 'スキー正宗', kana: 'すきーまさむね', company: c)
Brand.find_or_create_by!(name: 'ぶなの露', kana: 'ぶなのつゆ', company: c)
Brand.find_or_create_by!(name: '春日山 天と地', kana: 'かすがやま てんとち', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '妙高酒造', kana: 'みょうこうしゅぞう')
address_attrs = { prefecture_code: 15, city: '上越市', street_address: '南本町2-7-47', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-522-2111', fax: '025-522-1403', website: 'https://myokoshuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '妙高山', kana: 'みょうこうさん', company: c)
Brand.find_or_create_by!(name: '深雪の里', kana: 'みゆきのさと', company: c)
Brand.find_or_create_by!(name: 'シャトー妙高', kana: 'しゃとーみょうこう', company: c)
Brand.find_or_create_by!(name: '越乃雪月花', kana: 'こしのせつげつか', company: c)
Brand.find_or_create_by!(name: '越後おやじ', kana: 'えちごおやじ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '君の井酒造', kana: 'きみのいしゅぞう')
address_attrs = { prefecture_code: 15, city: '妙高市', street_address: '下町3-11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0255-72-3136', fax: '0255-73-7393', website: 'http://www.kiminoi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '君の井', kana: 'きみのい', company: c)
Brand.find_or_create_by!(name: '恵信', kana: 'えしん', company: c)
Brand.find_or_create_by!(name: '越後の蔵秘伝', kana: 'えちごのくらひでん', company: c)
Brand.find_or_create_by!(name: '越後田中屋大五郎', kana: 'えちごたなかやだいごろう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '千代の光酒造', kana: 'ちよのひかりしゅぞう')
address_attrs = { prefecture_code: 15, city: '妙高市', street_address: '窪松原656', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0255-72-2814', fax: '0255-73-7600', website: 'http://www.chiyonohikari.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'Pirouette', kana: 'ピルエット', company: c)
Brand.find_or_create_by!(name: '真 Shin', kana: 'しん', company: c)
Brand.find_or_create_by!(name: 'KENICHIRO', kana: 'けんいちろう', company: c)
Brand.find_or_create_by!(name: '千代の光', kana: 'ちよのひかり', company: c)
Brand.find_or_create_by!(name: '地上の星', kana: 'ちじょうのほし', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '加茂乃井酒造', kana: 'かものいしゅぞう')
address_attrs = { prefecture_code: 15, city: '上越市板倉区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '登美屋', kana: 'とみや', company: c)
Brand.find_or_create_by!(name: '加茂乃井', kana: 'かものい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '谷乃井酒造', kana: 'たにのいしゅぞう')
address_attrs = { prefecture_code: 15, city: '上越市板倉区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '谷乃井', kana: 'たにのい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '鮎正宗酒造', kana: 'あゆまさむねしゅぞう')
address_attrs = { prefecture_code: 15, city: '妙高市', street_address: '猿橋636', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0255-75-2231', fax: '0255-75-2328', website: 'http://www.ayumasamune.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鮎', kana: 'あゆ', company: c)
Brand.find_or_create_by!(name: '鮎正宗', kana: 'あゆまさむね', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '原酒造', kana: 'はらしゅぞう')
address_attrs = { prefecture_code: 15, city: '柏崎市', street_address: '新橋5-12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0257-23-6221', fax: '0257-20-1032', website: 'http://www.harashuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '銀の翼', kana: 'ぎんのつばさ', company: c)
Brand.find_or_create_by!(name: 'あわっしゅ', kana: 'あわっしゅ', company: c)
Brand.find_or_create_by!(name: '越の誉', kana: 'こしのほまれ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '阿部酒造', kana: 'あべしゅぞう')
address_attrs = { prefecture_code: 15, city: '柏崎市', street_address: '安田3475-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0257-22-4317', fax: '0257-24-0903', website: 'http://www.abesyuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あべ', kana: 'あべ', company: c)
Brand.find_or_create_by!(name: '越乃男山', kana: 'こしのおとこやま', company: c)
Brand.find_or_create_by!(name: '越乃こころ', kana: 'こしのこころ', company: c)
Brand.find_or_create_by!(name: '阿部', kana: 'あべ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '林酒造場', kana: 'はやししゅぞうじょう')
address_attrs = { prefecture_code: 15, city: '柏崎市', street_address: '与板1242-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0257-27-2106', fax: '0257-27-2106', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鯖石郷', kana: 'さばいしごう', company: c)
Brand.find_or_create_by!(name: '杉の露', kana: 'すぎのつゆ', company: c)
Brand.find_or_create_by!(name: '八石', kana: 'はちこく', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '石塚酒造', kana: 'いしづかしゅぞう')
address_attrs = { prefecture_code: 15, city: '柏崎市', street_address: '高柳町岡野町1820-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0257-41-2004', fax: '0257-41-3080', website: 'http://park23.wakwak.com/~kameguchi', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '姫の井', kana: 'ひめのい', company: c)
Brand.find_or_create_by!(name: 'かめぐち酒', kana: 'かめぐちざけ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '緑川酒造', kana: 'みどりかわしゅぞう')
address_attrs = { prefecture_code: 15, city: '魚沼市', street_address: '青島4015-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-792-2117', fax: '025-792-6696', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '緑川', kana: 'みどりかわ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '玉川酒造', kana: 'たまがわしゅぞう')
address_attrs = { prefecture_code: 15, city: '魚沼市', street_address: '須原1643', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-797-2017', fax: '025-797-2346', website: 'http://www.yukikura.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越後ゆきくら', kana: 'えちごゆきくら', company: c)
Brand.find_or_create_by!(name: '目黒五郎助', kana: 'めぐろごろうすけ', company: c)
Brand.find_or_create_by!(name: '越後武士', kana: 'えちごさむらい', company: c)
Brand.find_or_create_by!(name: '玉風味', kana: 'たまふうみ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '新潟銘醸', kana: 'にいがためいじょう')
address_attrs = { prefecture_code: 15, city: '小千谷市', street_address: '東栄1丁目8番39号', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-83-2025', fax: '0258-83-2269', website: 'http://www.sake-no-choja.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越の寒中梅', kana: 'こしのかんちゅうばい', company: c)
Brand.find_or_create_by!(name: '長者盛', kana: 'ちょうじゃざかり', company: c)
Brand.find_or_create_by!(name: '越後の長者', kana: 'えちごのちょうじゃ', company: c)
Brand.find_or_create_by!(name: '冬将軍', kana: 'ふゆしょうぐん', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '高の井酒造', kana: 'たかのいしゅぞう')
address_attrs = { prefecture_code: 15, city: '小千谷市', street_address: '東栄3-7-67', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-83-3450', fax: '0258-83-4495', website: 'http://www.hatsuume.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鄙の雪蔵', kana: 'ひなのゆきぐら', company: c)
Brand.find_or_create_by!(name: '伊乎乃', kana: 'いおの', company: c)
Brand.find_or_create_by!(name: 'たかの井', kana: 'たかのい', company: c)
Brand.find_or_create_by!(name: '田友', kana: 'でんゆう', company: c)
Brand.find_or_create_by!(name: '越の初梅', kana: 'こしのはつうめ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '松乃井酒造場', kana: 'まつのいしゅぞうじょう')
address_attrs = { prefecture_code: 15, city: '十日町市', street_address: '上野50-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-768-2047', fax: '025-768-3927', website: 'http://www.matsunoi.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松乃井', kana: 'まつのい', company: c)
Brand.find_or_create_by!(name: '凌駕', kana: 'りょうが', company: c)
Brand.find_or_create_by!(name: '英保', kana: 'えいほ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '渡辺酒造店', kana: 'わたなべしゅぞうてん')
address_attrs = { prefecture_code: 15, city: '糸魚川市', street_address: '根小屋1197-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-558-2006', fax: '025-558-2273', website: 'https://nechiotokoyama.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'Nechi', kana: 'ねち', company: c)
Brand.find_or_create_by!(name: '根知男山', kana: 'ねちおとこやま', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '田中酒造', kana: 'たなかしゅぞう')
address_attrs = { prefecture_code: 15, city: '上越市', street_address: '長浜129-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-546-2311', fax: '025-546-2433', website: 'http://web01.joetsu.ne.jp/~t-syuzou', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '能鷹', kana: 'のうたか', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '小山酒造店', kana: 'こやましゅぞうてん')
address_attrs = { prefecture_code: 15, city: '上越市大潟区', street_address: '土底浜3627', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-534-2022', fax: '025-534-6415', website: 'http://koyamasyuzou.jimdo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '潟の井', kana: 'かたのい', company: c)
Brand.find_or_create_by!(name: '越後自慢', kana: 'えちごじまん', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '竹田酒造店', kana: 'たけだしゅぞうてん')
address_attrs = { prefecture_code: 15, city: '上越市大潟区', street_address: '上小船津浜171', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-534-2320', fax: '025-534-4542', website: 'https://www.katafune.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'かたふね', kana: 'かたふね', company: c)
Brand.find_or_create_by!(name: '春毅', kana: 'はるき', company: c)
Brand.find_or_create_by!(name: '雪舟', kana: 'せっしゅう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '頚城酒造', kana: 'くびきしゅぞう')
address_attrs = { prefecture_code: 15, city: '上越市柿崎区', street_address: '柿崎5765', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-536-2329', fax: '025-536-3756', website: 'http://www.kubiki-shuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '久比岐', kana: 'くびき', company: c)
Brand.find_or_create_by!(name: '越後杜氏の里', kana: 'えちごとうじのさと', company: c)
Brand.find_or_create_by!(name: '越路乃紅梅', kana: 'こしじのこうばい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '代々菊醸造', kana: 'よよぎくじょうぞう')
address_attrs = { prefecture_code: 15, city: '上越市柿崎区', street_address: '角取597', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-536-2469', fax: '025-536-6380', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吟田川', kana: 'ちびたがわ', company: c)
Brand.find_or_create_by!(name: '越後乃蔵元代々菊', kana: 'えちごのくらもとよよぎく', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '加藤酒造', kana: 'かとうしゅぞう')
address_attrs = { prefecture_code: 15, city: '上越市吉川区', street_address: '下深沢233-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-548-3765', fax: '025-548-3765', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '潟一', kana: 'がたいち', company: c)
Brand.find_or_create_by!(name: '清正', kana: 'きよまさ', company: c)
Brand.find_or_create_by!(name: '越後屋', kana: 'えちごや', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: 'よしかわ杜氏の郷', kana: 'よしかわとうじのさと')
address_attrs = { prefecture_code: 15, city: '上越市吉川区', street_address: '杜氏の郷1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-548-2331', fax: '025-548-2322', website: 'https://www.yoshikawa-touji.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '有りがたし', kana: 'ありがたし', company: c)
Brand.find_or_create_by!(name: '雪盛', kana: 'ゆきざかり', company: c)
Brand.find_or_create_by!(name: 'よしかわ杜氏', kana: 'よしかわとうじ', company: c)
Brand.find_or_create_by!(name: '天恵楽', kana: 'てんけいらく', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '久須美酒造', kana: 'くすみしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '小島谷1537-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-74-3101', fax: '0258-74-3644', website: 'http://www.kamenoo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夏子物語', kana: 'なつこものがたり', company: c)
Brand.find_or_create_by!(name: '亀の翁', kana: 'かめのお', company: c)
Brand.find_or_create_by!(name: '清泉', kana: 'きよいずみ', company: c)
Brand.find_or_create_by!(name: '祝鶴亀', kana: 'いわいつるかめ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '池浦酒造', kana: 'いけうらしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '両高1538', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-74-3141', fax: '0258-74-2882', website: 'http://www.ikeura-syuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天上大風', kana: 'てんじょうたいふう', company: c)
Brand.find_or_create_by!(name: '和樂互尊', kana: 'わらくごそん', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '朝日酒造', kana: 'あさひしゅぞう')
address_attrs = { prefecture_code: 15, city: '長岡市', street_address: '朝日880-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0258-92-3181', fax: '0258-92-4875', website: 'https://www.asahi-shuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '得月', kana: 'とくげつ', company: c)
Brand.find_or_create_by!(name: '久保田', kana: 'くぼた', company: c)
Brand.find_or_create_by!(name: '轍', kana: 'わだち', company: c)
Brand.find_or_create_by!(name: '参拾弐 神童', kana: 'さんじゅうに しんどう', company: c)
Brand.find_or_create_by!(name: '香里音', kana: 'かりね', company: c)
Brand.find_or_create_by!(name: '越州', kana: 'えっしゅう', company: c)
Brand.find_or_create_by!(name: '朝日山', kana: 'あさひやま', company: c)
Brand.find_or_create_by!(name: '越乃かぎろひ', kana: 'こしのかぎろひ', company: c)
Brand.find_or_create_by!(name: '千年翠', kana: 'せんねんのみどり', company: c)
Brand.find_or_create_by!(name: '呼友', kana: 'こゆう', company: c)
Brand.find_or_create_by!(name: '洗心', kana: 'せんしん', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '白瀧酒造', kana: 'しらたきしゅぞう')
address_attrs = { prefecture_code: 15, city: '南魚沼郡', street_address: '湯沢町湯沢2640', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-784-3443', fax: '025-785-5485', website: 'http://www.jozen.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '魚沼', kana: 'うおぬま', company: c)
Brand.find_or_create_by!(name: '霊泉汲不盡', kana: 'れいせんくめどもつきず', company: c)
Brand.find_or_create_by!(name: '緑端渓', kana: 'りょくたんけい', company: c)
Brand.find_or_create_by!(name: '湊屋藤助', kana: 'みなとやとうすけ', company: c)
Brand.find_or_create_by!(name: '上善如水', kana: 'じょうぜんみずのごとし', company: c)
Brand.find_or_create_by!(name: '白瀧', kana: 'しらたき', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '青木酒造', kana: 'あおきしゅぞう')
address_attrs = { prefecture_code: 15, city: '南魚沼市', street_address: '塩沢1214', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-782-0023', website: 'http://www.kakurei.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鶴齢', kana: 'かくれい', company: c)
Brand.find_or_create_by!(name: '牧之', kana: 'ぼくし', company: c)
Brand.find_or_create_by!(name: '巻機山', kana: 'まきはたやま', company: c)
Brand.find_or_create_by!(name: '雪男', kana: 'ゆきおとこ', company: c)
Brand.find_or_create_by!(name: '雪譜', kana: 'せっぷ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '高千代酒造', kana: 'たかちよしゅぞう')
address_attrs = { prefecture_code: 15, city: '南魚沼市', street_address: '長崎328-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-782-0507', fax: '025-782-2937', website: 'http://www.takachiyo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '高千代', kana: 'たかちよ', company: c)
Brand.find_or_create_by!(name: 'Takachiyo', kana: 'たかちよ', company: c)
Brand.find_or_create_by!(name: 'たかちよ', kana: 'たかちよ', company: c)
Brand.find_or_create_by!(name: '巻機', kana: 'まきはた', company: c)
Brand.find_or_create_by!(name: '天地人', kana: 'てんちじん', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '八海醸造', kana: 'はっかいじょうぞう')
address_attrs = { prefecture_code: 15, city: '南魚沼市', street_address: '長森1051', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-775-3866', fax: '025-775-3714', website: 'https://www.hakkaisan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八海山', kana: 'はっかいさん', company: c)
Brand.find_or_create_by!(name: '金城山', kana: 'きんじょうさん', company: c)
Brand.find_or_create_by!(name: '坂戸山', kana: 'さかどやま', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '苗場酒造', kana: 'なえばしゅぞう')
address_attrs = { prefecture_code: 15, city: '中魚沼郡', street_address: '津南町下船渡戊555', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-765-2011', fax: '025-765-5100', website: 'http://www.naebasan.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '不二正宗', kana: 'ふじまさむね', company: c)
Brand.find_or_create_by!(name: '越の龍神', kana: 'こしのりゅうじん', company: c)
Brand.find_or_create_by!(name: '苗場山', kana: 'なえばさん', company: c)
Brand.find_or_create_by!(name: '醸す森', kana: 'かもすもり', company: c)
Brand.find_or_create_by!(name: '龍ヶ窪', kana: 'りゅうがくぼ', company: c)
Brand.find_or_create_by!(name: '良寛', kana: 'りょうかん', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '津南醸造', kana: 'つなんじょうぞう')
address_attrs = { prefecture_code: 15, city: '中魚沼郡', street_address: '津南町秋成7141', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-765-5252', fax: '025-765-5266', website: 'http://www.jouzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '津南郷', kana: 'つなんごう', company: c)
Brand.find_or_create_by!(name: '霧の塔', kana: 'きりのとう', company: c)
Brand.find_or_create_by!(name: 'ユキグニモノガタリ', kana: 'ゆきぐにものがたり', company: c)
Brand.find_or_create_by!(name: '妻有郷', kana: 'つまりごう', company: c)
Brand.find_or_create_by!(name: '名水の恵', kana: 'めいすいのめぐみ', company: c)
Brand.find_or_create_by!(name: '雪美人', kana: 'ゆきびじん', company: c)
Brand.find_or_create_by!(name: '津南', kana: 'つなん', company: c)
Brand.find_or_create_by!(name: '朝日松', kana: 'あさひまつ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '魚沼酒造', kana: 'うおぬましゅぞう')
address_attrs = { prefecture_code: 15, city: '十日町市', street_address: '中条丙1276', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-752-3017', fax: '025-752-6867', website: 'http://www.tenjinkk.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天神囃子', kana: 'てんじんばやし', company: c)
Brand.find_or_create_by!(name: '越天翔', kana: 'こしてんしょう', company: c)
Brand.find_or_create_by!(name: '縄文の響', kana: 'じょうもんのひびき', company: c)
Brand.find_or_create_by!(name: '越乃八幡川', kana: 'やはたがわ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '今代司酒造', kana: 'いまよつかさしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市中央区', street_address: '鏡が岡1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-245-3231', fax: '025-245-3233', website: 'http://www.imayotsukasa.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白い酒', kana: 'しろいさけ', company: c)
Brand.find_or_create_by!(name: '明和義人', kana: 'めいわぎじん', company: c)
Brand.find_or_create_by!(name: '鳩摩羅什', kana: 'くまらじゅう', company: c)
Brand.find_or_create_by!(name: '大彦命', kana: 'おおひこのみこと', company: c)
Brand.find_or_create_by!(name: 'しゃんぽん しらほし', kana: 'しゃんぽん しらほし', company: c)
Brand.find_or_create_by!(name: '花柳界', kana: 'かりゅうかい', company: c)
Brand.find_or_create_by!(name: '今代司', kana: 'いまよつかさ', company: c)
Brand.find_or_create_by!(name: 'おむすび 黒', kana: 'おむすび', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '越の華酒造', kana: 'こしのはなしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市中央区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '越の華', kana: 'こしのはな', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '石本酒造', kana: 'いしもとしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市江南区', street_address: '北山847-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-276-2028', website: 'https://koshinokanbai.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越乃寒梅', kana: 'こしのかんばい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '伊藤酒造', kana: 'いとうしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '日本海', kana: 'にほんかい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '塩川酒造', kana: 'しおかわしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市西区', street_address: '内野町662', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-262-2039', fax: '025-261-3262', website: 'https://www.shiokawa.biz', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千の風', kana: 'せんのかぜ', company: c)
Brand.find_or_create_by!(name: '越の関', kana: 'こしのせき', company: c)
Brand.find_or_create_by!(name: '願人', kana: 'ねがいびと', company: c)
Brand.find_or_create_by!(name: '越', kana: 'こし', company: c)
Brand.find_or_create_by!(name: '雪原の灯', kana: 'せつげんのひ', company: c)
Brand.find_or_create_by!(name: 'Fisherman Sokujo', kana: 'ふぃっしゃーまん そくじょう', company: c)
Brand.find_or_create_by!(name: '新雪物語', kana: 'しんせつものがたり', company: c)
Brand.find_or_create_by!(name: 'もりひかり', kana: 'もりひかり', company: c)
Brand.find_or_create_by!(name: 'Cowboy Yamahai', kana: 'かうぼーい やまはい', company: c)
Brand.find_or_create_by!(name: '日本海', kana: 'にほんかい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '樋木酒造', kana: 'ひきしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市', street_address: '内野町582', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-262-2014', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鶴の友', kana: 'つるのとも', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '濱倉酒造', kana: 'はまくらしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '朗', kana: 'ほがらか', company: c)
Brand.find_or_create_by!(name: '雪錦', kana: 'ゆきにしき', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '高野酒造', kana: 'たかのしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市西区', street_address: '木山24-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-239-2046', fax: '025-239-3433', website: 'https://www.takano-shuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '新潟小町', kana: 'にいがたこまち', company: c)
Brand.find_or_create_by!(name: '迎春花', kana: 'げいしゅんか', company: c)
Brand.find_or_create_by!(name: '越路吹雪', kana: 'こしじふぶき', company: c)
Brand.find_or_create_by!(name: '越後娘', kana: 'えちごむすめ', company: c)
Brand.find_or_create_by!(name: '水の都 柳都', kana: 'りゅうと', company: c)
Brand.find_or_create_by!(name: '越匠', kana: 'えっしょう', company: c)
Brand.find_or_create_by!(name: '越乃寒雪', kana: 'こしのかんせつ', company: c)
Brand.find_or_create_by!(name: 'ライフプレミアム', kana: 'らいふぷれみあむ', company: c)
Brand.find_or_create_by!(name: '白露', kana: 'しらつゆ', company: c)
Brand.find_or_create_by!(name: 'コシノゴハク', kana: 'こしのごはく', company: c)
Brand.find_or_create_by!(name: '越乃冬雪花', kana: 'こしのとうせつか', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '越後伝衛門', kana: 'えちごでんえもん')
address_attrs = { prefecture_code: 15, city: '新潟市北区', street_address: '内島見101-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-388-5020', fax: '025-388-5120', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '伝衛門', kana: 'でんえもん', company: c)
Brand.find_or_create_by!(name: 'おむすび 柳', kana: 'おむすび', company: c)
Brand.find_or_create_by!(name: 'タマキハル', kana: 'たまきはる', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '越後酒造場', kana: 'えちごしゅぞうじょう')
address_attrs = { prefecture_code: 15, city: '新潟市', street_address: '北区葛塚3306-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-387-2008', fax: '025-386-1160', website: 'http://www.echigoshuzojo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越の六華', kana: 'こしのりっか', company: c)
Brand.find_or_create_by!(name: '越後豊栄', kana: 'えちごとよさか', company: c)
Brand.find_or_create_by!(name: '越乃八豊', kana: 'こしのはっぽう', company: c)
Brand.find_or_create_by!(name: '甘雨', kana: 'かんう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: 'DHC酒造', kana: 'でぃえいちしぃしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市北区', street_address: '嘉山1-6-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '025-387-2025', fax: '025-387-3702', website: 'http://www.bairi.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越乃梅里', kana: 'こしのばいり', company: c)
Brand.find_or_create_by!(name: '朝日晴', kana: 'あさひばれ', company: c)
Brand.find_or_create_by!(name: '嘉山', kana: 'かやま', company: c)
Brand.find_or_create_by!(name: '越乃無双', kana: 'こしのむそう', company: c)
Brand.find_or_create_by!(name: '平エ門', kana: 'へいえもん', company: c)
Brand.find_or_create_by!(name: '恋がかなう', kana: 'こいがかなう', company: c)
Brand.find_or_create_by!(name: '悠天', kana: 'ゆうてん', company: c)
Brand.find_or_create_by!(name: '越後辛口太郎', kana: 'えちごからくちたろう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '天領盃酒造', kana: 'てんりょうはいしゅぞう')
address_attrs = { prefecture_code: 15, city: '佐渡市', street_address: '加茂歌代458', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0259-23-2111', fax: '0259-23-2901', website: 'https://tenryohai.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '雅楽代', kana: 'うたしろ', company: c)
Brand.find_or_create_by!(name: '天領盃', kana: 'てんりょうはい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '逸見酒造', kana: 'へんみしゅぞう')
address_attrs = { prefecture_code: 15, city: '佐渡市', street_address: '長石84-甲', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0259-55-2046', fax: '0259-55-2326', website: 'http://henmisyuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '真稜', kana: 'しんりょう', company: c)
Brand.find_or_create_by!(name: '至', kana: 'いたる', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '菊波酒造', kana: 'きくなみしゅぞう')
address_attrs = { prefecture_code: 15, city: '佐渡市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '菊波', kana: 'きくなみ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '尾畑酒造', kana: 'おばたしゅぞう')
address_attrs = { prefecture_code: 15, city: '佐渡市', street_address: '真野新町449', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0259-55-3171', fax: '0259-55-4215', website: 'https://www.obata-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '魔の鶴 Devil’s Dry', kana: 'まのつる', company: c)
Brand.find_or_create_by!(name: '辛口産経', kana: 'からくちさんけい', company: c)
Brand.find_or_create_by!(name: '学校蔵', kana: 'がっこうぐら', company: c)
Brand.find_or_create_by!(name: '壱穂', kana: 'いちほ', company: c)
Brand.find_or_create_by!(name: '佐州正宗', kana: 'さしゅうまさむね', company: c)
Brand.find_or_create_by!(name: '真野鶴', kana: 'まのつる', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '北雪酒造', kana: 'ほくせつしゅぞう')
address_attrs = { prefecture_code: 15, city: '佐渡市', street_address: '徳和2377-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0259-87-3105', fax: '0259-87-3173', website: 'http://www.sake-hokusetsu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花魁の里', kana: 'おいらんのさと', company: c)
Brand.find_or_create_by!(name: '北雪', kana: 'ほくせつ', company: c)
Brand.find_or_create_by!(name: 'きららん', kana: 'きららん', company: c)
Brand.find_or_create_by!(name: 'つばめ分水桜まつり', kana: 'つばめぶんすいさくらまつり', company: c)
Brand.find_or_create_by!(name: 'NOBU', kana: 'のぶ', company: c)
Brand.find_or_create_by!(name: '鬼夜叉', kana: 'おにやしゃ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '加藤酒造店', kana: 'かとうしゅぞうてん')
address_attrs = { prefecture_code: 15, city: '佐渡市', street_address: '沢根炭屋町50', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0259-52-6511', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金鶴', kana: 'きんつる', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '佐渡発酵', kana: 'さどはっこう')
address_attrs = { prefecture_code: 15, city: '佐渡市', street_address: '関650-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0259-78-2288', fax: '0259-78-2825', website: 'http://sadohakko.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '寒元', kana: 'かんもと', company: c)
Brand.find_or_create_by!(name: '佐渡のどぶろく', kana: 'さどのどぶろく', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '笹祝酒造', kana: 'ささいわいしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市西蒲区', street_address: '松野尾3249', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0256-72-3982', fax: '0256-72-3986', website: 'http://www.sasaiwai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '笹祝', kana: 'ささいわい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '越後鶴亀', kana: 'えちごつるかめ')
address_attrs = { prefecture_code: 15, city: '新潟市西蒲区', street_address: '竹野町2580', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0256-72-2039', fax: '0256-73-3875', website: 'https://www.echigotsurukame.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越後鶴亀', kana: 'えちごつるかめ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '峰乃白梅酒造', kana: 'みねのはくばいしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市西蒲区', street_address: '福井1833', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0256-73-5000', fax: '0256-73-8800', website: 'https://www.facebook.com/minenohakubai33', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'KING OF MODERN LIGHT', kana: 'キング オブ モダン ライト', company: c)
Brand.find_or_create_by!(name: '菱湖', kana: 'りょうこ', company: c)
Brand.find_or_create_by!(name: '峰乃白梅', kana: 'みねのはくばい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '宝山酒造', kana: 'たからやましゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市西蒲区', street_address: '石瀬1380', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0256-82-2003', fax: '0256-82-2697', website: 'https://www.takarayama-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宝山', kana: 'たからやま', company: c)
Brand.find_or_create_by!(name: '二才の醸', kana: 'にさいのかもし', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '福顔酒造', kana: 'ふくがおしゅぞう')
address_attrs = { prefecture_code: 15, city: '三条市', street_address: '林町1-5-38', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0256-33-0123', fax: '0256-33-4675', website: 'http://www.fukugao.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福顔', kana: 'ふくがお', company: c)
Brand.find_or_create_by!(name: '越後平野', kana: 'えちごへいや', company: c)
Brand.find_or_create_by!(name: '宇寿屋', kana: 'うすや', company: c)
Brand.find_or_create_by!(name: '五十嵐川', kana: 'いがらしがわ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '村祐酒造', kana: 'むらゆうしゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市秋葉区', street_address: '舟戸1-1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0250-38-2028', fax: '0250-38-5161', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '常盤松', kana: 'ときわまつ', company: c)
Brand.find_or_create_by!(name: '花越路', kana: 'はなこしじ', company: c)
Brand.find_or_create_by!(name: '嵩村桂', kana: 'たかむらけい', company: c)
Brand.find_or_create_by!(name: '村祐', kana: 'むらゆう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '菊水酒造', kana: 'きくすいしゅぞう')
address_attrs = { prefecture_code: 15, city: '新発田市', street_address: '島潟750', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0254-24-5111', fax: '0254-23-5255', website: 'https://www.kikusui-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊水', kana: 'きくすい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '金升酒造', kana: 'かねますしゅぞう')
address_attrs = { prefecture_code: 15, city: '新発田市', street_address: '豊町1-9-30', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0254-22-3131', fax: '0254-22-7377', website: 'http://kanemasu-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'AWANAMA', kana: 'あわなま', company: c)
Brand.find_or_create_by!(name: '初花', kana: 'はつはな', company: c)
Brand.find_or_create_by!(name: '金升', kana: 'かねます', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '王紋酒造', kana: 'おうもんしゅぞう')
address_attrs = { prefecture_code: 15, city: '新発田市', street_address: '諏訪町3-1-17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0254-22-2350', fax: '0254-23-6233', website: 'https://aumont.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '市島', kana: 'いちしま', company: c)
Brand.find_or_create_by!(name: '王紋', kana: 'おうもん', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: 'ふじの井酒造', kana: 'ふじのいしゅぞう')
address_attrs = { prefecture_code: 15, city: '新発田市', street_address: '藤塚浜1335', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0254-41-3165', website: 'http://www.sake-fujinoi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'しうんの光', kana: 'しうんのひかり', company: c)
Brand.find_or_create_by!(name: 'ふじの井', kana: 'ふじのい', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '大洋酒造', kana: 'たいようしゅぞう')
address_attrs = { prefecture_code: 15, city: '村上市', street_address: '飯野1-4-31', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0254-53-3145', fax: '0254-53-3148', website: 'https://www.taiyo-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北翔', kana: 'ほくしょう', company: c)
Brand.find_or_create_by!(name: '越乃松露', kana: 'こしのしょうろ', company: c)
Brand.find_or_create_by!(name: '越の魂', kana: 'こしのたましい', company: c)
Brand.find_or_create_by!(name: '大洋盛', kana: 'たいようざかり', company: c)
Brand.find_or_create_by!(name: '雪先花', kana: 'せっせんか', company: c)
Brand.find_or_create_by!(name: '鄙願', kana: 'ひがん', company: c)
Brand.find_or_create_by!(name: '無想', kana: 'むそう', company: c)
Brand.find_or_create_by!(name: '越後流', kana: 'えちごりゅう', company: c)
Brand.find_or_create_by!(name: '日本国', kana: 'にほんこく', company: c)
Brand.find_or_create_by!(name: '鈴ヶ瀧', kana: 'すずがたき', company: c)
Brand.find_or_create_by!(name: '越乃瀬波', kana: 'こしのせなみ', company: c)
Brand.find_or_create_by!(name: '雪華光', kana: 'せっかこう', company: c)
Brand.find_or_create_by!(name: '純越後', kana: 'じゅんえちご', company: c)
Brand.find_or_create_by!(name: '越乃湧清水', kana: 'こしのわきしみず', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '宮尾酒造', kana: 'みやおしゅぞう')
address_attrs = { prefecture_code: 15, city: '村上市', street_address: '上片町5-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0254-52-5181', fax: '0254-53-1433', website: 'https://www.shimeharitsuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '〆張鶴', kana: 'しめはりつる', company: c)
Brand.find_or_create_by!(name: 'お城山', kana: 'おしろやま', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '弥彦酒造', kana: 'やひこしゅぞう')
address_attrs = { prefecture_code: 15, city: '西蒲原郡', street_address: '弥彦村上泉1830-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0256-94-3100', fax: '0256-94-4990', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越乃白雪', kana: 'こしのはくせつ', company: c)
Brand.find_or_create_by!(name: '弥彦愛国', kana: 'やひこあいこく', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '朝妻酒造', kana: 'あさづましゅぞう')
address_attrs = { prefecture_code: 15, city: '新潟市', street_address: '曽根251-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0256-88-7895', fax: '0256-88-7896', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '雪の幻', kana: 'ゆきのまぼろし', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '加茂錦酒造', kana: 'かもにしきしゅぞう')
address_attrs = { prefecture_code: 15, city: '加茂市', street_address: '仲町3-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0256-52-0035', fax: '0256-52-1124', website: 'https://kamonishiki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '荷札酒', kana: 'にふだざけ', company: c)
Brand.find_or_create_by!(name: '加茂錦', kana: 'かもにしき', company: c)
Brand.find_or_create_by!(name: '壱久', kana: 'いっきゅう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '雪椿酒造', kana: 'ゆきつばきしゅぞう')
address_attrs = { prefecture_code: 15, city: '加茂市', street_address: '仲町3-14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0256-53-2700', fax: '0256-52-0291', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越乃雪椿', kana: 'こしのゆきつばき', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: 'マスカガミ', kana: 'ますかがみ')
address_attrs = { prefecture_code: 15, city: '加茂市', street_address: '若宮町1-1-32', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0256-52-0041', fax: '0265-41-4144', website: 'https://masukagami.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萬寿鏡', kana: 'ますかがみ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '金鵄盃酒造', kana: 'きんしはいしゅぞう')
address_attrs = { prefecture_code: 15, city: '五泉市', street_address: '村松甲1836番地1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0250-58-7125', fax: '0250-58-8441', website: 'http://www.kinshihai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金鵄盃', kana: 'きんしはい', company: c)
Brand.find_or_create_by!(name: '帛乙女', kana: 'きぬおとめ', company: c)
Brand.find_or_create_by!(name: '村松', kana: 'むらまつ', company: c)
Brand.find_or_create_by!(name: '雪影', kana: 'ゆきかげ', company: c)
Brand.find_or_create_by!(name: '越後杜氏', kana: 'えちごとうじ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '近藤酒造', kana: 'こんどうしゅぞう')
address_attrs = { prefecture_code: 15, city: '五泉市', street_address: '吉沢2-3-50', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0250-43-3187', fax: '0250-43-3188', website: 'http://www.suganadake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越乃鹿六', kana: 'こしのかろく', company: c)
Brand.find_or_create_by!(name: '菅名岳', kana: 'すがなだけ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '越後桜酒造', kana: 'えちござくらしゅぞう')
address_attrs = { prefecture_code: 15, city: '阿賀野市', street_address: '山口町1-7-13', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0250-62-2033', fax: '0250-62-2708', website: 'http://www.nihonsakura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白鳥蔵', kana: 'はくちょうぐら', company: c)
Brand.find_or_create_by!(name: '越乃日本桜', kana: 'こしのにほんざくら', company: c)
Brand.find_or_create_by!(name: '越後桜', kana: 'えちござくら', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '白龍酒造', kana: 'はくりゅうしゅぞう')
address_attrs = { prefecture_code: 15, city: '阿賀野市', street_address: '岡山町3-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0250-62-2222', fax: '0250-62-2942', website: 'http://www.hakuryu-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白龍', kana: 'はくりゅう', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '越つかの酒造', kana: 'こしつかのしゅぞう')
address_attrs = { prefecture_code: 15, city: '阿賀野市', street_address: '分田1328', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0250-61-2011', fax: '0250-61-2749', website: 'http://www.osakenet.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '代々泉', kana: 'よよいずみ', company: c)
Brand.find_or_create_by!(name: '越乃溪水', kana: 'こしのけいすい', company: c)
Brand.find_or_create_by!(name: '越乃あじわい', kana: 'こしのあじわい', company: c)
Brand.find_or_create_by!(name: '虎千代', kana: 'とらちよ', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '下越酒造', kana: 'かえつしゅぞう')
address_attrs = { prefecture_code: 15, city: '東蒲原郡', street_address: '阿賀町津川3644', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '02549-2-3211', fax: '02549-2-5618', website: 'http://www.sake-kirin.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '麒麟', kana: 'きりん', company: c) # 誉麒麟, ほまれきりん
Brand.find_or_create_by!(name: 'ほまれ麒麟', kana: 'ほまれきりん', company: c)
Brand.find_or_create_by!(name: '蒲原', kana: 'かんばら', company: c)
Brand.find_or_create_by!(name: '丸にぼーいち', kana: 'まるにぼーいち', company: c)


c = Company.in_prefecture(15).find_or_create_by!(name: '麒麟山酒造', kana: 'きりんざんしゅぞう')
address_attrs = { prefecture_code: 15, city: '東蒲原郡', street_address: '阿賀町津川46', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0254-92-3511', fax: '0254-92-5166', website: 'http://www.kirinzan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'はでっぱの香', kana: 'はでっぱのかおり', company: c)
Brand.find_or_create_by!(name: '麒麟山', kana: 'きりんざん', company: c)
Brand.find_or_create_by!(name: 'ときかぜ', kana: 'ときかぜ', company: c)
