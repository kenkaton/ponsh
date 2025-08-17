c = Company.in_prefecture(32).find_or_create_by!(name: '隠岐酒造', kana: 'おきしゅぞう')
address_attrs = { prefecture_code: 32, city: '隠岐郡', street_address: '隠岐の島町原田174', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '08512-2-1111', fax: '08512-2-4585', website: 'http://okishuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '承久の宴', kana: 'じょうきゅうのうたげ', company: c)
Brand.find_or_create_by!(name: '隠岐誉', kana: 'おきほまれ', company: c)
Brand.find_or_create_by!(name: '高正宗', kana: 'たかまさむね', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '天佑酒造', kana: 'てんゆうしゅぞう')
address_attrs = { prefecture_code: 32, city: '松江市', street_address: '和多見町153-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0852-21-4128', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭天佑', kana: 'あさひてんゆう', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '米田酒造', kana: 'よねだしゅぞう')
address_attrs = { prefecture_code: 32, city: '松江市', street_address: '東本町3-59', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0852-22-3232', fax: '0852-22-3233', website: 'http://www.toyonoaki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊の秋', kana: 'とよのあき', company: c)
Brand.find_or_create_by!(name: '美保', kana: 'みほ', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '國暉酒造', kana: 'こっきしゅぞう')
address_attrs = { prefecture_code: 32, city: '松江市', street_address: '東茶町8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0852-25-0123', fax: '0852-25-0124', website: 'http://www.kokki.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '國暉', kana: 'こっき', company: c)
Brand.find_or_create_by!(name: '八塩折仕込', kana: 'やしおりじこみ', company: c)
Brand.find_or_create_by!(name: '花やしお', kana: 'はなやしお', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '李白酒造', kana: 'りはくしゅぞう')
address_attrs = { prefecture_code: 32, city: '松江市', street_address: '石橋町335', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0852-26-5555', fax: '0852-26-5557', website: 'https://rihaku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '李白', kana: 'りはく', company: c)
Brand.find_or_create_by!(name: '四季娘', kana: 'しきむすめ', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '田部竹下酒造', kana: 'たなべたけしたしゅぞう')
address_attrs = { prefecture_code: 32, city: '雲南市', street_address: '掛合町掛合955-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-62-9880', fax: '0854-62-9881', website: 'https://www.tanabe-takeshita.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '試験醸造 PROTOTYPE 2023', kana: 'しけんじょうぞう', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '竹下本店', kana: 'たけしたほんてん')
address_attrs = { prefecture_code: 32, city: '雲南市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: 'KAKEYA', kana: 'かけや', company: c)
Brand.find_or_create_by!(name: '都の西北', kana: 'みやこのせいほく', company: c)
Brand.find_or_create_by!(name: '我が道を行く', kana: 'わがみちをいく', company: c)
Brand.find_or_create_by!(name: '出雲誉', kana: 'いずもほまれ', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '赤名酒造', kana: 'あかなしゅぞう')
address_attrs = { prefecture_code: 32, city: '飯石郡', street_address: '飯南町赤名23', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-76-2016', fax: '0854-76-2016', website: 'http://kinunomine.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '絹乃峰', kana: 'きぬのみね', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '酒持田本店', kana: 'さけもちだほんてん')
address_attrs = { prefecture_code: 32, city: '出雲市', street_address: '平田町785', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0853-62-2023', fax: '0853-62-2075', website: 'https://www.sakemochida.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'うさぎ雲', kana: 'うさぎぐも', company: c)
Brand.find_or_create_by!(name: '出雲国楯縫郡', kana: 'いずものくにたてぬいごおり', company: c)
Brand.find_or_create_by!(name: 'ヤマサン正宗', kana: 'やまさんまさむね', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '天界酒造', kana: 'てんかいしゅぞう')
address_attrs = { prefecture_code: 32, city: '安来市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '天界', kana: 'てんかい', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '金鳳酒造', kana: 'きんぽうしゅぞう')
address_attrs = { prefecture_code: 32, city: '安来市', street_address: '清井町343', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-27-0111', fax: '0854-27-0112', website: 'http://www.kinpo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'へるん', kana: 'へるん', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '吉田酒造', kana: 'よしだしゅぞう')
address_attrs = { prefecture_code: 32, city: '安来市', street_address: '広瀬町広瀬1216', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-32-2258', fax: '0854-32-2267', website: 'https://e-gassan.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美月', kana: 'みづき', company: c)
Brand.find_or_create_by!(name: '智則', kana: 'とものり', company: c)
Brand.find_or_create_by!(name: '月山', kana: 'がっさん', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '青砥酒造', kana: 'あおとしゅぞう')
address_attrs = { prefecture_code: 32, city: '安来市', street_address: '広瀬町布部1164-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-36-0006', fax: '0854-36-0120', website: 'http://www.aotoshuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蒼斗七星', kana: 'あおとしちせい', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '富士酒造', kana: 'ふじしゅぞう')
address_attrs = { prefecture_code: 32, city: '出雲市', street_address: '今市町1403', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0853-21-1510', fax: '0853-21-1584', website: 'https://izumofuji.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '出雲富士', kana: 'いずもふじ', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '旭日酒造', kana: 'あさひしゅぞう')
address_attrs = { prefecture_code: 32, city: '出雲市', street_address: '今市町662', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0853-21-0039', fax: '0853-21-3216', website: 'http://www.jujiasahi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八千矛', kana: 'やちほこ', company: c)
Brand.find_or_create_by!(name: '淡雪仕立て', kana: 'あわゆきじたて', company: c)
Brand.find_or_create_by!(name: '出雲だより', kana: 'いずもだより', company: c)
Brand.find_or_create_by!(name: '十旭日', kana: 'じゅうじあさひ', company: c)
Brand.find_or_create_by!(name: '酒文', kana: 'さかぶん', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '板倉酒造', kana: 'いたくらしゅぞう')
address_attrs = { prefecture_code: 32, city: '出雲市', street_address: '塩冶町468', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0853-21-0434', fax: '0853-21-3593', website: 'https://www.tenon.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天穏', kana: 'てんおん', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '一宮酒造', kana: 'いちのみやしゅぞう')
address_attrs = { prefecture_code: 32, city: '大田市', street_address: '大田町大田ハ271-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-82-0057', fax: '0854-82-9085', website: 'http://www.ichinomiya-s.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '風雲剣鬼伝 丹下右近', kana: 'たんげうこん', company: c)
Brand.find_or_create_by!(name: '石見銀山', kana: 'いわみぎんざん', company: c)
Brand.find_or_create_by!(name: '理可', kana: 'りか', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '木村酒造', kana: 'きむらしゅぞう')
address_attrs = { prefecture_code: 32, city: '大田市', street_address: '大代町大家1609', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-85-2011', fax: '0854-85-2013', website: 'http://rafusen.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '羅浮仙', kana: 'らふせん', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '都錦酒造', kana: 'みやこにしきしゅぞう')
address_attrs = { prefecture_code: 32, city: '江津市', street_address: '嘉久志町イ1415', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0855-52-2129', fax: '0855-52-1599', website: 'https://miyakonishiki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '都錦', kana: 'みやこにしき', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '加茂福酒造', kana: 'かもふくしゅぞう')
address_attrs = { prefecture_code: 32, city: '邑智郡', street_address: '邑南町中野2405', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0855-95-0318', fax: '0855-95-0548', website: 'http://www.kamofuku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '加茂福', kana: 'かもふく', company: c)
Brand.find_or_create_by!(name: '悪乃代官', kana: 'わるのだいかん', company: c)
Brand.find_or_create_by!(name: '死神', kana: 'しにがみ', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '玉櫻酒造', kana: 'たまざくらしゅぞう')
address_attrs = { prefecture_code: 32, city: '邑智郡', street_address: '邑南町原村148', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0855-83-0015', fax: '0855-83-1617', website: 'http://www.tamazakura.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '玉櫻', kana: 'たまざくら', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '池月酒造', kana: 'いけづきしゅぞう')
address_attrs = { prefecture_code: 32, city: '邑智郡', street_address: '邑南町阿須那1-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0855-88-0008', fax: '0855-88-0346', website: 'http://ikezuki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '誉池月', kana: 'ほまれいけづき', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '三桜酒造', kana: 'みつざくらしゅぞう')
address_attrs = { prefecture_code: 32, city: '浜田市', street_address: '黒川町909-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0855-22-0055', fax: '0855-22-8218', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三つ櫻', kana: 'みつざくら', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '右田本店', kana: 'みぎたほんてん')
address_attrs = { prefecture_code: 32, city: '益田市', street_address: '本町3-30', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0856-23-0028', fax: '0856-24-0995', website: 'http://migitahonten.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宗味', kana: 'そうみ', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '岡田屋本店', kana: 'おかだやほんてん')
address_attrs = { prefecture_code: 32, city: '益田市', street_address: '染羽町5-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0856-22-0127', fax: '0856-23-6747', website: 'http://kikuyasaka.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊弥栄', kana: 'きくやさか', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '中原酒造', kana: 'なかはらしゅぞう')
address_attrs = { prefecture_code: 32, city: '益田市', street_address: '七尾町9-31', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0856-22-0025', fax: '0856-23-0025', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金冠白菊', kana: 'きんかんしらぎく', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '桑原酒場', kana: 'くわばらさかば')
address_attrs = { prefecture_code: 32, city: '益田市', street_address: '中島町ロ171', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0856-23-2263', fax: '0856-22-0063', website: 'https://www.facebook.com/fusouduru', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '扶桑鶴', kana: 'ふそうづる', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '王祿酒造', kana: 'おうろくしゅぞう')
address_attrs = { prefecture_code: 32, city: '松江市', street_address: '東出雲町揖屋484', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0852-52-2010', fax: '0852-52-2011', website: 'http://www.ouroku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '意宇', kana: 'おう', company: c)
Brand.find_or_create_by!(name: '丈径', kana: 'たけみち', company: c)
Brand.find_or_create_by!(name: '王祿', kana: 'おうろく', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '台雲酒造', kana: 'たいうんしゅぞう')
address_attrs = { prefecture_code: 32, city: '出雲市', street_address: '斐川町中洲1170', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://www.taiunsake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '台中六十五', kana: 'たいちゅう65', company: c)
Brand.find_or_create_by!(name: '台雲', kana: 'たいうん', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '大社正宗醸造', kana: 'たいしゃまさむねじょうぞう')
address_attrs = { prefecture_code: 32, city: '出雲市', street_address: '大社町修理免803', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0853-53-2052', fax: '0853-53-2180', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神遊', kana: 'かみあそび', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '立花酒造場', kana: 'たちばなしゅぞうじょう')
address_attrs = { prefecture_code: 32, city: '出雲市', street_address: '西神西町123', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0853-43-1010', fax: '0853-43-1010', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金紋八雲', kana: 'きんもんやくも', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '松本酒造', kana: 'まつもとしゅぞう')
address_attrs = { prefecture_code: 32, city: '雲南市', street_address: '大東町大東1855', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-43-2044', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '出雲千代鶴', kana: 'いずもちよづる', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '木次酒造', kana: 'きすきしゅぞう')
address_attrs = { prefecture_code: 32, city: '雲南市', street_address: '木次町木次477-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-42-0072', fax: '0854-42-0073', website: 'http://www.kisukisyuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '泡雲', kana: 'あわくも', company: c)
Brand.find_or_create_by!(name: '八塩折酒', kana: 'やしおりのさけ', company: c)
Brand.find_or_create_by!(name: '美波太平洋', kana: 'みなみたいへいよう', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '奥出雲酒造', kana: 'おくいずもしゅぞう')
address_attrs = { prefecture_code: 32, city: '仁多郡', street_address: '奥出雲町亀嵩1380-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-57-0888', fax: '0854-57-0080', website: 'http://www.okuizumosyuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '奥出雲の一滴', kana: 'おくいずものいってき', company: c)
Brand.find_or_create_by!(name: '奥出雲', kana: 'おくいずも', company: c)
Brand.find_or_create_by!(name: '千寿之泉', kana: 'せんじゅのいずみ', company: c)
Brand.find_or_create_by!(name: '仁多米', kana: 'にたまい', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '簸上清酒', kana: 'ひかみせいしゅ')
address_attrs = { prefecture_code: 32, city: '仁多郡', street_address: '奥出雲町横田1222', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-52-1331', fax: '0854-52-2446', website: 'http://www.sake-hikami.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '七冠馬', kana: 'ななかんば', company: c)
Brand.find_or_create_by!(name: '簸上正宗', kana: 'ひかみまさむね', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '若林酒造', kana: 'わかばやししゅぞう')
address_attrs = { prefecture_code: 32, city: '大田市', street_address: '温泉津町小浜ロ73', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0855-65-2007', fax: '0855-65-3549', website: 'http://www.kaishun.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '開春', kana: 'かいしゅん', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '日本海酒造', kana: 'にほんかいしゅぞう')
address_attrs = { prefecture_code: 32, city: '浜田市', street_address: '三隅町湊浦80', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0855-32-1221', fax: '0855-32-0979', website: 'http://www.kan-nihonkai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '環日本海', kana: 'かんにほんかい', company: c)
Brand.find_or_create_by!(name: '渦', kana: 'うず', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '下森酒造場', kana: 'したもりしゅぞうじょう')
address_attrs = { prefecture_code: 32, city: '鹿足郡', street_address: '津和野町左鐙992', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0856-76-0002', fax: '0856-76-0132', website: 'http://www.sabumi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'しまね寶泉', kana: 'しまねほうせん', company: c)
Brand.find_or_create_by!(name: '菊露', kana: 'きくつゆ', company: c)
Brand.find_or_create_by!(name: '幻想', kana: 'げんそう', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '古橋酒造', kana: 'ふるはししゅぞう')
address_attrs = { prefecture_code: 32, city: '鹿足郡', street_address: '津和野町後田ロ196', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0856-72-0048', fax: '0856-72-0098', website: 'http://uijin.madbam.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初陣', kana: 'ういじん', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '石州酒造', kana: 'せきしゅうしゅぞう')
address_attrs = { prefecture_code: 32, city: '鹿足郡', street_address: '津和野町後田ロ218', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0856-72-0036', fax: '0856-72-3356', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '魁龍', kana: 'かいりょう', company: c)
Brand.find_or_create_by!(name: '稲の露', kana: 'いねのつゆ', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '華泉酒造', kana: 'かせんしゅぞう')
address_attrs = { prefecture_code: 32, city: '鹿足郡', street_address: '津和野町後田ロ221', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0856-72-0036', fax: '0856-72-3356', website: 'https://kasen1730.ocnk.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '華泉', kana: 'かせん', company: c)
Brand.find_or_create_by!(name: '夏さかり', kana: 'なつさかり', company: c)
Brand.find_or_create_by!(name: '奏', kana: 'そう', company: c)
Brand.find_or_create_by!(name: '津和野盛', kana: 'つわのさかり', company: c)
Brand.find_or_create_by!(name: '㐂津禰', kana: 'きつね', company: c)


c = Company.in_prefecture(32).find_or_create_by!(name: '財間酒場', kana: 'ざいまさかば')
address_attrs = { prefecture_code: 32, city: '鹿足郡', street_address: '津和野町中座口34', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0856-72-0039', fax: '0856-72-0252', website: 'https://www.zaimasakaba.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '高砂', kana: 'たかさご', company: c)
Brand.find_or_create_by!(name: '鴎外', kana: 'おうがい', company: c)
