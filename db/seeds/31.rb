c = Company.in_prefecture(31).find_or_create_by!(name: '中川酒造', kana: 'なかがわしゅぞう')
address_attrs = { prefecture_code: 31, city: '鳥取市', street_address: '立川町2-305', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0857-24-9330', fax: '0857-26-3806', website: 'http://tottori-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福寿海', kana: 'ふくじゅかい', company: c)
Brand.find_or_create_by!(name: 'いなば鶴', kana: 'いなばつる', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '太田酒造場', kana: 'おおたしゅぞうじょう')
address_attrs = { prefecture_code: 31, city: '八頭郡', street_address: '若桜町若桜1223-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-82-0611', fax: '0858-82-0612', website: 'https://www.bentenmusume.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '弁天娘', kana: 'べんてんむすめ', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '君司酒造', kana: 'きみつかさしゅぞう')
address_attrs = { prefecture_code: 31, city: '鳥取市', street_address: '秋里153-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0857-23-3471', fax: '0857-22-3477', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '君司', kana: 'きみつかさ', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '高田酒造場', kana: 'たかだしゅぞうじょう')
address_attrs = { prefecture_code: 31, city: '岩美郡', street_address: '岩美町浦富1694', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0857-72-0271', fax: '0857-72-3283', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '瑞泉', kana: 'ずいせん', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '藤井酒造', kana: 'ふじいしゅぞう')
address_attrs = { prefecture_code: 31, city: '東伯郡', street_address: '三朝町三朝870-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-43-0856', fax: '0858-43-0856', website: 'http://www.fujii-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白狼', kana: 'はくろう', company: c)
Brand.find_or_create_by!(name: '三朝正宗', kana: 'みささまさむね', company: c)
Brand.find_or_create_by!(name: '三徳桜', kana: 'みとくざくら', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '高田酒造', kana: 'たかたしゅぞう')
address_attrs = { prefecture_code: 31, city: '倉吉市', street_address: '西仲町2633', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-23-1511', fax: '0858-23-1512', website: 'http://www.shikun.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '此君', kana: 'しくん', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '元帥酒造', kana: 'げんすいしゅぞう')
address_attrs = { prefecture_code: 31, city: '倉吉市', street_address: '東仲町2573', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-22-5020', fax: '0858-22-5021', website: 'http://www.gensui.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '元帥', kana: 'げんすい', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '中井酒造', kana: 'なかいしゅぞう')
address_attrs = { prefecture_code: 31, city: '倉吉市', street_address: '中河原555', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-28-0821', fax: '0858-28-0898', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '丈', kana: 'たけ', company: c)
Brand.find_or_create_by!(name: '八潮', kana: 'やしお', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '稲田本店', kana: 'いなだほんてん')
address_attrs = { prefecture_code: 31, city: '米子市', street_address: '夜見町325-16', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0859-29-1108', fax: '0859-29-1112', website: 'https://www.inata.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'トップ水雷', kana: 'とっぷすいらい', company: c)
Brand.find_or_create_by!(name: '稲田姫', kana: 'いなたひめ', company: c)
Brand.find_or_create_by!(name: 'いくす -IKU’S-', kana: 'いくす', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '千代むすび酒造', kana: 'ちよむすびしゅぞう')
address_attrs = { prefecture_code: 31, city: '境港市', street_address: '大正町131', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0859-42-3191', fax: '0859-42-3515', website: 'http://www.chiyomusubi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千代むすび', kana: 'ちよむすび', company: c)
Brand.find_or_create_by!(name: '長年', kana: 'ながとし', company: c)
Brand.find_or_create_by!(name: '真寿鏡', kana: 'ますかがみ', company: c)
Brand.find_or_create_by!(name: 'SORAH', kana: 'そら', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '西本酒造場', kana: 'にしもとしゅぞうじょう')
address_attrs = { prefecture_code: 31, city: '鳥取市', street_address: '青谷町青谷3960', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0857-85-0917', fax: '0857-85-0797', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美人長', kana: 'びじんちょう', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '山根酒造場', kana: 'やまねしゅぞうじょう')
address_attrs = { prefecture_code: 31, city: '鳥取市', street_address: '青谷町大坪249', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0857-85-0730', fax: '0857-85-0465', website: 'https://hiokizakura.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日置桜', kana: 'ひおきざくら', company: c)
Brand.find_or_create_by!(name: '青水緑山', kana: 'せいすいりょくざん', company: c)
Brand.find_or_create_by!(name: '蘭の舞', kana: 'らんのまい', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '福羅酒造', kana: 'ふくらしゅぞう')
address_attrs = { prefecture_code: 31, city: '東伯郡', street_address: '湯梨浜町松崎448', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-32-2121', fax: '0858-32-2122', website: 'http://www.fukura-syuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福泉', kana: 'ふくいずみ', company: c)
Brand.find_or_create_by!(name: '梨吟醸', kana: 'なしぎんじょう', company: c)
Brand.find_or_create_by!(name: '大山どり', kana: 'だいせんどり', company: c)
Brand.find_or_create_by!(name: '山陰東郷', kana: 'さんいんとうごう', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '諏訪酒造', kana: 'すわしゅぞう')
address_attrs = { prefecture_code: 31, city: '八頭郡', street_address: '智頭町智頭451', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-75-0618', fax: '0858-75-3082', website: 'http://suwaizumi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '諏訪泉', kana: 'すわいずみ', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '梅津酒造', kana: 'うめづしゅぞう')
address_attrs = { prefecture_code: 31, city: '東伯郡', street_address: '北栄町大谷1350', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-37-2008', fax: '0858-37-2023', website: 'https://umetsu-sake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天宝', kana: 'てんぽう', company: c)
Brand.find_or_create_by!(name: '酒仕込み醸醸', kana: 'さけじこみじょうじょう', company: c)
Brand.find_or_create_by!(name: 'うまいがな', kana: 'うまいがな', company: c)
Brand.find_or_create_by!(name: '冨玲', kana: 'ふれー', company: c)
Brand.find_or_create_by!(name: '野花', kana: 'のきょう', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '原酒造', kana: 'はらしゅぞう')
address_attrs = { prefecture_code: 31, city: '東伯郡', street_address: '琴浦町大字八橋1481', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-53-2011', fax: '0858-53-2012', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山陰酔喜元', kana: 'さんいんよいきげん', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '江原酒造本店', kana: 'えばらしゅぞうほんてん')
address_attrs = { prefecture_code: 31, city: '東伯郡', street_address: '琴浦町八橋1400', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-52-2203', fax: '0858-52-2204', website: 'http://ebara-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福永', kana: 'ふくなが', company: c)
Brand.find_or_create_by!(name: '伯陽長', kana: 'はくようちょう', company: c)
Brand.find_or_create_by!(name: '琴浦', kana: 'ことうら', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '大谷酒造', kana: 'おおたにしゅぞう')
address_attrs = { prefecture_code: 31, city: '東伯郡', street_address: '琴浦町浦安368', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0858-53-0111', fax: '0858-53-0112', website: 'https://takaisami.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '中山郷 夢語', kana: 'なかやまのさと ゆめかたらい', company: c)
Brand.find_or_create_by!(name: '鷹勇', kana: 'たかいさみ', company: c)
Brand.find_or_create_by!(name: '染井櫻', kana: 'そめいざくら', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '久米桜酒造', kana: 'くめざくらしゅぞう')
address_attrs = { prefecture_code: 31, city: '西伯郡', street_address: '伯耆町丸山1740-50', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0859-68-6555', fax: '0859-68-6556', website: 'http://g-beer.jp/kumezakura', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '久米桜', kana: 'くめざくら', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '上代', kana: 'かみだい')
address_attrs = { prefecture_code: 31, city: '西伯郡', street_address: '伯耆町福岡2073-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0859-62-1711', fax: '0859-62-1715', website: 'http://www.chukai.ne.jp/~kamidai', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '上代', kana: 'かみだい', company: c)


c = Company.in_prefecture(31).find_or_create_by!(name: '大岩酒造本店', kana: 'おおいわしゅぞうほんてん')
address_attrs = { prefecture_code: 31, city: '日野郡', street_address: '江府町江尾1872', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0859-75-2404', fax: '0859-75-3535', website: 'http://www.syuhou-iwaizumi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '秀峰 岩泉', kana: 'しゅうほう いわいずみ', company: c)
