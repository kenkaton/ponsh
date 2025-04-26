c = Company.create_or_find_by!(name: '宝酒造', kana: 'たからしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市下京区', street_address: '長刀鉾町20　四条烏丸ＦＴスクエア（四条通烏丸東入）', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-241-5110', fax: '075-211-6385', website: 'https://www.takarashuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松竹梅', kana: 'しょうちくばい', company: c)
Brand.find_or_create_by!(name: '豪快', kana: 'ごうかい', company: c)
Brand.find_or_create_by!(name: '松竹梅 天', kana: 'しょうちくばい てん', company: c)
Brand.find_or_create_by!(name: '松竹梅 昴', kana: 'しょうちくばい すばる', company: c)


c = Company.create_or_find_by!(name: '羽田酒造', kana: 'はねだしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市右京区', street_address: '京北周山町下台20', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0771-52-0080', fax: '0771-52-1150', website: 'http://www.hanedashuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '羽田', kana: 'はねだ', company: c)
Brand.find_or_create_by!(name: '脱兎', kana: 'だっと', company: c)
Brand.find_or_create_by!(name: '初日の出', kana: 'はつひので', company: c)
Brand.find_or_create_by!(name: '酒公杯', kana: 'しゅこうはい', company: c)
Brand.find_or_create_by!(name: '六友', kana: 'りくゆう', company: c)


c = Company.create_or_find_by!(name: '佐々木酒造', kana: 'ささきしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市上京区', street_address: '北伊勢屋町727　日暮通椹木町下る', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-841-8106', fax: '075-801-2582', website: 'http://jurakudai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '古都', kana: 'こと', company: c)
Brand.find_or_create_by!(name: 'まるたけえびす', kana: 'まるたけえびす', company: c)
Brand.find_or_create_by!(name: '西陣', kana: 'にしじん', company: c)
Brand.find_or_create_by!(name: '平安四神', kana: 'へいあんししん', company: c)
Brand.find_or_create_by!(name: '京生粋', kana: 'きょうきっすい', company: c)
Brand.find_or_create_by!(name: '聚楽第', kana: 'じゅらくだい', company: c)


c = Company.create_or_find_by!(name: '京都酒造組合', kana: 'きょうとしゅぞうくみあい')
address_attrs = { prefecture_code: 26, city: '京都市左京区', street_address: '吉田河原町1-6　エーデルハイム鴨川100', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-366-6246', fax: '075-366-6247', website: 'http://kyotosake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美しい鴨川', kana: 'うつくしいかもがわ', company: c)


c = Company.create_or_find_by!(name: '松井酒造', kana: 'まついしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市左京区', street_address: '吉田河原町1-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-771-0246', fax: '075-771-3630', website: 'https://matsuishuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '京千歳', kana: 'きょうちとせ', company: c)
Brand.find_or_create_by!(name: '富士千歳', kana: 'ふじちとせ', company: c)
Brand.find_or_create_by!(name: '京春雅', kana: 'きょーかすが', company: c)
Brand.find_or_create_by!(name: '祇園ばやし', kana: 'ぎおんばやし', company: c)
Brand.find_or_create_by!(name: '神蔵', kana: 'かぐら', company: c)
Brand.find_or_create_by!(name: '金瓢', kana: 'きんぴょう', company: c)


c = Company.create_or_find_by!(name: '城陽酒造', kana: 'じょうようしゅぞう')
address_attrs = { prefecture_code: 26, city: '城陽市', street_address: '奈島久保野34-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0774-52-0003', fax: '0774-55-5552', website: 'http://www.joyo-shuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '伏見誉', kana: 'ふしみほまれ', company: c)
Brand.find_or_create_by!(name: '城陽', kana: 'じょうよう', company: c)
Brand.find_or_create_by!(name: '徳次郎', kana: 'とくじろう', company: c)
Brand.find_or_create_by!(name: '陽', kana: 'はる', company: c)


c = Company.create_or_find_by!(name: '東山酒造', kana: 'ひがしやましゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '塩屋町223', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-604-1880', fax: '075-604-1886', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '魯山人', kana: 'ろさんじん', company: c)
Brand.find_or_create_by!(name: '坤滴', kana: 'こんてき', company: c)


c = Company.create_or_find_by!(name: '山本本家', kana: 'やまもとほんけ')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '上油掛町36-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-0211', fax: '075-601-0011', website: 'http://www.yamamotohonke.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松の翆', kana: 'まつのみどり', company: c)
Brand.find_or_create_by!(name: '鉄斎', kana: 'てっさい', company: c)
Brand.find_or_create_by!(name: '水のしらべ', kana: 'みずのしらべ', company: c)
Brand.find_or_create_by!(name: '神聖', kana: 'しんせい', company: c)
Brand.find_or_create_by!(name: '花清水', kana: 'はなしみず', company: c)
Brand.find_or_create_by!(name: '明ごころ', kana: 'あけごころ', company: c)
Brand.find_or_create_by!(name: 'かぐや姫', kana: 'かぐやひめ', company: c)
Brand.find_or_create_by!(name: '京伝来 さらなり', kana: 'きょうでんらい さらなり', company: c)
Brand.find_or_create_by!(name: '蒲田紀行', kana: 'かまたきこう', company: c)
Brand.find_or_create_by!(name: '京舞妓', kana: 'きょうまいこ', company: c)
Brand.find_or_create_by!(name: '名誉冠', kana: 'めいよかん', company: c)


c = Company.create_or_find_by!(name: '藤岡酒造', kana: 'ふじおかしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '今町672-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-4666', fax: '075-611-4343', website: 'http://www.sookuu.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蒼空', kana: 'そうくう', company: c)


c = Company.create_or_find_by!(name: '平和酒造', kana: 'へいわしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '東組町698', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-601-0012', fax: '075-602-0015', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '慶長', kana: 'けいちょう', company: c)


c = Company.create_or_find_by!(name: '都鶴酒造', kana: 'みやこつるしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '御駕籠町151', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-601-5301', fax: '075-611-8281', website: 'http://www.miyakotsuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '伏見正宗', kana: 'ふしみまさむね', company: c)
Brand.find_or_create_by!(name: '都鶴', kana: 'みやこつる', company: c)


c = Company.create_or_find_by!(name: '松山酒造', kana: 'まつやましゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '東堺町472', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-601-2528', fax: '075-601-0100', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '明君', kana: 'めいくん', company: c)


c = Company.create_or_find_by!(name: '玉乃光酒造', kana: 'たまのひかりしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '東堺町545-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-5000', fax: '075-601-0004', website: 'http://www.tamanohikari.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'TAMA', kana: 'たま', company: c)
Brand.find_or_create_by!(name: '青まねきつね', kana: 'あおまねきつね', company: c)
Brand.find_or_create_by!(name: '玉乃光', kana: 'たまのひかり', company: c)


c = Company.create_or_find_by!(name: '鶴正酒造', kana: 'つるまさしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '東堺町474', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-0221', fax: '075-601-6385', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鶴正宗', kana: 'つるまさむね', company: c)


c = Company.create_or_find_by!(name: '日々醸造', kana: 'にちにちじょうぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '城通町628', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://sake.inc', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日日', kana: 'にちにち', company: c)


c = Company.create_or_find_by!(name: '共同酒造', kana: 'きょうどうしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '下板橋町630-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-3221', fax: '075-611-3221', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美山', kana: 'みやま', company: c)


c = Company.create_or_find_by!(name: '山本勘蔵商店', kana: 'やまもとかんぞうしょうてん')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '鷹取', kana: 'たかとり', company: c)


c = Company.create_or_find_by!(name: '松本酒造', kana: 'まつもとしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '横大路三栖大黒町7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-1238', website: 'https://sawayamatsumoto.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '呑足味知', kana: 'のみたりてあじをしる', company: c)
Brand.find_or_create_by!(name: '日出盛', kana: 'ひのでさかり', company: c)
Brand.find_or_create_by!(name: '桃の滴', kana: 'もものしずく', company: c)
Brand.find_or_create_by!(name: '澤屋まつもと', kana: 'さわやまつもと', company: c)


c = Company.create_or_find_by!(name: '齊藤酒造', kana: 'さいとうしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '横大路三栖山城屋敷町105', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-2124', fax: '075-602-8331', website: 'https://www.eikun.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '英勲', kana: 'えいくん', company: c)


c = Company.create_or_find_by!(name: '黄桜酒造', kana: 'きざくらしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '横大路下三栖梶原町53', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-4101', fax: '075-622-3510', website: 'https://kizakura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '銀河交響曲', kana: 'ぎんがこうきょうきょく', company: c)
Brand.find_or_create_by!(name: '黄桜', kana: 'きざくら', company: c)
Brand.find_or_create_by!(name: 'ピアノ', kana: 'ぴあの', company: c)


c = Company.create_or_find_by!(name: '豊澤本店', kana: 'とよさわほんてん')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '榎町769', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-601-5341', fax: '075-622-5620', website: 'http://homepage2.nifty.com/housyuku', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊祝', kana: 'ほうしゅく', company: c)


c = Company.create_or_find_by!(name: '招徳酒造', kana: 'しょうとくしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '舞台町16', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-0296', fax: '075-611-0298', website: 'http://www.shoutoku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '招徳', kana: 'しょうとく', company: c)


c = Company.create_or_find_by!(name: '京姫酒造', kana: 'きょうひめしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '山崎町343', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-622-2323', fax: '075-621-8486', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '京姫', kana: 'きょうひめ', company: c)


c = Company.create_or_find_by!(name: '北川本家', kana: 'きたがわほんけ')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '村上町370-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-1271', fax: '075-611-1273', website: 'https://www.tomio-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ふり袖', kana: 'ふりそで', company: c)
Brand.find_or_create_by!(name: '虎の御門', kana: 'とらのごもん', company: c)
Brand.find_or_create_by!(name: '富翁', kana: 'とみおう', company: c)
Brand.find_or_create_by!(name: '祇園物語', kana: 'ぎおんものがたり', company: c)
Brand.find_or_create_by!(name: '宝寿盃', kana: 'ほうじゅはい', company: c)
Brand.find_or_create_by!(name: '乾風', kana: 'あなぜ', company: c)


c = Company.create_or_find_by!(name: '名誉冠酒造', kana: 'めいよかんしゅぞう')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '名誉冠', kana: 'めいよかん', company: c)


c = Company.create_or_find_by!(name: '増田徳兵衛商店', kana: 'ますだとくべえしょうてん')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '下鳥羽長田町135', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-5151', fax: '075-611-8118', website: 'https://www.tsukinokatsura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月の桂', kana: 'つきのかつら', company: c)
Brand.find_or_create_by!(name: '抱腹絶倒', kana: 'ほうふくぜっとう', company: c)
Brand.find_or_create_by!(name: '吃驚仰天', kana: 'びっくりぎょうてん', company: c)
Brand.find_or_create_by!(name: 'おもてなし 伏味', kana: 'おもてなし ふしみ', company: c)
Brand.find_or_create_by!(name: '稼ぎ頭', kana: 'かせぎがしら', company: c)


c = Company.create_or_find_by!(name: '月桂冠', kana: 'げっけいかん')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '南浜町247', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-623-2105', fax: '075-623-2048', website: 'https://www.gekkeikan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '京山水', kana: 'きょうさんすい', company: c)
Brand.find_or_create_by!(name: '月桂冠', kana: 'げっけいかん', company: c)
Brand.find_or_create_by!(name: 'おしゃべりクジラ', kana: 'おしゃべりくじら', company: c)


c = Company.create_or_find_by!(name: 'キンシ正宗', kana: 'きんしまさむね')
address_attrs = { prefecture_code: 26, city: '京都市伏見区', street_address: '新町11丁目337-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '075-611-5201', fax: '075-611-0080', website: 'http://www.kinshimasamune.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'キンシ正宗', kana: 'きんしまさむね', company: c)
Brand.find_or_create_by!(name: 'BONITA', kana: 'ボニータ', company: c)
Brand.find_or_create_by!(name: '荒武者', kana: 'あらむしゃ', company: c)
Brand.find_or_create_by!(name: '藤袴', kana: 'ふじばかま', company: c)


c = Company.create_or_find_by!(name: '京都酒造', kana: 'きょうとしゅぞう')
address_attrs = { prefecture_code: 26, city: '木津川市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '都正宗', kana: 'みやこまさむね', company: c)


c = Company.create_or_find_by!(name: '相綴酒造', kana: 'そうてつしゅぞう')
address_attrs = { prefecture_code: 26, city: '木津川市', street_address: '山城町綺田出垣外33-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0774-86-3013', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'いづみ川', kana: 'いづみかわ', company: c)


c = Company.create_or_find_by!(name: '河守醸造', kana: 'こうもりじょうぞう')
address_attrs = { prefecture_code: 26, city: '福知山市', street_address: '大江町関', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
Brand.find_or_create_by!(name: 'かさ鶴', kana: 'かさづる', company: c)


c = Company.create_or_find_by!(name: '東和酒造', kana: 'とうわしゅぞう')
address_attrs = { prefecture_code: 26, city: '福知山市', street_address: '上野115', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0773-35-0008', fax: '0773-35-0604', website: 'http://towa-shuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '六歓', kana: 'ろっかん', company: c)
Brand.find_or_create_by!(name: '福知三萬二千石', kana: 'ふくちさんまんにせんごく', company: c)
Brand.find_or_create_by!(name: '武勇', kana: 'ぶゆう', company: c)


c = Company.create_or_find_by!(name: '岡野酒造場', kana: 'おかのしゅぞうじょう')
address_attrs = { prefecture_code: 26, city: '福知山市', street_address: '野花1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0773-33-2008', fax: '0773-33-3110', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ゆら川', kana: 'ゆらがわ', company: c)


c = Company.create_or_find_by!(name: '大石酒造', kana: 'おおいししゅぞう')
address_attrs = { prefecture_code: 26, city: '亀岡市', street_address: 'ひえ田野町佐伯垣内亦13', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0771-22-0632', fax: '0771-23-2188', website: 'https://www.okinazuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '明智越', kana: 'あけちごえ', company: c)
Brand.find_or_create_by!(name: '美山 てんごり', kana: 'みやま てんごり', company: c)
Brand.find_or_create_by!(name: '翁鶴', kana: 'おきなつる', company: c)


c = Company.create_or_find_by!(name: '丹山酒造', kana: 'たんざんしゅぞう')
address_attrs = { prefecture_code: 26, city: '亀岡市', street_address: '横町7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0771-22-0066', fax: '0771-22-2087', website: 'http://www.tanzan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '京の旬', kana: 'きょうのしゅん', company: c)
Brand.find_or_create_by!(name: '飯櫃', kana: 'ぼんき', company: c)
Brand.find_or_create_by!(name: '渚', kana: 'なぎさ', company: c)
Brand.find_or_create_by!(name: '竹林群虎図', kana: 'ちくりんぐんとらず', company: c)
Brand.find_or_create_by!(name: '日出る国', kana: 'ひいずるくに', company: c)
Brand.find_or_create_by!(name: '完熟', kana: 'かんじゅく', company: c)
Brand.find_or_create_by!(name: '風神雷神', kana: 'ふうじんらいじん', company: c)
Brand.find_or_create_by!(name: '天', kana: 'きわみ', company: c)
Brand.find_or_create_by!(name: '雪月花 嵐山', kana: 'せつげつか あらしやま', company: c)
Brand.find_or_create_by!(name: '丹山', kana: 'たんざん', company: c)


c = Company.create_or_find_by!(name: '関酒造', kana: 'せきしゅぞう')
address_attrs = { prefecture_code: 26, city: '亀岡市', street_address: '紺屋町26', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0771-22-0056', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'この花桜', kana: 'このはなざくら', company: c)


c = Company.create_or_find_by!(name: '三盛酒造', kana: 'さんせいしゅぞう')
address_attrs = { prefecture_code: 26, city: '船井郡', street_address: '京丹波町富田坪井55', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0771-82-3051', fax: '0771-82-3195', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '丹波しずく', kana: 'たんばしずく', company: c)
Brand.find_or_create_by!(name: '祝瓢', kana: 'しゅくひょう', company: c)


c = Company.create_or_find_by!(name: '若宮酒造', kana: 'わかみやしゅぞう')
address_attrs = { prefecture_code: 26, city: '綾部市', street_address: '味方町薬師前4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0773-42-0268', fax: '0773-43-0268', website: 'http://www5.nkansai.ne.jp/com/ayakomachi', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '丹ノ国', kana: 'にのくに', company: c)
Brand.find_or_create_by!(name: '綾小町', kana: 'あやこまち', company: c)


c = Company.create_or_find_by!(name: '池田酒造', kana: 'いけだしゅぞう')
address_attrs = { prefecture_code: 26, city: '舞鶴市', street_address: '中山32', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0773-82-0005', fax: '0773-82-0935', website: 'http://www.ikekumo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '加佐一陽', kana: 'かさいちよう', company: c)
Brand.find_or_create_by!(name: '海風', kana: 'うみかぜ', company: c)
Brand.find_or_create_by!(name: '池雲', kana: 'いけくも', company: c)


c = Company.create_or_find_by!(name: 'ハクレイ酒造', kana: 'はくれいしゅぞう')
address_attrs = { prefecture_code: 26, city: '宮津市', street_address: '字由良949', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-26-0001', fax: '0772-26-0123', website: 'http://www.hakurei.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'どっこいせ', kana: 'どっこいせ', company: c)
Brand.find_or_create_by!(name: '酒呑童子', kana: 'しゅてんどうじ', company: c)
Brand.find_or_create_by!(name: '大鬼', kana: 'おおおに', company: c)
Brand.find_or_create_by!(name: '大杉', kana: 'おおすぎ', company: c)
Brand.find_or_create_by!(name: '燗囃', kana: 'かんばやし', company: c)
Brand.find_or_create_by!(name: '香田', kana: 'こうでん', company: c)
Brand.find_or_create_by!(name: '京石川 かたり酒', kana: 'きょういしかわ かたりざけ', company: c)
Brand.find_or_create_by!(name: '白嶺', kana: 'はくれい', company: c)


c = Company.create_or_find_by!(name: '向井酒造', kana: 'むかいしゅぞう')
address_attrs = { prefecture_code: 26, city: '与謝郡', street_address: '伊根町平田67', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-32-0003', fax: '0772-32-0199', website: 'http://www.kuramoto-mukai.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '益荒猛男', kana: 'ますらたけお', company: c)
Brand.find_or_create_by!(name: '伊根満開', kana: 'いねまんかい', company: c)
Brand.find_or_create_by!(name: 'ええにょぼ', kana: 'ええにょぼ', company: c)
Brand.find_or_create_by!(name: '京の春', kana: 'きょうのはる', company: c)


c = Company.create_or_find_by!(name: '峰山酒造', kana: 'みねやましゅぞう')
address_attrs = { prefecture_code: 26, city: '京丹後市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '麗峰', kana: 'れいほう', company: c)


c = Company.create_or_find_by!(name: '吉岡酒造場', kana: 'よしおかしゅぞうじょう')
address_attrs = { prefecture_code: 26, city: '京丹後市', street_address: '弥栄町溝谷1139', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-65-2020', fax: '0772-65-3275', website: 'http://www.yoshinoyama-tango.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉野山', kana: 'よしのやま', company: c)


c = Company.create_or_find_by!(name: '竹野酒造', kana: 'たけのしゅぞう')
address_attrs = { prefecture_code: 26, city: '京丹後市', street_address: '弥栄町溝谷3622-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-65-2021', fax: '0772-65-2871', website: 'http://www.yasakaturu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蔵舞', kana: 'くらぶ', company: c)
Brand.find_or_create_by!(name: '弥栄鶴', kana: 'やさかつる', company: c)
Brand.find_or_create_by!(name: 'きょうおとめ', kana: 'きょうおとめ', company: c)
Brand.find_or_create_by!(name: 'むきだし', kana: 'むきだし', company: c)


c = Company.create_or_find_by!(name: '永雄酒造', kana: 'ながおしゅぞう')
address_attrs = { prefecture_code: 26, city: '京丹後市', street_address: '丹後町中浜643', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-76-0002', fax: '0772-76-1156', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '最中屋茂兵衛', kana: 'もなかやもへい', company: c)
Brand.find_or_create_by!(name: '旭桜', kana: 'あさひさくら', company: c)


c = Company.create_or_find_by!(name: '長老', kana: 'ちょうろう')
address_attrs = { prefecture_code: 26, city: '船井郡', street_address: '京丹波町本庄ノヲテ5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0771-84-0018', fax: '0771-84-0148', website: 'http://www.chourou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '長老', kana: 'ちょうろう', company: c)


c = Company.create_or_find_by!(name: '白糸酒造', kana: 'しらいとしゅぞう')
address_attrs = { prefecture_code: 26, city: '宮津市', street_address: '江尻382', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-27-0001', website: 'http://sake-shiraito.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天橋立へようきなった', kana: 'あまのはしだてへようきなった', company: c)
Brand.find_or_create_by!(name: '白糸', kana: 'しらいと', company: c)


c = Company.create_or_find_by!(name: '細井酒造', kana: 'ほそいしゅぞう')
address_attrs = { prefecture_code: 26, city: '与謝郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '平安京自慢', kana: 'へいあんきょうじまん', company: c)


c = Company.create_or_find_by!(name: '与謝娘酒造', kana: 'よさむすめしゅぞう')
address_attrs = { prefecture_code: 26, city: '与謝郡', street_address: '与謝野町字与謝2-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-42-2834', fax: '0772-43-1117', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'よさ娘', kana: 'よさむすめ', company: c)
Brand.find_or_create_by!(name: '丹後七姫', kana: 'たんごしちひめ', company: c)


c = Company.create_or_find_by!(name: '谷口酒造', kana: 'たにぐちしゅぞう')
address_attrs = { prefecture_code: 26, city: '与謝郡', street_address: '与謝野町与謝70-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-42-2018', website: 'http://若冲.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '丹後物語', kana: 'たんごものがたり', company: c)
Brand.find_or_create_by!(name: '丹後王国', kana: 'たんごおうこく', company: c)
Brand.find_or_create_by!(name: '芝の井', kana: 'しばのい', company: c)
Brand.find_or_create_by!(name: '若冲', kana: 'じゃくちゅう', company: c)


c = Company.create_or_find_by!(name: '白杉酒造', kana: 'しらすぎしゅぞう')
address_attrs = { prefecture_code: 26, city: '京丹後市', street_address: '大宮町周枳954', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-64-2101', fax: '0772-64-2154', website: 'https://ja-jp.facebook.com/235760923200660', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '銀シャリ', kana: 'ぎんしゃり', company: c)
Brand.find_or_create_by!(name: 'BLACK SWAN', kana: 'ブラックスワン', company: c)
Brand.find_or_create_by!(name: '丹後のヒカリ', kana: 'たんごのひかり', company: c)
Brand.find_or_create_by!(name: '白木久', kana: 'しらきく', company: c)


c = Company.create_or_find_by!(name: '大同酒造', kana: 'だいどうしゅぞう')
address_attrs = { prefecture_code: 26, city: '京丹後市', street_address: '大宮町奥大野 226', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-64-2031', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '梅門若竹', kana: 'ばいもんわかたけ', company: c)


c = Company.create_or_find_by!(name: '熊野酒造', kana: 'くまのしゅぞう')
address_attrs = { prefecture_code: 26, city: '京丹後市', street_address: '久美浜町45-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-82-0019', fax: '0772-82-1594', website: 'http://www.kuminoura.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '杜氏の独り言', kana: 'とうじのひとりごと', company: c)
Brand.find_or_create_by!(name: '亀屋', kana: 'かめや', company: c)
Brand.find_or_create_by!(name: '久美の浦', kana: 'くみのうら', company: c)


c = Company.create_or_find_by!(name: '木下酒造', kana: 'きのしたしゅぞう')
address_attrs = { prefecture_code: 26, city: '京丹後市', street_address: '久美浜町甲山1512', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0772-82-0071', fax: '0772-82-1770', website: 'https://www.sake-tamagawa.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '玉川', kana: 'たまがわ', company: c)
Brand.find_or_create_by!(name: 'Time Machine', kana: 'タイムマシーン', company: c)
