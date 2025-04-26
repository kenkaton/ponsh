c = Company.create_or_find_by!(name: '田中酒造', kana: 'たなかしゅぞう')
address_attrs = { prefecture_code: 41, city: '佐賀市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '芙蓉', kana: 'ふよう', company: c)


c = Company.create_or_find_by!(name: '大和酒造', kana: 'やまとしゅぞう')
address_attrs = { prefecture_code: 41, city: '佐賀市', street_address: '大和町尼寺2620', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0952-62-3535', fax: '0952-62-3536', website: 'https://sake-yamato.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '肥前杜氏', kana: 'ひぜんとうじ', company: c)
Brand.find_or_create_by!(name: '窓の月', kana: 'まどのつき', company: c)
Brand.find_or_create_by!(name: 'アカカベ', kana: 'あかかべ', company: c)
Brand.find_or_create_by!(name: '芙蓉', kana: 'ふよう', company: c)
Brand.find_or_create_by!(name: '和', kana: 'なごみ', company: c)
Brand.find_or_create_by!(name: '三國山', kana: 'みくにやま', company: c)
Brand.find_or_create_by!(name: '春の海', kana: 'はるのうみ', company: c)
Brand.find_or_create_by!(name: 'バルーンパック', kana: 'ばるーんぱっく', company: c)


c = Company.create_or_find_by!(name: '吉武酒造場', kana: 'よしたけしゅぞうじょう')
address_attrs = { prefecture_code: 41, city: '佐賀市', street_address: '川副町犬井道735', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0952-45-1625', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御宴', kana: 'ぎょえん', company: c)


c = Company.create_or_find_by!(name: '基山商店', kana: 'きやましょうてん')
address_attrs = { prefecture_code: 41, city: '三養基郡', street_address: '基山町宮浦151', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-92-2300', fax: '0942-92-0181', website: 'http://kihotsuru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '基峰鶴', kana: 'きほうつる', company: c)
Brand.find_or_create_by!(name: 'わすれなぐさ', kana: 'わすれなぐさ', company: c)


c = Company.create_or_find_by!(name: '井手酒造', kana: 'いでしゅぞう')
address_attrs = { prefecture_code: 41, city: '嬉野市', street_address: '嬉野町下宿乙806-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0954-43-0001', fax: '0954-43-0002', website: 'http://www.toranoko.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '虎之児', kana: 'とらのこ', company: c)


c = Company.create_or_find_by!(name: '宗政酒造', kana: 'むねまさしゅぞう')
address_attrs = { prefecture_code: 41, city: '西松浦郡', street_address: '有田町戸矢乙340-28', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0955-41-0020', fax: '0955-41-0021', website: 'http://www.nonnoko.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宗政', kana: 'むねまさ', company: c)


c = Company.create_or_find_by!(name: '小柳酒造', kana: 'こやなぎしゅぞう')
address_attrs = { prefecture_code: 41, city: '小城市', street_address: '小城町903', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0952-73-2003', fax: '0952-73-4656', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '高砂', kana: 'たかさご', company: c)


c = Company.create_or_find_by!(name: '天山酒造', kana: 'てんざんしゅぞう')
address_attrs = { prefecture_code: 41, city: '小城市', street_address: '小城町岩蔵1520', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0952-73-3141', fax: '0952-72-7695', website: 'https://tenzan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天山', kana: 'てんざん', company: c)
Brand.find_or_create_by!(name: '一日千秋', kana: 'いちじつせんしゅう', company: c)
Brand.find_or_create_by!(name: '七田', kana: 'しちだ', company: c)
Brand.find_or_create_by!(name: '蛍酔', kana: 'ほたるよい', company: c)
Brand.find_or_create_by!(name: '飛天山', kana: 'ひてんざん', company: c)
Brand.find_or_create_by!(name: '岩の蔵', kana: 'いわのくら', company: c)


c = Company.create_or_find_by!(name: '光栄菊酒造', kana: 'こうえいぎくしゅぞう')
address_attrs = { prefecture_code: 41, city: '小城市', street_address: '三日月町織島2602番地3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://www.instagram.com/koueigiku', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '光栄菊', kana: 'こうえいぎく', company: c)


c = Company.create_or_find_by!(name: '千代雀酒造', kana: 'ちよすずめしゅぞう')
address_attrs = { prefecture_code: 41, city: '小城市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '千代雀', kana: 'ちよすずめ', company: c)


c = Company.create_or_find_by!(name: '東鶴酒造', kana: 'あずまつるしゅぞう')
address_attrs = { prefecture_code: 41, city: '多久市', street_address: '東多久町別府3625-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0952-76-2421', fax: '0952-76-2432', website: 'http://azumatsuru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東鶴', kana: 'あづまつる', company: c)
Brand.find_or_create_by!(name: '結晴', kana: 'むすばれ', company: c)


c = Company.create_or_find_by!(name: '鳴滝酒造', kana: 'なるたきしゅぞう')
address_attrs = { prefecture_code: 41, city: '唐津市', street_address: '神田3272-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0955-74-3125', fax: '0955-74-3126', website: 'https://narutaki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '聚楽太閤', kana: 'じゅらくたいこう', company: c)
Brand.find_or_create_by!(name: '瀧', kana: 'たき', company: c)
Brand.find_or_create_by!(name: '古からつ', kana: 'こからつ', company: c)
Brand.find_or_create_by!(name: '冨久花', kana: 'ふくはな', company: c)
Brand.find_or_create_by!(name: '君恩', kana: 'くんおん', company: c)


c = Company.create_or_find_by!(name: '樋渡酒造場', kana: 'ひわたししゅぞうじょう')
address_attrs = { prefecture_code: 41, city: '伊万里市', street_address: '大坪町乙4482', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0955-23-2332', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '万里長', kana: 'まりちょう', company: c)


c = Company.create_or_find_by!(name: '古伊万里酒造', kana: 'こいまりしゅぞう')
address_attrs = { prefecture_code: 41, city: '伊万里市', street_address: '二里町中里甲3288-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0955-23-2516', fax: '0955-23-8560', website: 'http://www.meritbank.net/koimari', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '前', kana: 'さき', company: c)
Brand.find_or_create_by!(name: '古伊万里', kana: 'こいまり', company: c)


c = Company.create_or_find_by!(name: '田中酒造', kana: 'たなかしゅぞう')
address_attrs = { prefecture_code: 41, city: '伊万里市', street_address: '波多津町辻905', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0955-25-0003', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '弓取', kana: 'ゆみとり', company: c)


c = Company.create_or_find_by!(name: '天吹酒造', kana: 'あまぶきしゅぞう')
address_attrs = { prefecture_code: 41, city: '三養基郡', street_address: 'みやき町東尾2894', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0942-89-2001', fax: '0942-89-3450', website: 'https://www.amabuki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日下無双', kana: 'ひのしたむそう', company: c)
Brand.find_or_create_by!(name: '鎮西八郎', kana: 'ちんぜいはちろう', company: c)
Brand.find_or_create_by!(name: '天吹', kana: 'あまぶき', company: c)
Brand.find_or_create_by!(name: '絆伝心', kana: 'きずなでんしん', company: c)


c = Company.create_or_find_by!(name: '佐嘉酒造', kana: 'さがしゅぞう')
address_attrs = { prefecture_code: 41, city: '佐賀市', street_address: '久保田町新田1833-1640', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0952-68-2001', website: 'https://sagashuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '佐嘉', kana: 'さが', company: c)
Brand.find_or_create_by!(name: '窓乃梅', kana: 'まどのうめ', company: c)


c = Company.create_or_find_by!(name: '中島酒造', kana: 'なかしましゅぞう')
address_attrs = { prefecture_code: 41, city: '杵島郡', street_address: '江北町上小田1503', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0952-86-3079', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '不老長寿', kana: 'ふろうちょうじゅ', company: c)


c = Company.create_or_find_by!(name: '矢野酒造', kana: 'やのしゅぞう')
address_attrs = { prefecture_code: 41, city: '鹿島市', street_address: '高津原3903-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0954-63-2008', fax: '0954-63-2363', website: 'http://yanoshuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '風の音色', kana: 'かぜのねいろ', company: c)
Brand.find_or_create_by!(name: '竹の園', kana: 'たけのその', company: c)
Brand.find_or_create_by!(name: '肥前蔵心', kana: 'ひぜんくらごころ', company: c)


c = Company.create_or_find_by!(name: '馬場酒造場', kana: 'ばばしゅぞうじょう')
address_attrs = { prefecture_code: 41, city: '鹿島市', street_address: '三河内乙1365', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0954-63-3888', fax: '0954-63-3889', website: 'https://www.nogomi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'JOKER', kana: 'ジョーカー', company: c)
Brand.find_or_create_by!(name: '能古見', kana: 'のごみ', company: c)
Brand.find_or_create_by!(name: 'Léger', kana: 'レジェ', company: c)


c = Company.create_or_find_by!(name: '幸姫酒造', kana: 'さちひめしゅぞう')
address_attrs = { prefecture_code: 41, city: '鹿島市', street_address: '古枝甲599', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0954-63-3708', fax: '0954-63-3709', website: 'http://www.sachihime.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '幸姫', kana: 'さちひめ', company: c)


c = Company.create_or_find_by!(name: '光武酒造場', kana: 'みつたけしゅぞうじょう')
address_attrs = { prefecture_code: 41, city: '鹿島市', street_address: '浜町乙2421', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0954-62-3033', fax: '0954-62-3075', website: 'http://www.kinpa.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '光武', kana: 'みつたけ', company: c)
Brand.find_or_create_by!(name: '華酔蓮', kana: 'はなすいれん', company: c)
Brand.find_or_create_by!(name: '福徳開運', kana: 'ふくとくかいうん', company: c)
Brand.find_or_create_by!(name: '金波', kana: 'きんぱ', company: c)


c = Company.create_or_find_by!(name: '富久千代酒造', kana: 'ふくちよしゅぞう')
address_attrs = { prefecture_code: 41, city: '鹿島市', street_address: '浜町1244-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0954-62-3727', fax: '0954-62-6638', website: 'https://nabeshima.biz', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富久千代', kana: 'ふくちよ', company: c)
Brand.find_or_create_by!(name: '鍋島', kana: 'なべしま', company: c)


c = Company.create_or_find_by!(name: '峰松酒造場', kana: 'みねまつしゅぞうじょう')
address_attrs = { prefecture_code: 41, city: '鹿島市', street_address: '浜町2761‐2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0954-63-2468', fax: '0954-63-2489', website: 'https://www.hizennya.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊王将', kana: 'きくおうしょう', company: c)
Brand.find_or_create_by!(name: '肥前浜宿', kana: 'ひぜんはましゅく', company: c)


c = Company.create_or_find_by!(name: '水頭酒造場', kana: 'すいとうしゅぞうじょう')
address_attrs = { prefecture_code: 41, city: '鹿島市', street_address: '浜町4094', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0954-62-2850', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '万寿亀', kana: 'ますかめ', company: c)


c = Company.create_or_find_by!(name: '五町田酒造', kana: 'ごちょうだしゅぞう')
address_attrs = { prefecture_code: 41, city: '嬉野市', street_address: '塩田町五町田甲2081', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0954-66-2066', fax: '0954-66-5470', website: 'http://azumaichi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日本一', kana: 'にっぽんいち', company: c)
Brand.find_or_create_by!(name: '東一', kana: 'あづまいち', company: c)


c = Company.create_or_find_by!(name: '瀬頭酒造', kana: 'せとうしゅぞう')
address_attrs = { prefecture_code: 41, city: '嬉野市', street_address: '塩田町五町田甲3117', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0954-66-2014', website: 'http://www.azumacho.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東長', kana: 'あずまちょう', company: c)
Brand.find_or_create_by!(name: '白菊', kana: 'しらきく', company: c)


c = Company.create_or_find_by!(name: '小松酒造', kana: 'こまつしゅぞう')
address_attrs = { prefecture_code: 41, city: '唐津市', street_address: '相知町千束1489', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0955-62-2408', fax: '0955-62-3031', website: 'https://www.manrei.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '万齢', kana: 'まんれい', company: c)
Brand.find_or_create_by!(name: '未来響', kana: 'みらいきょう', company: c)


c = Company.create_or_find_by!(name: '松尾酒造場', kana: 'まつおしゅぞうじょう')
address_attrs = { prefecture_code: 41, city: '西松浦郡', street_address: '有田町大木宿乙617', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0955-46-2411', fax: '0955-46-2412', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宮の松', kana: 'みやのまつ', company: c)
Brand.find_or_create_by!(name: '佐嘉の誉', kana: 'さがのほまれ', company: c)
Brand.find_or_create_by!(name: '龍門峡', kana: 'りゅうもんきょう', company: c)


c = Company.create_or_find_by!(name: '松浦一酒造', kana: 'まつうらいちしゅぞう')
address_attrs = { prefecture_code: 41, city: '伊万里市', street_address: '山代町楠久312', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0955-28-0123', fax: '0955-28-1455', website: 'http://www.matsuuraichi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松浦一', kana: 'まつうらいち', company: c)


c = Company.create_or_find_by!(name: '川浪酒造', kana: 'かわなみしゅぞう')
address_attrs = { prefecture_code: 41, city: '伊万里市', street_address: '山代町久原1629', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0955-28-3110', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富士の雪', kana: 'ふじのゆき', company: c)
