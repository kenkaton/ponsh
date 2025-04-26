c = Company.create_or_find_by!(name: '重家酒造', kana: 'おもやしゅぞう')
address_attrs = { prefecture_code: 42, city: '壱岐市', street_address: '石田町印通寺浦200', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0920-44-5002', fax: '0920-44-8401', website: 'https://www.omoyashuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富士鶴', kana: 'ふじつる', company: c)
Brand.find_or_create_by!(name: '海彦山彦', kana: 'うみひこやまひこ', company: c)
Brand.find_or_create_by!(name: 'よこやま', kana: 'よこやま', company: c)
Brand.find_or_create_by!(name: '確蔵', kana: 'かくぞう', company: c)
Brand.find_or_create_by!(name: '横山五十', kana: 'よこやまごじゅう', company: c)


c = Company.create_or_find_by!(name: '壱岐の蔵酒造', kana: 'いきのくらしゅぞう')
address_attrs = { prefecture_code: 42, city: '壱岐市', street_address: '芦辺町湯岳本村触520', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0920-45-2111', fax: '0920-45-2133', website: 'http://ikinokura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '心意気', kana: 'こころいき', company: c)


c = Company.create_or_find_by!(name: '河内酒造', kana: 'かわちしゅぞう')
address_attrs = { prefecture_code: 42, city: '対馬市', street_address: '美津町鶏知甲490-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0920-54-2010', fax: '0920-54-3705', website: 'http://www.kawachi-shop.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '兵介', kana: 'ひょうすけ', company: c)
Brand.find_or_create_by!(name: '白嶽', kana: 'しらたけ', company: c)


c = Company.create_or_find_by!(name: '杵の川', kana: 'きのかわ')
address_attrs = { prefecture_code: 42, city: '諫早市', street_address: '土師野尾町17-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0957-22-5600', fax: '0957-24-5825', website: 'http://www.kinokawa.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '黎明', kana: 'れいめい', company: c)
Brand.find_or_create_by!(name: '杵の川', kana: 'きのかわ', company: c)
Brand.find_or_create_by!(name: '百福', kana: 'ひゃくふく', company: c)
Brand.find_or_create_by!(name: '雲仙', kana: 'うんぜん', company: c)
Brand.find_or_create_by!(name: '長崎奉行', kana: 'ながさきぶぎょう', company: c)
Brand.find_or_create_by!(name: '杵響の蔵', kana: 'ききょうのくら', company: c)
Brand.find_or_create_by!(name: '丁子屋', kana: 'ちょうじや', company: c)
Brand.find_or_create_by!(name: '恵美福', kana: 'えみふく', company: c)


c = Company.create_or_find_by!(name: 'あい娘酒造', kana: 'あいむすめしゅぞう')
address_attrs = { prefecture_code: 42, city: '雲仙市', street_address: '愛野町1378', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0957-36-0025', website: 'http://aimusumesyuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あい娘', kana: 'あいむすめ', company: c)


c = Company.create_or_find_by!(name: '山崎本店酒造場', kana: 'やまさきほんてんしゅぞうじょう')
address_attrs = { prefecture_code: 42, city: '島原市', street_address: '白土町1065', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0957-62-2175', fax: '0957-62-2177', website: 'http://www.yamasaki-syuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '普賢岳', kana: 'ふげんだけ', company: c)
Brand.find_or_create_by!(name: '白い林檎', kana: 'しろいりんご', company: c)
Brand.find_or_create_by!(name: '月のよさ', kana: 'つきのよさ', company: c)
Brand.find_or_create_by!(name: 'まが玉', kana: 'まがたま', company: c)


c = Company.create_or_find_by!(name: '西牟田酒造場', kana: 'にしむたしゅぞうじょう')
address_attrs = { prefecture_code: 42, city: '佐世保市', street_address: '中里町129', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0956-47-2569', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富久泉', kana: 'ふくいずみ', company: c)


c = Company.create_or_find_by!(name: '伊藤酒造場', kana: 'いとうしゅぞうじょう')
address_attrs = { prefecture_code: 42, city: '雲仙市', street_address: '吾妻町241', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0957-38-2035', website: 'http://www13.ocn.ne.jp/~itosyuzo', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東露', kana: 'あずまつゆ', company: c)


c = Company.create_or_find_by!(name: '太田酒造場', kana: 'おおたしゅぞうじょう')
address_attrs = { prefecture_code: 42, city: '雲仙市', street_address: '国見町多比良丙811', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0957-78-2006', fax: '0957-78-2006', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '亀の池', kana: 'かめのいけ', company: c)


c = Company.create_or_find_by!(name: '加藤酒造場', kana: 'かとうしゅぞうじょう')
address_attrs = { prefecture_code: 42, city: '島原市', street_address: '有明町大三東戊1216-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0957-68-0001', fax: '0957-68-0124', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あさひ登', kana: 'あさひのぼる', company: c)


c = Company.create_or_find_by!(name: '吉田屋', kana: 'よしだや')
address_attrs = { prefecture_code: 42, city: '南島原市', street_address: '有家町山川785', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0957-82-2032', fax: '0957-82-3084', website: 'http://www.bansho.info', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '清泉石上流', kana: 'せいせんせきじょうをながる', company: c)
Brand.find_or_create_by!(name: '萬勝', kana: 'ばんしょう', company: c)


c = Company.create_or_find_by!(name: '浦川酒造', kana: 'うらかわしゅぞう')
address_attrs = { prefecture_code: 42, city: '南島原市', street_address: '有家町山川1123', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0957-82-2030', fax: '0957-82-8736', website: 'http://sake-ikkaku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '一鶴', kana: 'いっかく', company: c)
Brand.find_or_create_by!(name: '時代の酒', kana: 'じだいのさけ', company: c)


c = Company.create_or_find_by!(name: '梅ヶ枝酒造', kana: 'うめがえしゅぞう')
address_attrs = { prefecture_code: 42, city: '佐世保市', street_address: '城間町317', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0956-59-2311', fax: '0956-59-2312', website: 'https://umegae-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ももいろにごり酒', kana: 'ももいろにごりざけ', company: c)
Brand.find_or_create_by!(name: '梅ヶ枝', kana: 'うめがえ', company: c)
Brand.find_or_create_by!(name: '九十九島', kana: 'くじゅうくしま', company: c)
Brand.find_or_create_by!(name: 'Sparkling Sake', kana: 'スパークリング サケ', company: c)
Brand.find_or_create_by!(name: 'LaLaLa smile', kana: 'ラララ スマイル', company: c)
Brand.find_or_create_by!(name: 'RuRuRu happy', kana: 'ルルル ハッピー', company: c)
Brand.find_or_create_by!(name: '一酔西匠', kana: 'いっすいさいしょう', company: c)
Brand.find_or_create_by!(name: 'させぼ白仁田', kana: 'させぼしらにた', company: c)


c = Company.create_or_find_by!(name: '今里酒造', kana: 'いまざとしゅぞう')
address_attrs = { prefecture_code: 42, city: '東彼杵郡', street_address: '波佐見町宿郷596', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0956-85-2002', fax: '0956-85-4480', website: 'https://rokujuyoshu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '六十餘洲', kana: 'ろくじゅうよしゅう', company: c)


c = Company.create_or_find_by!(name: '森酒造場', kana: 'もりしゅぞうじょう')
address_attrs = { prefecture_code: 42, city: '平戸市', street_address: '新町31-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0950-23-3131', fax: '0950-22-4174', website: 'http://www.mori-shuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '棲霞園', kana: 'せいかえん', company: c)
Brand.find_or_create_by!(name: 'BLACK JACK', kana: 'ブラックジャック', company: c)
Brand.find_or_create_by!(name: '幸橋', kana: 'さいわいばし', company: c)
Brand.find_or_create_by!(name: '豊年', kana: 'ほうねん', company: c)
Brand.find_or_create_by!(name: '夢名酒', kana: 'むめいしゅ', company: c)
Brand.find_or_create_by!(name: '平戸つつじ', kana: 'ひらどつつじ', company: c)
Brand.find_or_create_by!(name: '飛鸞', kana: 'ひらん', company: c)
Brand.find_or_create_by!(name: 'わたぼうし', kana: 'わたぼうし', company: c)


c = Company.create_or_find_by!(name: '福田酒造', kana: 'ふくだしゅぞう')
address_attrs = { prefecture_code: 42, city: '平戸市', street_address: '志々伎町1475', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0950-27-1111', fax: '0950-27-0320', website: 'https://www.fukuda-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '長崎丸山', kana: 'ながさきまるやま', company: c)
Brand.find_or_create_by!(name: '長崎美人', kana: 'ながさきびじん', company: c)
Brand.find_or_create_by!(name: '福田', kana: 'ふくだ', company: c)
Brand.find_or_create_by!(name: '福鶴', kana: 'ふくつる', company: c)
Brand.find_or_create_by!(name: '初恋音', kana: 'はつこいね', company: c)
Brand.find_or_create_by!(name: 'Giyaman', kana: 'ギヤマン', company: c)


c = Company.create_or_find_by!(name: '潜龍酒造', kana: 'せんりゅうしゅぞう')
address_attrs = { prefecture_code: 42, city: '北松浦郡', street_address: '江迎町長坂209', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0956-65-2209', fax: '0956-65-2404', website: 'https://www.senryuu.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白星', kana: 'しろぼし', company: c)
Brand.find_or_create_by!(name: '精霊流し', kana: 'しょうろうながし', company: c)
Brand.find_or_create_by!(name: '松浦星', kana: 'まつうらぼし', company: c)
Brand.find_or_create_by!(name: 'みずの光彩', kana: 'みずのきらめき', company: c)
Brand.find_or_create_by!(name: 'ふるさと讃歌', kana: 'ふるさとさんか', company: c)
Brand.find_or_create_by!(name: '∴本陣', kana: 'みつぼしほんじん', company: c)
