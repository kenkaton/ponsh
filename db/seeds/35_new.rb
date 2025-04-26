c = Company.create_or_find_by!(name: '八百新酒造', kana: 'やおしんしゅぞう')
address_attrs = { prefecture_code: 35, city: '岩国市', street_address: '今津町3-18-9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0827-21-3185', fax: '0827-21-3186', website: 'http://www.yaoshin.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '錦乃誉', kana: 'にしきのほまれ', company: c)
Brand.find_or_create_by!(name: '雁木', kana: 'がんぎ', company: c)


c = Company.create_or_find_by!(name: '酒井酒造', kana: 'さかいしゅぞう')
address_attrs = { prefecture_code: 35, city: '岩国市', street_address: '中津町1-1-31', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0827-21-2177', fax: '0827-21-5372', website: 'https://www.gokyo-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ねね', kana: 'ねね', company: c)
Brand.find_or_create_by!(name: '五橋', kana: 'ごきょう', company: c)
Brand.find_or_create_by!(name: '錦上花', kana: 'きんじょうか', company: c)


c = Company.create_or_find_by!(name: '堀江酒場', kana: 'ほりえさかば')
address_attrs = { prefecture_code: 35, city: '岩国市', street_address: '錦町広瀬6746-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0827-72-2527', fax: '0827-72-2868', website: 'http://horiesakaba.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '堀仙江輪', kana: 'くっせんこうりん', company: c)
Brand.find_or_create_by!(name: '清流錦川', kana: 'せいりゅうにしきがわ', company: c)
Brand.find_or_create_by!(name: '金雀', kana: 'きんすずめ', company: c)
Brand.find_or_create_by!(name: '夢雀', kana: 'むじゃく', company: c)
Brand.find_or_create_by!(name: '黒まいん', kana: 'くろまいん', company: c)


c = Company.create_or_find_by!(name: '村重酒造', kana: 'むらしげしゅぞう')
address_attrs = { prefecture_code: 35, city: '岩国市', street_address: '御庄5-101-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0827-46-1111', fax: '0827-46-1117', website: 'http://kinkan-kuromatsu.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日下無双', kana: 'ひのしたむそう', company: c)
Brand.find_or_create_by!(name: '白崎八幡宮の必勝酒', kana: 'しらさきはちまんぐうのひっしょうしゅ', company: c)
Brand.find_or_create_by!(name: '金冠黒松', kana: 'きんかんくろまつ', company: c)
Brand.find_or_create_by!(name: '錦帯橋', kana: 'きんたいきょう', company: c)
Brand.find_or_create_by!(name: 'eight knot', kana: 'エイトノット', company: c)
Brand.find_or_create_by!(name: '八號酵母', kana: 'はちごうこうぼ', company: c)
Brand.find_or_create_by!(name: '村重', kana: 'むらしげ', company: c)


c = Company.create_or_find_by!(name: '旭酒造', kana: 'あさひしゅぞう')
address_attrs = { prefecture_code: 35, city: '岩国市', street_address: '周東町獺越2167-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0827-86-0120', fax: '0827-86-0071', website: 'https://www.asahishuzo.ne.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '獺祭', kana: 'だっさい', company: c)


c = Company.create_or_find_by!(name: '川村酒造場', kana: 'かわむらしゅぞうじょう')
address_attrs = { prefecture_code: 35, city: '大島郡', street_address: '周防大島町小松710-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0820-74-2450', fax: '0820-74-2465', website: 'http://www15.ocn.ne.jp/~shuzan', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東洋男山', kana: 'とうようおとこやま', company: c)


c = Company.create_or_find_by!(name: '金分銅酒造', kana: 'きんふんどうしゅぞう')
address_attrs = { prefecture_code: 35, city: '下松市', street_address: '末武上1202', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0833-44-8605', fax: '0833-44-8606', website: 'http://www.kinfundou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金分銅', kana: 'きんふんどう', company: c)
Brand.find_or_create_by!(name: '幾山河', kana: 'いくさんが', company: c)
Brand.find_or_create_by!(name: '閼伽坏', kana: 'あかつき', company: c)


c = Company.create_or_find_by!(name: 'はつもみぢ', kana: 'はつもみぢ')
address_attrs = { prefecture_code: 35, city: '周南市', street_address: '飯島町1-40', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0834-21-0075', fax: '0834-21-4075', website: 'http://www.hatsumomidi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'MUEZ', kana: 'みゅーず', company: c)
Brand.find_or_create_by!(name: '初紅葉', kana: 'はつもみぢ', company: c)
Brand.find_or_create_by!(name: '回天', kana: 'かいてん', company: c)
Brand.find_or_create_by!(name: '原田', kana: 'はらだ', company: c)


c = Company.create_or_find_by!(name: '山縣本店', kana: 'やまがたほんてん')
address_attrs = { prefecture_code: 35, city: '周南市', street_address: '久米2933', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0834-25-0048', fax: '0834-25-2703', website: 'http://www.yamagt.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松陰', kana: 'しょういん', company: c)
Brand.find_or_create_by!(name: '山縣', kana: 'やまがた', company: c)
Brand.find_or_create_by!(name: 'かほり', kana: 'かほり', company: c)
Brand.find_or_create_by!(name: '毛利公', kana: 'もうりこう', company: c)


c = Company.create_or_find_by!(name: '冨永酒造', kana: 'とみながしゅぞう')
address_attrs = { prefecture_code: 35, city: '周南市', street_address: '櫛ヶ浜西本町72', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0834-25-0345', fax: '0834-25-0346', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富久寿', kana: 'ふくじゅ', company: c)


c = Company.create_or_find_by!(name: '中島屋酒造場', kana: 'なかじまやしゅぞうじょう')
address_attrs = { prefecture_code: 35, city: '周南市', street_address: '土井2-1-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0834-62-2006', fax: '0834-62-4895', website: 'https://nakashimaya1823.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '中島屋', kana: 'なかじまや', company: c)
Brand.find_or_create_by!(name: 'カネナカ', kana: 'かねなか', company: c)
Brand.find_or_create_by!(name: '寿', kana: 'ことぶき', company: c)


c = Company.create_or_find_by!(name: '新中野工業 宝眞珠蔵', kana: 'しんなかのこうぎょう たからしんじゅぐら')
address_attrs = { prefecture_code: 35, city: '周南市', street_address: '平野2-6-13', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0834-62-2020', fax: '0834-63-9176', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '縄文屋久島', kana: 'じょうもんやくしま', company: c)


c = Company.create_or_find_by!(name: '中村酒場', kana: 'なかむらしゅじょう')
address_attrs = { prefecture_code: 35, city: '周南市', street_address: '福川3-16-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0834-62-2651', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勢力', kana: 'せいりき', company: c)


c = Company.create_or_find_by!(name: '男自慢酒造', kana: 'おとこじまんしゅぞう')
address_attrs = { prefecture_code: 35, city: '周南市', street_address: '福川中市町8-33', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0834-32-6609', fax: '0834-32-6609', website: 'http://otokojiman.mods.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '男自慢', kana: 'おとこじまん', company: c)
Brand.find_or_create_by!(name: '龍の尾', kana: 'たつのお', company: c)


c = Company.create_or_find_by!(name: '松田酒造', kana: 'まつだしゅぞう')
address_attrs = { prefecture_code: 35, city: '周南市', street_address: '米光104', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0834-67-2465', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '龍の玉', kana: 'りゅうのたま', company: c)


c = Company.create_or_find_by!(name: '竹内酒造場', kana: 'たけうちしゅぞうじょう')
address_attrs = { prefecture_code: 35, city: '防府市', street_address: '千日2-9-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0835-22-0211', fax: '0835-22-0211', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '錦世界', kana: 'にしきせかい', company: c)


c = Company.create_or_find_by!(name: '新谷酒造', kana: 'あらやしゅぞう')
address_attrs = { prefecture_code: 35, city: '山口市', street_address: '徳地堀1673-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0835-52-0016', fax: '0835-52-0056', website: 'http://wakamusume.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'il Sake', kana: 'いるさけ', company: c)
Brand.find_or_create_by!(name: 'わかむすめ', kana: 'わかむすめ', company: c)


c = Company.create_or_find_by!(name: '長州酒造', kana: 'ちょうしゅうしゅぞう')
address_attrs = { prefecture_code: 35, city: '下関市', street_address: '菊川町吉賀72', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0832-87-0165', fax: '0832-87-4288', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '長門菊川', kana: 'ながときくかわ', company: c)
Brand.find_or_create_by!(name: '天美', kana: 'てんび', company: c)


c = Company.create_or_find_by!(name: '下関酒造', kana: 'しものせきしゅぞう')
address_attrs = { prefecture_code: 35, city: '下関市', street_address: '幡生宮の下町8-23', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '083-252-1877', fax: '083-252-5996', website: 'https://www.sekimusume.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '海響', kana: 'かいきょう', company: c)
Brand.find_or_create_by!(name: '関娘', kana: 'せきむすめ', company: c)
Brand.find_or_create_by!(name: '獅道', kana: 'シド', company: c)
Brand.find_or_create_by!(name: 'はじめてのにほんしゅ', kana: 'はじめてのにほんしゅ', company: c)
Brand.find_or_create_by!(name: '蔵人の自慢酒', kana: 'くらびとのじまんさけ', company: c)
Brand.find_or_create_by!(name: 'ふくのひれ酒', kana: 'ふくのひれざけ', company: c)


c = Company.create_or_find_by!(name: '山城屋酒造', kana: 'やましろやしゅぞう')
address_attrs = { prefecture_code: 35, city: '山口市', street_address: '道場門前2-1-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '083-922-5757', fax: '083-921-2057', website: 'https://sugihime.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鴻城乃誉', kana: 'こうじょうのほまれ', company: c)
Brand.find_or_create_by!(name: '杉姫', kana: 'すぎひめ', company: c)


c = Company.create_or_find_by!(name: '三浦酒造', kana: 'みうらしゅぞう')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '佐々並2607', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0838-56-0005', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '銀嶺', kana: 'ぎんれい', company: c)


c = Company.create_or_find_by!(name: '瀧口酒造', kana: 'たきぐちしゅぞう')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '明木3240', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0838-55-0030', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '長陽旭鶴', kana: 'ちょうようあさひつる', company: c)


c = Company.create_or_find_by!(name: '大嶺酒造', kana: 'おおみねしゅぞう')
address_attrs = { prefecture_code: 35, city: '美祢市', street_address: '秋芳町別府2585-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0837-64-0700', website: 'http://www.ohmine.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'Ohmine', kana: 'おおみね', company: c)
Brand.find_or_create_by!(name: 'ゆきおんな', kana: 'ゆきおんな', company: c)


c = Company.create_or_find_by!(name: '金光酒造', kana: 'かねみつしゅぞう')
address_attrs = { prefecture_code: 35, city: '山口市', street_address: '嘉川5031', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '083-989-2020', fax: '083-989-2021', website: 'http://www.santouka.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山頭火', kana: 'さんとうか', company: c)


c = Company.create_or_find_by!(name: '三井酒造場', kana: 'みいしゅぞうじょう')
address_attrs = { prefecture_code: 35, city: '宇部市', street_address: '床波1-18-12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0836-51-9012', fax: '0836-51-0220', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '濤乃花', kana: 'なみのはな', company: c)


c = Company.create_or_find_by!(name: '永山酒造', kana: 'ながやましゅぞう')
address_attrs = { prefecture_code: 35, city: '山陽小野田市', street_address: '厚狭367-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0836-73-1234', fax: '0836-72-0012', website: 'https://www.yamanosake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ふぐひれ酒', kana: 'ふぐひれざけ', company: c)
Brand.find_or_create_by!(name: '山猿', kana: 'やまざる', company: c)
Brand.find_or_create_by!(name: '猿楽', kana: 'さるがく', company: c)
Brand.find_or_create_by!(name: '晋作', kana: 'しんさく', company: c)
Brand.find_or_create_by!(name: '旬彩', kana: 'しゅんさい', company: c)
Brand.find_or_create_by!(name: '奇兵隊', kana: 'きへいたい', company: c)
Brand.find_or_create_by!(name: '高泊', kana: 'たかとまり', company: c)
Brand.find_or_create_by!(name: '精一杯', kana: 'せいいっぱい', company: c)
Brand.find_or_create_by!(name: '長州ファイブ', kana: 'ちょうしゅうふぁいぶ', company: c)
Brand.find_or_create_by!(name: '龍王乃杜', kana: 'りゅうおうのもり', company: c)
Brand.find_or_create_by!(name: '金銀銅男山', kana: 'きんぎんどうおとこやま', company: c)


c = Company.create_or_find_by!(name: '中村酒造', kana: 'なかむらしゅぞう')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '椿東3108-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0838-22-0137', fax: '0838-22-9601', website: 'http://www.takarabune-hagi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宝船', kana: 'たからぶね', company: c)


c = Company.create_or_find_by!(name: '一○酒造', kana: 'いちまるしゅぞう')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '今古萩町54', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0838-22-0014', fax: '0838-22-0014', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萩紀行', kana: 'はぎきこう', company: c)
Brand.find_or_create_by!(name: '萩浪漫', kana: 'はぎろまん', company: c)
Brand.find_or_create_by!(name: '一○正宗', kana: 'いちまるまさむね', company: c)


c = Company.create_or_find_by!(name: '岩崎酒造', kana: 'いわさきしゅぞう')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '東田町58', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0838-22-0024', fax: '0838-22-8611', website: 'http://www.fukumusume.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '長陽福娘', kana: 'ちょうようふくむすめ', company: c)


c = Company.create_or_find_by!(name: '大丸酒造', kana: 'だいまるしゅぞう')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '椿2997-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0838-22-0023', fax: '0838-22-3923', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '友栄正宗', kana: 'ともえまさむね', company: c)


c = Company.create_or_find_by!(name: '岡崎酒造場', kana: 'おかざきしゅぞうじょう')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '川上464-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0838-54-2023', fax: '0838-54-2220', website: 'http://www.chomonkyo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '長門峡', kana: 'ちょうもんきょう', company: c)
Brand.find_or_create_by!(name: '和る', kana: 'わる', company: c)


c = Company.create_or_find_by!(name: '白井酒造本店', kana: 'しらいしゅぞうほんてん')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '高佐下404', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '08388-8-0003', fax: '08388-8-0003', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白泉', kana: 'はくせん', company: c)


c = Company.create_or_find_by!(name: '八千代酒造', kana: 'やちよしゅぞう')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '吉部下3306', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '08388-6-0221', fax: '08388-6-0223', website: 'http://www.e-hagi.jp/~yatiyo', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八千代', kana: 'やちよ', company: c)
Brand.find_or_create_by!(name: 'ROOM', kana: 'ルーム', company: c)


c = Company.create_or_find_by!(name: '永山本家酒造場', kana: 'ながやまほんけしゅぞうじょう')
address_attrs = { prefecture_code: 35, city: '宇部市', street_address: '車地138', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0836-62-0088', fax: '0836-62-0509', website: 'https://www.domainetaka.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '男山', kana: 'おとこやま', company: c)
Brand.find_or_create_by!(name: '貴', kana: 'たか', company: c)


c = Company.create_or_find_by!(name: '澄川酒造場', kana: 'すみかわしゅぞうじょう')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '中小川611', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0838-74-0001', fax: '0838-74-0003', website: 'https://toyobijin.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '身土不二', kana: 'しんどふじ', company: c)
Brand.find_or_create_by!(name: '東洋美人', kana: 'とうようびじん', company: c)


c = Company.create_or_find_by!(name: '阿武の鶴酒造', kana: 'あぶのつるしゅぞう')
address_attrs = { prefecture_code: 35, city: '阿武郡', street_address: '阿武町奈古2796', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0838-82-2003', fax: '0838-82-3443', website: 'https://ja-jp.facebook.com/miyoshi35', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '阿武の鶴', kana: 'あぶのつる', company: c)
Brand.find_or_create_by!(name: '三好', kana: 'みよし', company: c)


c = Company.create_or_find_by!(name: '山根酒造', kana: 'やまねしゅぞう')
address_attrs = { prefecture_code: 35, city: '萩市', street_address: '三見3335-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0838-27-0006', fax: '0838-27-0657', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三福', kana: 'さんぷく', company: c)


c = Company.create_or_find_by!(name: '小崎酒造', kana: 'こさきしゅぞう')
address_attrs = { prefecture_code: 35, city: '長門市', street_address: '東深川1159', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0837-22-2433', fax: '0837-22-1604', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鯨祭', kana: 'くじらまつり', company: c)
Brand.find_or_create_by!(name: '青海島', kana: 'おうみじま', company: c)
Brand.find_or_create_by!(name: '一粒万倍', kana: 'いちりゅうまんばい', company: c)


c = Company.create_or_find_by!(name: '大津酒類醸造', kana: 'おおつしゅるいじょうぞう')
address_attrs = { prefecture_code: 35, city: '長門市', street_address: '油谷久富341', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0837-32-0334', fax: '0837-32-0429', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'みすゞ', kana: 'みすず', company: c)
Brand.find_or_create_by!(name: '楊貴妃伝説', kana: 'ようきひでんせつ', company: c)


c = Company.create_or_find_by!(name: '西谷酒造', kana: 'にしたにしゅぞう')
address_attrs = { prefecture_code: 35, city: '下関市', street_address: '豊北町阿川548', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '083-786-1020', fax: '0837-86-1327', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '角島大橋', kana: 'つのしまおおはし', company: c)
Brand.find_or_create_by!(name: '阿鼓櫻', kana: 'あこさくら', company: c)


c = Company.create_or_find_by!(name: '明寿酒造', kana: 'めいじゅしゅぞう')
address_attrs = { prefecture_code: 35, city: '下関市', street_address: '豊北町田耕2985', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '083-783-0008', fax: '0837-83-0715', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '明寿', kana: 'めいじゅ', company: c)


c = Company.create_or_find_by!(name: '琴泉酒造', kana: 'きんせんしゅぞう')
address_attrs = { prefecture_code: 35, city: '柳井市', street_address: '大字柳井津488', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0820-22-0126', fax: '0820-23-0680', website: 'http://www1.ocn.ne.jp/~kyokuju', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭寿', kana: 'きょくじゅ', company: c)
