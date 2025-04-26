c = Company.create_or_find_by!(name: '丹波・篠山酒造組合', kana: 'たんばささやましゅぞうくみあい')
address_attrs = { prefecture_code: 28, city: '丹波市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://tamba7kura.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '丹波七蔵 GOLDEN MIX', kana: 'たんばななくらゴールデンミックス', company: c)


c = Company.create_or_find_by!(name: '都美人酒造', kana: 'みやこびじんしゅぞう')
address_attrs = { prefecture_code: 28, city: '南あわじ市', street_address: '榎列西川247', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0799-42-0360', fax: '0799-42-4899', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '都美人', kana: 'みやこびじん', company: c)


c = Company.create_or_find_by!(name: '浜千鳥酒造', kana: 'はまちどりしゅぞう')
address_attrs = { prefecture_code: 28, city: '洲本市', street_address: '五色町都志350', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0799-33-0043', fax: '0799-33-1343', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北前船辰悦丸', kana: 'きたまえせんしんえつまる', company: c)
Brand.find_or_create_by!(name: '豪商高田屋嘉兵衛', kana: 'ごうしょうたかたやかへい', company: c)


c = Company.create_or_find_by!(name: '千年一酒造', kana: 'せんねんいちしゅぞう')
address_attrs = { prefecture_code: 28, city: '淡路市', street_address: '久留麻2485-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0799-74-2005', fax: '0799-74-3122', website: 'https://sennenichi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千華', kana: 'せんか', company: c)
Brand.find_or_create_by!(name: 'かけはし', kana: 'かけはし', company: c)
Brand.find_or_create_by!(name: '愛酒', kana: 'ろまんす', company: c)
Brand.find_or_create_by!(name: '福わたり', kana: 'ふくわたり', company: c)
Brand.find_or_create_by!(name: '雄町の風', kana: 'おまちのかぜ', company: c)
Brand.find_or_create_by!(name: '淡路', kana: 'あわじ', company: c)
Brand.find_or_create_by!(name: '杯千酒', kana: 'はいせんす', company: c)
Brand.find_or_create_by!(name: '千代の縁', kana: 'ちよのえにし', company: c)
Brand.find_or_create_by!(name: '花蔵', kana: 'かぐら', company: c)
Brand.find_or_create_by!(name: '千年一', kana: 'せんねんいち', company: c)
Brand.find_or_create_by!(name: '國生みの雫', kana: 'くにうみのしずく', company: c)


c = Company.create_or_find_by!(name: '金盃酒造', kana: 'きんぱいしゅぞう')
address_attrs = { prefecture_code: 28, city: '神戸市灘区', street_address: '大石東町6-3-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-871-5251', fax: '078-881-0378', website: 'http://www.kinpai.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金盃', kana: 'きんぱい', company: c)


c = Company.create_or_find_by!(name: '富久娘酒造', kana: 'ふくむすめしゅぞう')
address_attrs = { prefecture_code: 28, city: '神戸市灘区', street_address: '新在家南町3-2-28', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-802-7800', fax: '078-881-2940', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊源氏', kana: 'きくげんじ', company: c)
Brand.find_or_create_by!(name: '大神力', kana: 'だいしんりき', company: c)


c = Company.create_or_find_by!(name: '沢の鶴', kana: 'さわのつる')
address_attrs = { prefecture_code: 28, city: '神戸市灘区', street_address: '新在家南町5-1-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-881-1234', fax: '078-861-0005', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三二四の酒', kana: 'みつよのさけ', company: c)
Brand.find_or_create_by!(name: '世界長', kana: 'せかいちょう', company: c)
Brand.find_or_create_by!(name: '百万石', kana: 'ひゃくまんごく', company: c)
Brand.find_or_create_by!(name: 'SHUSHU', kana: 'シュシュ', company: c)
Brand.find_or_create_by!(name: '寿海', kana: 'じゅかい', company: c)
Brand.find_or_create_by!(name: '現外', kana: 'げんがい', company: c)
Brand.find_or_create_by!(name: '沢の鶴', kana: 'さわのつる', company: c)


c = Company.create_or_find_by!(name: '太田酒造 灘 千代田蔵', kana: 'おおたしゅぞう なだ ちよだぐら')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '深江南町2-1-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-411-9456', fax: '078-412-8956', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千代田蔵', kana: 'ちよだぐら', company: c)


c = Company.create_or_find_by!(name: '小山本家酒造 灘浜福鶴蔵', kana: 'こやまほんけしゅぞう なだはまふくつるくら')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '魚崎南町4-4-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-411-8339', fax: '078-411-1091', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '米治', kana: 'よねじ', company: c)
Brand.find_or_create_by!(name: '七ツ梅', kana: 'ななつうめ', company: c)
Brand.find_or_create_by!(name: '浜福鶴', kana: 'はまふくつる', company: c)
Brand.find_or_create_by!(name: '空蔵', kana: 'くぞう', company: c)


c = Company.create_or_find_by!(name: '松尾仁兵衛商店', kana: 'まつおにへえしょうてん')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '金正宗', kana: 'きんまさむね', company: c)


c = Company.create_or_find_by!(name: '櫻正宗', kana: 'さくらまさむね')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '魚崎南町5-10-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-411-2101', fax: '078-411-2102', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '江戸一', kana: 'えどいち', company: c)
Brand.find_or_create_by!(name: '宮水の華', kana: 'みやみずのはな', company: c)
Brand.find_or_create_by!(name: '櫻正宗', kana: 'さくらまさむね', company: c)
Brand.find_or_create_by!(name: '瀧鯉', kana: 'たきのこい', company: c)
Brand.find_or_create_by!(name: '風花', kana: 'かざばな', company: c)
Brand.find_or_create_by!(name: 'Bonds Well with Beef', kana: 'ボンズ ウェル ウィズ ビーフ', company: c)
Brand.find_or_create_by!(name: '神戸桜', kana: 'こうべさくら', company: c)
Brand.find_or_create_by!(name: '薪水', kana: 'しんすい', company: c)


c = Company.create_or_find_by!(name: '豊澤酒造', kana: 'とよざわしゅぞう')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '酒豪', kana: 'しゅごう', company: c)


c = Company.create_or_find_by!(name: '宝酒造 白壁蔵', kana: 'たからしゅぞう しらかべぐら')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '青木2丁目1-28', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-452-2851', fax: '078-452-2612', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松竹梅 白壁蔵', kana: 'しょうちくばい しらかべぐら', company: c)
Brand.find_or_create_by!(name: '然土', kana: 'ねんど', company: c)
Brand.find_or_create_by!(name: '澪', kana: 'みお', company: c)


c = Company.create_or_find_by!(name: '白鶴酒造', kana: 'はくつるしゅぞう')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '住吉南町4-5-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-822-8901', fax: '078-822-1456', website: 'http://www.hakutsuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白鶴', kana: 'はくつる', company: c)


c = Company.create_or_find_by!(name: '安福又四郎商店', kana: 'やすふくまたしろうしょうてん')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '御影塚町1-5-23', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-851-0151', fax: '078-851-0156', website: 'https://matashiro.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '牛と鉄板', kana: 'うしとてっぱん', company: c)
Brand.find_or_create_by!(name: '酒草子', kana: 'さけのそうし', company: c)
Brand.find_or_create_by!(name: '大黒正宗', kana: 'だいこくまさむね', company: c)
Brand.find_or_create_by!(name: '紅天女', kana: 'くれないてんにょ', company: c)
Brand.find_or_create_by!(name: '梅乃樹', kana: 'うめのき', company: c)


c = Company.create_or_find_by!(name: '泉酒造', kana: 'いずみしゅぞう')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '御影塚町1-9-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-821-5353', fax: '078-851-3214', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '仙介', kana: 'せんすけ', company: c)
Brand.find_or_create_by!(name: '泉正宗', kana: 'いずみまさむね', company: c)
Brand.find_or_create_by!(name: '琥泉', kana: 'こせん', company: c)


c = Company.create_or_find_by!(name: '神戸酒心館', kana: 'こうべしゅしんかん')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '御影塚町1-8-17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-841-1121', fax: '078-841-0002', website: 'http://www.shushinkan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福寿', kana: 'ふくじゅ', company: c)
Brand.find_or_create_by!(name: '壱', kana: 'いち', company: c)


c = Company.create_or_find_by!(name: '坊垣醸造', kana: 'ぼうがきじょうぞう')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '戎面', kana: 'えびすかほ', company: c)


c = Company.create_or_find_by!(name: '剣菱酒造', kana: 'けんびししゅぞう')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '御影本町3-12-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-451-2501', website: 'http://www.kenbishi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '剣菱', kana: 'けんびし', company: c)


c = Company.create_or_find_by!(name: '菊正宗酒造', kana: 'きくまさむねしゅぞう')
address_attrs = { prefecture_code: 28, city: '神戸市東灘区', street_address: '御影本町1-7-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-851-0001', fax: '078-854-1001', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊正宗', kana: 'きくまさむね', company: c)
Brand.find_or_create_by!(name: '百黙', kana: 'ひゃくもく', company: c)


c = Company.create_or_find_by!(name: '日本盛', kana: 'にほんさかり')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '用海町4-57', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-32-2501', fax: '0798-23-3601', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日本盛', kana: 'にほんさかり', company: c)


c = Company.create_or_find_by!(name: '万代大澤醸造', kana: 'まんだいおおさわじょうぞう')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '東町1-13-25', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-34-1300', fax: '0798-34-3968', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '徳若', kana: 'とくわか', company: c)


c = Company.create_or_find_by!(name: '國産酒造', kana: 'こくさんしゅぞう')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '東町1-12-34', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-34-3456', fax: '0798-34-7129', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '國産一', kana: 'こくさんいち', company: c)
Brand.find_or_create_by!(name: '灘自慢', kana: 'なだじまん', company: c)


c = Company.create_or_find_by!(name: '大澤本家酒造', kana: 'おおさわほんけしゅぞう')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '東町1-13-28', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-33-0287', fax: '0798-35-7270', website: 'http://ohsawasyuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '寳娘', kana: 'たからむすめ', company: c)
Brand.find_or_create_by!(name: '夙川舞桜', kana: 'しゅくがわまいざくら', company: c)


c = Company.create_or_find_by!(name: '本野田酒造', kana: 'ほんのだしゅぞう')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '久保町4-9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-22-1168', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金鷹', kana: 'きんたか', company: c)


c = Company.create_or_find_by!(name: '木谷酒造', kana: 'きたにしゅぞう')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '石在町14-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-22-1255', fax: '0798-22-7918', website: 'http://www.kiichi-osake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '喜一', kana: 'きいち', company: c)


c = Company.create_or_find_by!(name: '松竹梅酒造', kana: 'しょうちくばいしゅぞう')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '浜町13-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-34-1234', fax: '0798-34-1238', website: 'http://www.nadaichi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '灘一', kana: 'なだいち', company: c)


c = Company.create_or_find_by!(name: '白鷹', kana: 'はくたか')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '浜町1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-33-0001', fax: '0798-36-6356', website: 'https://hakutaka.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '禄水苑', kana: 'ろくすいえん', company: c)
Brand.find_or_create_by!(name: '阪神タイガース', kana: 'はんしんたいがーす', company: c)
Brand.find_or_create_by!(name: '白鷹', kana: 'はくたか', company: c)
Brand.find_or_create_by!(name: '宮水の郷', kana: 'みやみずのさと', company: c)


c = Company.create_or_find_by!(name: '北山酒造', kana: 'きたやましゅぞう')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '宮前町8-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-33-2121', fax: '0798-35-7030', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '島美人', kana: 'しまびじん', company: c)


c = Company.create_or_find_by!(name: '辰馬本家酒造', kana: 'たつうまほんけしゅぞう')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '建石町2-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-32-2761', fax: '0798-32-2700', website: 'https://www.hakushika.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '有馬山', kana: 'ありまやま', company: c)
Brand.find_or_create_by!(name: '神輿', kana: 'みこし', company: c)
Brand.find_or_create_by!(name: '黒松白鹿', kana: 'くろまつはくしか', company: c)


c = Company.create_or_find_by!(name: '灘酒造', kana: 'なだしゅぞう')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '有馬山', kana: 'ありまやま', company: c)


c = Company.create_or_find_by!(name: '大関', kana: 'おおぜき')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '今津出在家町4-9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-32-2111', fax: '0798-36-1538', website: 'https://www.ozeki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '多聞', kana: 'たもん', company: c)
Brand.find_or_create_by!(name: '辛丹波', kana: 'からたんば', company: c)
Brand.find_or_create_by!(name: '創家 大坂屋', kana: 'おおざかや', company: c)
Brand.find_or_create_by!(name: '大坂屋 長兵衛', kana: 'おおざかや ちょうべい', company: c)
Brand.find_or_create_by!(name: '大関', kana: 'おおぜき', company: c)
Brand.find_or_create_by!(name: '醴', kana: 'らい', company: c)
Brand.find_or_create_by!(name: '金鹿', kana: 'きんしか', company: c)


c = Company.create_or_find_by!(name: '今津酒造', kana: 'いまづしゅぞう')
address_attrs = { prefecture_code: 28, city: '西宮市', street_address: '今津社前町5-22', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0798-33-0069', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '扇正宗', kana: 'おうぎまさむね', company: c)


c = Company.create_or_find_by!(name: '伊丹老松酒造', kana: 'いたみおいまつしゅぞう')
address_attrs = { prefecture_code: 28, city: '伊丹市', street_address: '中央3-1-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '072-782-2470', fax: '072-782-5381', website: 'http://www.oimatsu.biz', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '老松', kana: 'おいまつ', company: c)


c = Company.create_or_find_by!(name: '小西酒造', kana: 'こにししゅぞう')
address_attrs = { prefecture_code: 28, city: '伊丹市', street_address: '中央3-5-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '072-775-0524', fax: '072-775-2549', website: 'http://www.konishi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大手柄', kana: 'おおてがら', company: c)
Brand.find_or_create_by!(name: 'KONISHI', kana: 'こにし', company: c)
Brand.find_or_create_by!(name: '白雪', kana: 'しらゆき', company: c)


c = Company.create_or_find_by!(name: '川辺酒造', kana: 'かわべしゅぞう')
address_attrs = { prefecture_code: 28, city: '川辺郡', street_address: '猪名川町木津字南垣内9-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '072-768-0003', fax: '072-768-1353', website: 'http://www.hanagoromo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花衣', kana: 'はなごろも', company: c)
Brand.find_or_create_by!(name: '猪名の露', kana: 'いなのつゆ', company: c)
Brand.find_or_create_by!(name: '悠久の酒', kana: 'ゆうきゅうのさけ', company: c)


c = Company.create_or_find_by!(name: '八鹿酒造', kana: 'ようかしゅぞう')
address_attrs = { prefecture_code: 28, city: '養父市', street_address: '八鹿町九鹿461', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-662-2032', fax: '079-663-1405', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉野', kana: 'よしの', company: c)
Brand.find_or_create_by!(name: '夫婦杉', kana: 'ふうふすぎ', company: c)


c = Company.create_or_find_by!(name: '銀海酒造', kana: 'ぎんかいしゅぞう')
address_attrs = { prefecture_code: 28, city: '養父市', street_address: '関宮756-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-667-2403', fax: '079-667-3005', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '銀海', kana: 'ぎんかい', company: c)


c = Company.create_or_find_by!(name: '出石酒造', kana: 'いずししゅぞう')
address_attrs = { prefecture_code: 28, city: '豊岡市', street_address: '出石町魚屋114-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0796-52-2222', fax: '0796-52-2662', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '楽々鶴', kana: 'ささづる', company: c)


c = Company.create_or_find_by!(name: '安井酒造', kana: 'やすいしゅぞう')
address_attrs = { prefecture_code: 28, city: '三田市', street_address: '東本庄167', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0795-68-1003', fax: '0795-68-1003', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '武庫泉', kana: 'むこいずみ', company: c)


c = Company.create_or_find_by!(name: '岡村酒造場', kana: 'おかむらしゅぞうじょう')
address_attrs = { prefecture_code: 28, city: '三田市', street_address: '木器340', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-569-0004', fax: '079-569-0238', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千鳥正宗', kana: 'ちどりまさむね', company: c)


c = Company.create_or_find_by!(name: '狩場一酒造', kana: 'かりばいちしゅぞう')
address_attrs = { prefecture_code: 28, city: '丹波篠山市', street_address: '波賀野500', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-595-0040', fax: '079-595-0421', website: 'https://syuugetu.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '秀月', kana: 'しゅうげつ', company: c)


c = Company.create_or_find_by!(name: '鳳鳴酒造', kana: 'ほうめいしゅぞう')
address_attrs = { prefecture_code: 28, city: '丹波篠山市', street_address: '呉服町73', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-552-1133', fax: '079-552-3383', website: 'https://www.houmei.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夢の扉', kana: 'ゆめのとびら', company: c)
Brand.find_or_create_by!(name: '風雲剣鬼伝 剣神武蔵', kana: 'けんしんむさし', company: c)
Brand.find_or_create_by!(name: '篠山城', kana: 'ささやまじょう', company: c)
Brand.find_or_create_by!(name: '鳳鳴', kana: 'ほうめい', company: c)
Brand.find_or_create_by!(name: '笹の滴', kana: 'ささのしずく', company: c)


c = Company.create_or_find_by!(name: '櫻酒造', kana: 'さくらしゅぞう')
address_attrs = { prefecture_code: 28, city: '丹波篠山市', street_address: '井ノ上182-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-556-3158', fax: '079-556-3878', website: 'https://sakuraichimonzi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '櫻一文字', kana: 'さくらいちもんじ', company: c)
Brand.find_or_create_by!(name: '丹波櫻', kana: 'たんばざくら', company: c)


c = Company.create_or_find_by!(name: '打田酒造', kana: 'うちだしゅぞう')
address_attrs = { prefecture_code: 28, city: '丹波市', street_address: '氷上町谷村520', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0795-82-0002', fax: '0795-82-8761', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '黒松大観', kana: 'くろまつたいかん', company: c)


c = Company.create_or_find_by!(name: '中大槻酒造場', kana: 'なかおおつきしゅぞうじょう')
address_attrs = { prefecture_code: 28, city: '丹波市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '玉つるぎ', kana: 'たまつるぎ', company: c)


c = Company.create_or_find_by!(name: '西山酒造場', kana: 'にしやましゅぞうじょう')
address_attrs = { prefecture_code: 28, city: '丹波市', street_address: '市島町中竹田1171', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0795-86-0331', fax: '0795-86-0202', website: 'https://kotsuzumi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '小鼓', kana: 'こつづみ', company: c)


c = Company.create_or_find_by!(name: '鴨庄酒造', kana: 'かものしょうしゅぞう')
address_attrs = { prefecture_code: 28, city: '丹波市', street_address: '市島町上牧661-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0795-85-0488', fax: '0795-85-0488', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '百人一酒', kana: 'ひゃくにんいっしゅ', company: c)
Brand.find_or_create_by!(name: '花鳥末廣', kana: 'かちょうすえひろ', company: c)


c = Company.create_or_find_by!(name: '山名酒造', kana: 'やまなしゅぞう')
address_attrs = { prefecture_code: 28, city: '丹波市', street_address: '市島町上田211', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0795-85-0015', fax: '0795-85-0291', website: 'https://www.okutamba.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '自然酒', kana: 'しぜんしゅ', company: c)
Brand.find_or_create_by!(name: '酔ふて候', kana: 'ようてそうろう', company: c)
Brand.find_or_create_by!(name: 'まるの輪', kana: 'まるのわ', company: c)
Brand.find_or_create_by!(name: '卓', kana: 'たく', company: c)
Brand.find_or_create_by!(name: '千歳', kana: 'せんさい', company: c)
Brand.find_or_create_by!(name: '奥丹波', kana: 'おくたんば', company: c)


c = Company.create_or_find_by!(name: '此の友酒造', kana: 'このともしゅぞう')
address_attrs = { prefecture_code: 28, city: '朝来市', street_address: '山東町矢名瀬508', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0796-76-3035', fax: '0796-76-3045', website: 'http://www.konotomo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '但馬', kana: 'たじま', company: c)
Brand.find_or_create_by!(name: 'KAKOYA', kana: 'かこや', company: c)
Brand.find_or_create_by!(name: '生野銀山', kana: 'いくのぎんざん', company: c)
Brand.find_or_create_by!(name: '天空の城 竹田城', kana: 'てんくうのしろ たけだじょう', company: c)


c = Company.create_or_find_by!(name: '田治米', kana: 'たじめ')
address_attrs = { prefecture_code: 28, city: '朝来市', street_address: '山東町矢名瀬町545', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-676-2033', fax: '079-676-2738', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '田治米', kana: 'たじめ', company: c)
Brand.find_or_create_by!(name: '竹田城', kana: 'たけだじょう', company: c)
Brand.find_or_create_by!(name: '竹泉', kana: 'ちくせん', company: c)
Brand.find_or_create_by!(name: '幸の鳥', kana: 'こうのとり', company: c)


c = Company.create_or_find_by!(name: '友田酒造', kana: 'ともだしゅぞう')
address_attrs = { prefecture_code: 28, city: '豊岡市', street_address: '日高町江原62-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0796-42-1020', fax: '0796-42-1021', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'かなべ', kana: 'かなべ', company: c)
Brand.find_or_create_by!(name: 'ちょびっと', kana: 'ちょびっと', company: c)
Brand.find_or_create_by!(name: '雪乃梅', kana: 'ゆきのうめ', company: c)


c = Company.create_or_find_by!(name: '香住鶴', kana: 'かすみつる')
address_attrs = { prefecture_code: 28, city: '美方郡', street_address: '香美町香住区小原600-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0796-36-0029', fax: '0796-36-3273', website: 'http://www.fukuchiya.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '香住鶴', kana: 'かすみつる', company: c)


c = Company.create_or_find_by!(name: '吉村酒造', kana: 'よしむらしゅぞう')
address_attrs = { prefecture_code: 28, city: '美方郡', street_address: '新温泉町高末166-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0796-83-3110', fax: '0796-83-3120', website: 'http://sake.taihaku.biz', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '水車物語', kana: 'すいしゃものがたり', company: c)
Brand.find_or_create_by!(name: '風鶴', kana: 'ふうづる', company: c)
Brand.find_or_create_by!(name: '百萬弗', kana: 'ひゃくまんどる', company: c)
Brand.find_or_create_by!(name: '四季の誉', kana: 'しきのほまれ', company: c)
Brand.find_or_create_by!(name: '誉輝', kana: 'ようき', company: c)
Brand.find_or_create_by!(name: '夢千代日記', kana: 'ゆめちよにっき', company: c)
Brand.find_or_create_by!(name: '太白', kana: 'たいはく', company: c)


c = Company.create_or_find_by!(name: '灘菊酒造', kana: 'なだぎくしゅぞう')
address_attrs = { prefecture_code: 28, city: '姫路市', street_address: '手柄1-121', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-285-3111', fax: '079-285-2021', website: 'http://www.nadagiku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酒造作', kana: 'みきさく', company: c)
Brand.find_or_create_by!(name: '酒造蔵', kana: 'みきぞう', company: c)
Brand.find_or_create_by!(name: '灘菊', kana: 'なだぎく', company: c)
Brand.find_or_create_by!(name: '酒造之助', kana: 'みきのすけ', company: c)


c = Company.create_or_find_by!(name: '田中酒造場', kana: 'たなかしゅぞうじょう')
address_attrs = { prefecture_code: 28, city: '姫路市広畑区', street_address: '本町3-583', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-236-0006', fax: '079-236-9334', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白鷺の城', kana: 'しらさぎのしろ', company: c)
Brand.find_or_create_by!(name: '名刀正宗', kana: 'めいとうまさむね', company: c)
Brand.find_or_create_by!(name: '亀の甲', kana: 'かめのこう', company: c)
Brand.find_or_create_by!(name: '米搗水車', kana: 'こめつきすいしゃ', company: c)


c = Company.create_or_find_by!(name: '本田商店', kana: 'ほんだしょうてん')
address_attrs = { prefecture_code: 28, city: '姫路市網干区', street_address: '高田361-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-273-0151', fax: '079-274-2454', website: 'https://www.taturiki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '龍力', kana: 'たつりき', company: c)


c = Company.create_or_find_by!(name: '松尾酒造', kana: 'まつおしゅぞう')
address_attrs = { prefecture_code: 28, city: '揖保郡', street_address: '太子町松尾422', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-276-0288', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭龍', kana: 'きょくりゅう', company: c)


c = Company.create_or_find_by!(name: '壺坂酒造', kana: 'つぼさかしゅぞう')
address_attrs = { prefecture_code: 28, city: '姫路市', street_address: '夢前町前之庄1418-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-336-0010', fax: '079-336-1530', website: 'http://www.seppiko.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金壺', kana: 'きんつぼ', company: c)
Brand.find_or_create_by!(name: '雪彦山', kana: 'せっぴこさん', company: c)


c = Company.create_or_find_by!(name: '下村酒造店', kana: 'しもむらしゅぞうてん')
address_attrs = { prefecture_code: 28, city: '姫路市', street_address: '安富町安志957', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0790-66-2004', fax: '0790-66-3556', website: 'https://okuharima.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白影泉', kana: 'はくえいせん', company: c)
Brand.find_or_create_by!(name: '奥播磨', kana: 'おくはりま', company: c)
Brand.find_or_create_by!(name: '宮の井', kana: 'みやのい', company: c)


c = Company.create_or_find_by!(name: '山陽盃酒造', kana: 'さんようはいしゅぞう')
address_attrs = { prefecture_code: 28, city: '宍粟市', street_address: '山崎町山崎28', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0790-62-1010', fax: '0790-62-6218', website: 'http://www.sanyouhai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '播州一献', kana: 'ばんしゅういっこん', company: c)


c = Company.create_or_find_by!(name: '老松酒造', kana: 'おいまつしゅぞう')
address_attrs = { prefecture_code: 28, city: '宍粟市', street_address: '山崎町山崎12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0790-62-2345', fax: '0790-62-8341', website: 'http://s-oimatsu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '米郷', kana: 'こめのさと', company: c)
Brand.find_or_create_by!(name: 'スエヒロ老松', kana: 'すえひろおいまつ', company: c)
Brand.find_or_create_by!(name: 'たたらの里 千種', kana: 'たたらのさと ちくさ', company: c)
Brand.find_or_create_by!(name: '神酒之郷', kana: 'みわのさと', company: c)


c = Company.create_or_find_by!(name: '稲見酒造', kana: 'いなみしゅぞう')
address_attrs = { prefecture_code: 28, city: '三木市', street_address: '芝町2-29', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0794-82-0065', fax: '0794-82-2215', website: 'http://www.aoitsuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '葵鶴', kana: 'あおいつる', company: c)


c = Company.create_or_find_by!(name: '福太醸造', kana: 'ふくたじょうぞう')
address_attrs = { prefecture_code: 28, city: '三木市', street_address: '府内町2-21', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0794-82-0078', fax: '0794-82-7563', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福乃太', kana: 'ふくのふとり', company: c)


c = Company.create_or_find_by!(name: '明石酒類醸造', kana: 'あかししゅるいじょうぞう')
address_attrs = { prefecture_code: 28, city: '明石市', street_address: '大蔵八幡町1-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-919-0277', fax: '078-919-4377', website: 'http://www.akashi-tai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '明石鯛', kana: 'あかしたい', company: c)


c = Company.create_or_find_by!(name: '大熊酒造', kana: 'おおくましゅぞう')
address_attrs = { prefecture_code: 28, city: '加東市', street_address: '木梨146-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0795-42-0020', fax: '0790-42-2663', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宝暦', kana: 'ほうれき', company: c)


c = Company.create_or_find_by!(name: '櫻井酒造', kana: 'さくらいしゅぞう')
address_attrs = { prefecture_code: 28, city: '明石市', street_address: '大久保町八木191-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-936-1264', fax: '078-936-1264', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '男児', kana: 'だんじ', company: c)


c = Company.create_or_find_by!(name: '太陽酒造', kana: 'たいようしゅぞう')
address_attrs = { prefecture_code: 28, city: '明石市', street_address: '大久保町江井島789', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-946-1153', fax: '078-947-1434', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神稲', kana: 'くましね', company: c)
Brand.find_or_create_by!(name: '江井ヶ島地方の酒', kana: 'えいがしまちほうのさけ', company: c)
Brand.find_or_create_by!(name: '天狗松', kana: 'てんぐまつ', company: c)
Brand.find_or_create_by!(name: '太陽', kana: 'たいよう', company: c)
Brand.find_or_create_by!(name: '赤石', kana: 'あかし', company: c)


c = Company.create_or_find_by!(name: '大和酒造', kana: 'だいわしゅぞう')
address_attrs = { prefecture_code: 28, city: '明石市', street_address: '大久保町西島1063-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-947-0108', fax: '078-947-0108', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大和鶴', kana: 'やまとつる', company: c)


c = Company.create_or_find_by!(name: '江井ヶ嶋酒造', kana: 'えいがしましゅぞう')
address_attrs = { prefecture_code: 28, city: '明石市', street_address: '大久保町西島919', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-946-1001', fax: '078-947-0002', website: 'http://www.ei-sake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神鷹', kana: 'かみたか', company: c)


c = Company.create_or_find_by!(name: '西海酒造', kana: 'にしうみしゅぞう')
address_attrs = { prefecture_code: 28, city: '明石市', street_address: '魚住町　金ヶ崎1350', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-936-0467', fax: '078-934-3003', website: 'http://www.soranotsuru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '空の鶴', kana: 'そらのつる', company: c)


c = Company.create_or_find_by!(name: '茨木酒造', kana: 'いばらきしゅぞう')
address_attrs = { prefecture_code: 28, city: '明石市', street_address: '魚住町　西岡1377', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '078-946-0061', fax: '078-947-6047', website: 'http://rairaku.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '来楽', kana: 'らいらく', company: c)


c = Company.create_or_find_by!(name: '岡田本家', kana: 'おかだほんけ')
address_attrs = { prefecture_code: 28, city: '加古川市', street_address: '野口町良野1021', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-426-7288', fax: '079-426-2323', website: 'http://www.okadahonke.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '県農 花てがみ', kana: 'はなてがみ', company: c)
Brand.find_or_create_by!(name: '金鵄盛典', kana: 'きんしせいてん', company: c)


c = Company.create_or_find_by!(name: '木戸酒造', kana: 'きどしゅぞう')
address_attrs = { prefecture_code: 28, city: '加古川市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '播磨王', kana: 'はりまおう', company: c)


c = Company.create_or_find_by!(name: '井澤本家', kana: 'いざわほんけ')
address_attrs = { prefecture_code: 28, city: '加古郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '倭小槌', kana: 'やまとこつち', company: c)
Brand.find_or_create_by!(name: 'まごころ', kana: 'まごころ', company: c)


c = Company.create_or_find_by!(name: '大西酒造', kana: 'おおにししゅぞう')
address_attrs = { prefecture_code: 28, city: '加古郡', street_address: '稲美町蛸草316-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-495-0043', fax: '079-495-0043', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '愛美人', kana: 'あいびじん', company: c)


c = Company.create_or_find_by!(name: 'キング醸造', kana: 'きんぐしょうぞう')
address_attrs = { prefecture_code: 28, city: '加古郡', street_address: '稲美町蛸草321', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-495-0010', fax: '079-495-3518', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '播州錦', kana: 'ばんしゅうにしき', company: c)
Brand.find_or_create_by!(name: '杜氏の蔵', kana: 'とうじのくら', company: c)


c = Company.create_or_find_by!(name: '服部酒造', kana: 'はっとりしゅぞう')
address_attrs = { prefecture_code: 28, city: '小野市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '貴娘', kana: 'きむすめ', company: c)


c = Company.create_or_find_by!(name: '田中酒造', kana: 'たなかしゅぞう')
address_attrs = { prefecture_code: 28, city: '小野市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '極楽とんぼ', kana: 'ごくらくとんぼ', company: c)


c = Company.create_or_find_by!(name: '三宅酒造', kana: 'みやけしゅぞう')
address_attrs = { prefecture_code: 28, city: '加西市', street_address: '中野町917', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0790-49-0003', fax: '0790-49-0749', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊日本', kana: 'きくにほん', company: c)


c = Company.create_or_find_by!(name: '富久錦', kana: 'ふくにしき')
address_attrs = { prefecture_code: 28, city: '加西市', street_address: '三口町1048', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0790-48-2111', fax: '0790-48-2288', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富久錦', kana: 'ふくにしき', company: c)


c = Company.create_or_find_by!(name: '西谷酒造', kana: 'にしたにしゅぞう')
address_attrs = { prefecture_code: 28, city: '高砂市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '惣盛', kana: 'そうざかり', company: c)


c = Company.create_or_find_by!(name: '奥藤商事', kana: 'おくとうしょうじ')
address_attrs = { prefecture_code: 28, city: '赤穂市', street_address: '坂越1419-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0791-48-8005', fax: '0791-48-8813', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '忠臣蔵', kana: 'ちゅうしんぐら', company: c)
Brand.find_or_create_by!(name: '乙女', kana: 'おとめ', company: c)


c = Company.create_or_find_by!(name: '神結酒造', kana: 'かみむすびしゅぞう')
address_attrs = { prefecture_code: 28, city: '加東市', street_address: '下滝野474', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0795-48-3011', fax: '0795-48-2258', website: 'http://www.kamimusubi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '冬の虹', kana: 'ふゆのにじ', company: c)
Brand.find_or_create_by!(name: '闘竜灘', kana: 'とうりゅうなだ', company: c)
Brand.find_or_create_by!(name: '神結', kana: 'かみむすび', company: c)
Brand.find_or_create_by!(name: '播州平野', kana: 'ばんしゅうへいや', company: c)
Brand.find_or_create_by!(name: 'たましずく', kana: 'たましずく', company: c)


c = Company.create_or_find_by!(name: '高徳銘醸', kana: 'たかのりめいじょう')
address_attrs = { prefecture_code: 28, city: '加東市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '花すおう', kana: 'はなすおう', company: c)
Brand.find_or_create_by!(name: '高徳', kana: 'たかのり', company: c)


c = Company.create_or_find_by!(name: '神崎酒造', kana: 'かんざきしゅぞう')
address_attrs = { prefecture_code: 28, city: '姫路市', street_address: '船津町2033', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-232-0004', fax: '079-232-0004', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '龍王の舞', kana: 'りゅうおうのまい', company: c)
Brand.find_or_create_by!(name: '真名井の鶴', kana: 'まないのつる', company: c)


c = Company.create_or_find_by!(name: '名城酒造', kana: 'めいじょうしゅぞう')
address_attrs = { prefecture_code: 28, city: '姫路市', street_address: '豊富町豊富2222-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-264-0181', fax: '079-264-2520', website: 'http://meijoshuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '兵庫男山', kana: 'ひょうごおとこやま', company: c)
Brand.find_or_create_by!(name: '官兵衛', kana: 'かんべい', company: c)
Brand.find_or_create_by!(name: '千羽鶴', kana: 'せんばづる', company: c)
Brand.find_or_create_by!(name: '如星', kana: 'じょせい', company: c)
Brand.find_or_create_by!(name: '隠し酒', kana: 'かくしざけ', company: c)
Brand.find_or_create_by!(name: '名城', kana: 'めいじょう', company: c)


c = Company.create_or_find_by!(name: 'ヤヱガキ酒造', kana: 'やえがきしゅぞう')
address_attrs = { prefecture_code: 28, city: '姫路市', street_address: '林田町六九谷681', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '079-268-8080', fax: '079-268-8088', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八重垣', kana: 'やえがき', company: c)
Brand.find_or_create_by!(name: '箙', kana: 'えびら', company: c)


c = Company.create_or_find_by!(name: '木村酒造場', kana: 'きむらしゅぞうじょう')
address_attrs = { prefecture_code: 28, city: '朝来市', street_address: '和田山町竹田363', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0854-42-0072', fax: '0854-42-0073', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '虎臥城', kana: 'こがじょう', company: c)
