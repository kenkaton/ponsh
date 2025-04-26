c = Company.create_or_find_by!(name: '田中酒造', kana: 'たなかしゅぞう')
address_attrs = { prefecture_code: 34, city: '神石郡', street_address: '神石高原町小畠1736-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0847-85-2517', fax: '0847-85-3096', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神招', kana: 'かみまねき', company: c)


c = Company.create_or_find_by!(name: '三輪酒造', kana: 'みわしゅぞう')
address_attrs = { prefecture_code: 34, city: '神石郡', street_address: '神石高原町油木乙1930', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0847-82-0630', fax: '0847-82-0423', website: 'http://shinrai-1716.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神雷', kana: 'しんらい', company: c)
Brand.find_or_create_by!(name: '神石高原', kana: 'じんせきこうげん', company: c)


c = Company.create_or_find_by!(name: '美の鶴酒造', kana: 'みのつるしゅぞう')
address_attrs = { prefecture_code: 34, city: '福山市', street_address: '神辺町下御領1288', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '084-965-0111', fax: '084-965-0110', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美の鶴', kana: 'みのつる', company: c)


c = Company.create_or_find_by!(name: '天宝一', kana: 'てんぽういち')
address_attrs = { prefecture_code: 34, city: '福山市', street_address: '神辺町川北660', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '084-962-0033', fax: '084-962-3358', website: 'http://www.tenpo1.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天宝一', kana: 'てんぽういち', company: c)


c = Company.create_or_find_by!(name: '高橋酒造', kana: 'たかはししゅぞう')
address_attrs = { prefecture_code: 34, city: '福山市', street_address: '加茂町字中野555', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '084-972-3322', fax: '084-972-3967', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '深山', kana: 'しんざん', company: c)
Brand.find_or_create_by!(name: '勧酒深山', kana: 'かんしゅしんざん', company: c)


c = Company.create_or_find_by!(name: '吉源酒造場', kana: 'よしげんしゅぞうじょう')
address_attrs = { prefecture_code: 34, city: '尾道市', street_address: '三軒家町14-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0848-23-2771', fax: '0848-20-1107', website: 'http://yoshigen.info', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '寿齢おのみち', kana: 'じゅれいおのみち', company: c)


c = Company.create_or_find_by!(name: '濱岡酒造', kana: 'はまおかしゅぞう')
address_attrs = { prefecture_code: 34, city: '尾道市', street_address: '因島重井町5800-67', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0845-24-3100', fax: '0845-24-2970', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '村上水軍', kana: 'むらかみすいぐん', company: c)
Brand.find_or_create_by!(name: '水軍', kana: 'すいぐん', company: c)


c = Company.create_or_find_by!(name: '備南酒造', kana: 'びなんしゅぞう')
address_attrs = { prefecture_code: 34, city: '尾道市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '本因坊', kana: 'ほんいんぼう', company: c)


c = Company.create_or_find_by!(name: '酔心山根本店', kana: 'すいしんやまねほんてん')
address_attrs = { prefecture_code: 34, city: '三原市', street_address: '東町1-5-58', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0848-62-3251', fax: '0848-62-3253', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔心', kana: 'すいしん', company: c)
Brand.find_or_create_by!(name: 'ブナのしずく', kana: 'ぶなのしずく', company: c)


c = Company.create_or_find_by!(name: '金光酒造', kana: 'かねみつしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '黒瀬町乃美尾1364-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-382-2006', fax: '082-382-7948', website: 'http://www.kamokin.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桜吹雪', kana: 'さくらふぶき', company: c)
Brand.find_or_create_by!(name: '賀茂金秀', kana: 'かもきんしゅう', company: c)


c = Company.create_or_find_by!(name: '竹鶴酒造', kana: 'たけつるしゅぞう')
address_attrs = { prefecture_code: 34, city: '竹原市', street_address: '本町3丁目10-29', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0846-22-2021', fax: '0846-22-2344', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '竹鶴', kana: 'たけつる', company: c)
Brand.find_or_create_by!(name: '小笹屋竹鶴', kana: 'おざさやたけつる', company: c)


c = Company.create_or_find_by!(name: '藤井酒造', kana: 'ふじいしゅぞう')
address_attrs = { prefecture_code: 34, city: '竹原市', street_address: '本町3丁目4-14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0846-22-2029', fax: '0846-22-8241', website: 'http://www.fujiishuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夜の帝王', kana: 'よるのていおう', company: c)
Brand.find_or_create_by!(name: '宝寿', kana: 'ほうじゅ', company: c)
Brand.find_or_create_by!(name: '龍勢', kana: 'りゅうせい', company: c)


c = Company.create_or_find_by!(name: '中尾醸造', kana: 'なかおじょうぞう')
address_attrs = { prefecture_code: 34, city: '竹原市', street_address: '中央5-9-14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0846-22-2035', fax: '0846-22-8515', website: 'http://www.maboroshi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '誠鏡', kana: 'せいきょう', company: c)
Brand.find_or_create_by!(name: '幻', kana: 'まぼろし', company: c)


c = Company.create_or_find_by!(name: '比婆美人酒造', kana: 'ひばびじんしゅぞう')
address_attrs = { prefecture_code: 34, city: '庄原市', street_address: '三日市町232-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0824-72-0589', fax: '0824-72-8066', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '比婆美人', kana: 'ひばびじん', company: c)


c = Company.create_or_find_by!(name: '白蘭酒造', kana: 'はくらんしゅぞう')
address_attrs = { prefecture_code: 34, city: '三次市', street_address: '三次町1550-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0824-62-2831', fax: '0824-62-2268', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白蘭', kana: 'はくらん', company: c)


c = Company.create_or_find_by!(name: '本郷酒造', kana: 'ほんごうしゅぞう')
address_attrs = { prefecture_code: 34, city: '三原市', street_address: '本郷南6丁目24－27', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0848-86-2011', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '杜鵑', kana: 'ほととぎす', company: c)


c = Company.create_or_find_by!(name: '喜久牡丹酒造', kana: 'きくぼたんしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '河内町下河内153', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-437-1281', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '喜久牡丹', kana: 'きくぼたん', company: c)


c = Company.create_or_find_by!(name: '今田酒造本店', kana: 'いまだしゅぞうほんてん')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '安芸津町三津3734', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0846-45-0003', fax: '0846-45-3712', website: 'https://fukucho.info', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富久長 サタケシリーズ', kana: 'ふくちょう さたけしりーず', company: c)
Brand.find_or_create_by!(name: '富久長', kana: 'ふくちょう', company: c)


c = Company.create_or_find_by!(name: '柄酒造', kana: 'つかしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '安芸津町三津4228', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0846-45-0009', fax: '0846-45-5538', website: 'http://www.tsukasyuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '於多福', kana: 'おたふく', company: c)
Brand.find_or_create_by!(name: '関西一', kana: 'かんさいいち', company: c)


c = Company.create_or_find_by!(name: '盛川酒造', kana: 'もりかわしゅぞう')
address_attrs = { prefecture_code: 34, city: '呉市', street_address: '安浦町原畑44', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-84-2002', fax: '0823-84-7006', website: 'http://morikawa-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白鴻', kana: 'はくこう', company: c)
Brand.find_or_create_by!(name: '元晴', kana: 'もとはる', company: c)


c = Company.create_or_find_by!(name: '花酔酒造', kana: 'はなよいしゅぞう')
address_attrs = { prefecture_code: 34, city: '庄原市', street_address: '総領町稲草1995-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0824-88-2010', fax: '0824-88-2254', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花酔', kana: 'はなよい', company: c)


c = Company.create_or_find_by!(name: '山岡酒造', kana: 'やまおかしゅぞう')
address_attrs = { prefecture_code: 34, city: '三次市', street_address: '甲奴町西野489-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0847-67-2302', fax: '0847-67-2349', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '藍の舞', kana: 'あいのまい', company: c)
Brand.find_or_create_by!(name: '瑞冠', kana: 'ずいかん', company: c)
Brand.find_or_create_by!(name: '燗なら俺にまかせろ。', kana: 'かんならおれにまかせろ。', company: c)


c = Company.create_or_find_by!(name: '福六酒造', kana: 'ふくろくしゅぞう')
address_attrs = { prefecture_code: 34, city: '三次市', street_address: '吉舎町吉舎378-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0824-43-2006', fax: '0824-43-4620', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福六', kana: 'ふくろく', company: c)


c = Company.create_or_find_by!(name: '北村醸造場', kana: 'きたむらじょうぞうじょう')
address_attrs = { prefecture_code: 34, city: '庄原市', street_address: '東城町東城356', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '08477-2-0009', fax: '08477-2-4535', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊文明', kana: 'きくぶんめい', company: c)


c = Company.create_or_find_by!(name: '生熊酒造', kana: 'いくましゅぞう')
address_attrs = { prefecture_code: 34, city: '庄原市', street_address: '東城町東城43-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '08477-2-0056', fax: '08477-2-1175', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '超群', kana: 'ちょうぐん', company: c)


c = Company.create_or_find_by!(name: '美和桜酒造', kana: 'みわさくらしゅぞう')
address_attrs = { prefecture_code: 34, city: '三次市', street_address: '三和町下板木262', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0824-52-2011', fax: '0824-52-2003', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '美和桜', kana: 'みわさくら', company: c)


c = Company.create_or_find_by!(name: '原本店', kana: 'はらほんてん')
address_attrs = { prefecture_code: 34, city: '広島市中区', street_address: '白島九軒町9-19', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-221-1641', fax: '082-221-1643', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蓬莱鶴', kana: 'ほうらいつる', company: c)


c = Company.create_or_find_by!(name: '安佐酒造', kana: 'あさしゅぞう')
address_attrs = { prefecture_code: 34, city: '広島市安佐南区', street_address: '八木9-32-41', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-873-2023', fax: '082-873-2433', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '安佐泉', kana: 'あさいずみ', company: c)


c = Company.create_or_find_by!(name: '久保田酒造', kana: 'くぼたしゅぞう')
address_attrs = { prefecture_code: 34, city: '広島市安佐北区', street_address: '可部2-34-24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-812-2185', fax: '082-814-5411', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菱正宗', kana: 'ひしまさむね', company: c)


c = Company.create_or_find_by!(name: '旭鳳酒造', kana: 'きょくほうしゅぞう')
address_attrs = { prefecture_code: 34, city: '広島市安佐北区', street_address: '可部3-8-16', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-812-3344', fax: '082-812-3345', website: 'http://www.kyokuhou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '甚七', kana: 'じんしち', company: c)
Brand.find_or_create_by!(name: '烏輪', kana: 'うりん', company: c)
Brand.find_or_create_by!(name: '旭鳳', kana: 'きょくほう', company: c)


c = Company.create_or_find_by!(name: '有木酒造場', kana: 'ありきしゅぞうじょう')
address_attrs = { prefecture_code: 34, city: '安芸高田市', street_address: '吉田町吉田1091-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0826-42-0016', fax: '0826-42-2666', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '喜美福', kana: 'きみふく', company: c)
Brand.find_or_create_by!(name: '三矢の訓', kana: 'みつやのおしえ', company: c)


c = Company.create_or_find_by!(name: '千豊酒造', kana: 'せんぽうしゅぞう')
address_attrs = { prefecture_code: 34, city: '山県郡', street_address: '北広島町阿坂3385', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0826-84-0406', fax: '0826-84-0465', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千豊の酒', kana: 'せんぽうのさけ', company: c)


c = Company.create_or_find_by!(name: '小野酒造', kana: 'おのしゅぞう')
address_attrs = { prefecture_code: 34, city: '山県郡', street_address: '北広島町蔵迫47', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0826-72-2135', fax: '0826-72-4511', website: 'http://oigame.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '老亀', kana: 'おいがめ', company: c)


c = Company.create_or_find_by!(name: '上杉酒造', kana: 'うえすぎしゅぞう')
address_attrs = { prefecture_code: 34, city: '山県郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '八重の露', kana: 'やえのつゆ', company: c)


c = Company.create_or_find_by!(name: '福光酒造', kana: 'ふくみつしゅぞう')
address_attrs = { prefecture_code: 34, city: '山県郡', street_address: '北広島町大朝2441-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '050-5812-3718', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '朝光', kana: 'あさひかり', company: c)


c = Company.create_or_find_by!(name: '玉扇酒造', kana: 'たまおうぎしゅぞう')
address_attrs = { prefecture_code: 34, city: '広島市安佐北区', street_address: '安佐町大字久地1624-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-837-2821', fax: '082-837-2080', website: 'http://www.tamaougi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '玉扇', kana: 'たまおうぎ', company: c)


c = Company.create_or_find_by!(name: '川本酒造場', kana: 'かわもとしゅぞうじょう')
address_attrs = { prefecture_code: 34, city: '山県郡', street_address: '安芸太田町戸河内469', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0826-28-2618', fax: '0826-28-2618', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三段峡', kana: 'さんだんきょう', company: c)


c = Company.create_or_find_by!(name: '馬上酒造場', kana: 'ばじょうしゅぞうじょう')
address_attrs = { prefecture_code: 34, city: '安芸郡', street_address: '熊野町7870', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-854-0104', fax: '082-854-8852', website: 'http://www.e-na.co.jp/bajo', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大号令', kana: 'だいごうれい', company: c)


c = Company.create_or_find_by!(name: '八幡川酒造', kana: 'やはたがわしゅぞう')
address_attrs = { prefecture_code: 34, city: '広島市佐伯区', street_address: '八幡3-13-20', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-928-0511', fax: '082-927-2850', website: 'http://www.yahatagawa.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八幡川', kana: 'やはたがわ', company: c)
Brand.find_or_create_by!(name: '六義', kana: 'りくぎ', company: c)
Brand.find_or_create_by!(name: '天鴻', kana: 'てんこう', company: c)


c = Company.create_or_find_by!(name: '広島県立総合技術研究所 食品工業技術センター', kana: 'ひろしまけんりつそうごうぎじゅつけんきゅうしょ しょくひんこうぎょうぎじゅつせんたー')
address_attrs = { prefecture_code: 34, city: '広島市南区', street_address: '比治山本町12-70', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-251-7433', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '明魂', kana: 'めいこん', company: c)


c = Company.create_or_find_by!(name: '小泉本店', kana: 'こいずみほんてん')
address_attrs = { prefecture_code: 34, city: '広島市西区', street_address: '草津東3-3-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-271-4004', fax: '082-271-4026', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御幸', kana: 'みゆき', company: c)


c = Company.create_or_find_by!(name: '梅田酒造場', kana: 'うめだしゅぞうじょう')
address_attrs = { prefecture_code: 34, city: '広島市安芸区', street_address: '船越6-3-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-822-2031', fax: '082-822-4128', website: 'http://www.honshu-ichi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '本洲一', kana: 'ほんしゅういち', company: c)


c = Company.create_or_find_by!(name: '白天龍酒造場', kana: 'はくてんりゅうしゅぞうじょう')
address_attrs = { prefecture_code: 34, city: '呉市', street_address: '警固屋3-2-18', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-28-0049', fax: '0823-28-4410', website: 'http://www.hakutenryu.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白天龍', kana: 'はくてんりゅう', company: c)


c = Company.create_or_find_by!(name: '三宅本店', kana: 'みやけほんてん')
address_attrs = { prefecture_code: 34, city: '呉市', street_address: '本通7丁目9-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-22-1029', fax: '0823-24-5500', website: 'https://sempuku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '龍が如く', kana: 'りゅうがごとく', company: c)
Brand.find_or_create_by!(name: 'MIKADO LEMON', kana: 'ミカドレモン', company: c)
Brand.find_or_create_by!(name: '千福', kana: 'せんぷく', company: c)
Brand.find_or_create_by!(name: '呉鶴', kana: 'くれつる', company: c)
Brand.find_or_create_by!(name: 'パックマン', kana: 'ぱっくまん', company: c)


c = Company.create_or_find_by!(name: '宝剣酒造', kana: 'ほうけんしゅぞう')
address_attrs = { prefecture_code: 34, city: '呉市', street_address: '仁方本町1丁目11-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-79-5080', fax: '0823-79-0119', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '呉の土井鉄', kana: 'くれのどいてつ', company: c)
Brand.find_or_create_by!(name: '宝剣', kana: 'ほうけん', company: c)


c = Company.create_or_find_by!(name: '相原酒造', kana: 'あいはらしゅぞう')
address_attrs = { prefecture_code: 34, city: '呉市', street_address: '仁方本町1-25-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-79-5008', fax: '0823-79-6247', website: 'https://www.ugonotsuki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '微紅', kana: 'びこう', company: c)
Brand.find_or_create_by!(name: '雨後の月', kana: 'うごのつき', company: c)
Brand.find_or_create_by!(name: '金泉', kana: 'きんせん', company: c)


c = Company.create_or_find_by!(name: '中野光次郎本店', kana: 'なかのみつじろうほんてん')
address_attrs = { prefecture_code: 34, city: '呉市', street_address: '吉浦中町2-7-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-31-7001', fax: '0823-31-7966', website: 'http://suiryu.info', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '水龍', kana: 'すいりゅう', company: c)


c = Company.create_or_find_by!(name: '榎酒造', kana: 'えのきしゅぞう')
address_attrs = { prefecture_code: 34, city: '呉市', street_address: '音戸町南隠渡2-1-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-52-1234', fax: '0823-51-2238', website: 'http://hanahato.ocnk.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '華鳩', kana: 'はなはと', company: c)


c = Company.create_or_find_by!(name: '藤岡酒造店', kana: 'ふじおかしゅぞうてん')
address_attrs = { prefecture_code: 34, city: '呉市', street_address: '音戸町畑3-16-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-56-0337', fax: '0823-56-2438', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '音戸の瀬戸', kana: 'おんどのせと', company: c)


c = Company.create_or_find_by!(name: '林酒造', kana: 'はやししゅぞう')
address_attrs = { prefecture_code: 34, city: '呉市', street_address: '倉橋町11777', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-54-0310', fax: '0823-54-0310', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三谷春', kana: 'みたにはる', company: c)


c = Company.create_or_find_by!(name: '江田島銘醸', kana: 'えたじまめいじょう')
address_attrs = { prefecture_code: 34, city: '江田島市', street_address: '江田島町中央2-27-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-42-0001', fax: '0823-42-4536', website: 'http://www.doukinosakura.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '江田島', kana: 'えたじま', company: c)
Brand.find_or_create_by!(name: '同期の桜', kana: 'どうきのさくら', company: c)
Brand.find_or_create_by!(name: '古鷹', kana: 'こだか', company: c)


c = Company.create_or_find_by!(name: '津田酒造', kana: 'つだしゅぞう')
address_attrs = { prefecture_code: 34, city: '江田島市', street_address: '能美町中町2372-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0823-45-2727', fax: '0823-45-2729', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '島の香', kana: 'しまのかおり', company: c)


c = Company.create_or_find_by!(name: '中国醸造', kana: 'ちゅうごくじょうぞう')
address_attrs = { prefecture_code: 34, city: '廿日市市', street_address: '桜尾1丁目12-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0829-32-2111', fax: '0829-32-2110', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '一代弥山', kana: 'いちだいみせん', company: c)


c = Company.create_or_find_by!(name: '賀茂泉酒造', kana: 'かもいずみしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '西条上市町2-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-423-2118', fax: '082-423-9217', website: 'http://www.kamoizumi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あゝ不思議なお酒', kana: 'あゝふしぎなおさけ', company: c)
Brand.find_or_create_by!(name: '賀茂泉', kana: 'かもいずみ', company: c)
Brand.find_or_create_by!(name: '及川', kana: 'おいかわ', company: c)
Brand.find_or_create_by!(name: '造賀', kana: 'ぞうか', company: c)


c = Company.create_or_find_by!(name: '亀齢酒造', kana: 'きれいしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '西条本町8-18', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-422-2171', fax: '082-423-8219', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '草薙', kana: 'くさなぎ', company: c)
Brand.find_or_create_by!(name: '亀齢', kana: 'きれい', company: c)


c = Company.create_or_find_by!(name: '白牡丹酒造', kana: 'はくぼたんしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '西条本町15-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-422-2142', fax: '082-424-4250', website: 'http://www.hakubotan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白牡丹', kana: 'はくぼたん', company: c)
Brand.find_or_create_by!(name: '紅甘萬', kana: 'べにかんまん', company: c)


c = Company.create_or_find_by!(name: '福美人酒造', kana: 'ふくびじんしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '西条本町6-21', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-423-3148', fax: '082-422-7497', website: 'http://www.fukubijin.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福美人', kana: 'ふくびじん', company: c)


c = Company.create_or_find_by!(name: '西條鶴醸造', kana: 'さいじょうつるしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '西条本町9-17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-423-2345', fax: '082-422-8272', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '西條鶴', kana: 'さいじょうつる', company: c)


c = Company.create_or_find_by!(name: '賀茂鶴酒造', kana: 'かもつるしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '西条本町4-31', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-422-2121', fax: '082-422-2300', website: 'https://www.kamotsuru.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '広島錦', kana: 'ひろしまにしき', company: c)
Brand.find_or_create_by!(name: '一滴入魂', kana: 'いってきにゅうこん', company: c)
Brand.find_or_create_by!(name: '賀茂鶴', kana: 'かもつる', company: c)
Brand.find_or_create_by!(name: '天凛', kana: 'てんりん', company: c)


c = Company.create_or_find_by!(name: '山陽鶴酒造', kana: 'さんようつるしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '西条岡町6-9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-423-2055', fax: '082-422-7933', website: 'http://www.sanyotsuru.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山陽鶴', kana: 'さんようつる', company: c)


c = Company.create_or_find_by!(name: '賀茂輝酒造', kana: 'かもきしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '賀茂輝', kana: 'かもき', company: c)


c = Company.create_or_find_by!(name: '千代乃春酒造', kana: 'ちよのはるしゅぞう')
address_attrs = { prefecture_code: 34, city: '東広島市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '千代乃春', kana: 'ちよのはる', company: c)


c = Company.create_or_find_by!(name: '田熊酒造', kana: 'たぐましゅぞう')
address_attrs = { prefecture_code: 34, city: '大竹市', street_address: '元町1-3-14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '082-232-1416', fax: '082-232-1425', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '円通', kana: 'えんつう', company: c)


c = Company.create_or_find_by!(name: '藤高酒造', kana: 'ふじたかしゅぞう')
address_attrs = { prefecture_code: 34, city: '大竹市', street_address: '木野1-6-23', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0827-52-3220', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '喜久娘', kana: 'きくむすめ', company: c)


c = Company.create_or_find_by!(name: '向原酒造', kana: 'むかいはらしゅぞう')
address_attrs = { prefecture_code: 34, city: '安芸高田市', street_address: '向原町坂238-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0826-46-2008', fax: '0826-46-4064', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '安芸高田', kana: 'あきたかた', company: c)
Brand.find_or_create_by!(name: '粋', kana: 'すい', company: c)
Brand.find_or_create_by!(name: '向井桜', kana: 'むかいざくら', company: c)
