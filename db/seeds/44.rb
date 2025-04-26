c = Company.create_or_find_by!(name: '倉光酒造', kana: 'そうこうしゅぞう')
address_attrs = { prefecture_code: 44, city: '大分市', street_address: '森町825', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '097-521-2528', fax: '097-521-2529', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '倉光', kana: 'そうこう', company: c)


c = Company.create_or_find_by!(name: '久保酒蔵', kana: 'くぼしゅぞう')
address_attrs = { prefecture_code: 44, city: '宇佐市', street_address: '長洲3581-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-38-0109', fax: '0978-38-4775', website: 'http://www.kubosyuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '龍の井', kana: 'たつのい', company: c)
Brand.find_or_create_by!(name: '華え', kana: 'はなえ', company: c)
Brand.find_or_create_by!(name: '文殊', kana: 'もんじゅ', company: c)


c = Company.create_or_find_by!(name: '宇佐酒類', kana: 'うさしゅるい')
address_attrs = { prefecture_code: 44, city: '宇佐市', street_address: '長洲3692-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-38-1834', fax: '0978-38-1834', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊娘', kana: 'とよむすめ', company: c)


c = Company.create_or_find_by!(name: '小松酒造場', kana: 'こまつしゅぞうじょう')
address_attrs = { prefecture_code: 44, city: '宇佐市', street_address: '長洲3341', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-38-0036', fax: '0978-38-1113', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勲の松', kana: 'いさおのまつ', company: c)
Brand.find_or_create_by!(name: '豊潤', kana: 'ほうじゅん', company: c)
Brand.find_or_create_by!(name: '大分福', kana: 'おおいたふく', company: c)


c = Company.create_or_find_by!(name: '江本商店', kana: 'えもとしょうてん')
address_attrs = { prefecture_code: 44, city: '宇佐市', street_address: '長洲369', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-38-0012', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔桜', kana: 'よいざくら', company: c)


c = Company.create_or_find_by!(name: '民潮酒舗', kana: 'みんちょうしゅほ')
address_attrs = { prefecture_code: 44, city: '宇佐市', street_address: '江須賀2846', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-38-0808', fax: '0978-38-1717', website: 'http://www.minchousyuho.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '民潮', kana: 'みんちょう', company: c)


c = Company.create_or_find_by!(name: '大分銘醸', kana: 'おおいためいじょう')
address_attrs = { prefecture_code: 44, city: '宇佐市', street_address: '安心院町折敷田204-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-44-2250', fax: '0978-44-2251', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宇佐錦', kana: 'うさにしき', company: c)
Brand.find_or_create_by!(name: '萬歳松', kana: 'ばんざいまつ', company: c)
Brand.find_or_create_by!(name: '双葉山', kana: 'ふたばやま', company: c)


c = Company.create_or_find_by!(name: '中野酒造', kana: 'なかのしゅぞう')
address_attrs = { prefecture_code: 44, city: '杵築市', street_address: '南杵築2487-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-62-2109', fax: '0978-63-4160', website: 'http://chiebijin.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ちえびじん', kana: 'ちえびじん', company: c)
Brand.find_or_create_by!(name: 'イモリ谷', kana: 'いもりだに', company: c)
Brand.find_or_create_by!(name: '国東千年物語', kana: 'くにさきせんねんものがたり', company: c)
Brand.find_or_create_by!(name: '智恵美人', kana: 'ちえびじん', company: c)


c = Company.create_or_find_by!(name: '矢野酒造場', kana: 'やのしゅぞうじょう')
address_attrs = { prefecture_code: 44, city: '国東市', street_address: '安岐町成久11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-67-0011', fax: '0978-67-0012', website: 'https://www.yano-shuzoujou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '松乃露', kana: 'まつのつゆ', company: c)
Brand.find_or_create_by!(name: '蔵心', kana: 'くらごころ', company: c)
Brand.find_or_create_by!(name: '森羅万象', kana: 'しんらばんしょう', company: c)


c = Company.create_or_find_by!(name: '萱島酒造', kana: 'かやしましゅぞう')
address_attrs = { prefecture_code: 44, city: '国東市', street_address: '国東町綱井392-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-72-1181', fax: '0978-72-1182', website: 'http://www.nishinoseki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'KUNISAKI', kana: 'くにさき', company: c)
Brand.find_or_create_by!(name: '千三百年の祈り', kana: 'せんさんびゃくねんのいのり', company: c)
Brand.find_or_create_by!(name: '西の関', kana: 'にしのせき', company: c)


c = Company.create_or_find_by!(name: '久家本店', kana: 'くげほんてん')
address_attrs = { prefecture_code: 44, city: '臼杵市', street_address: '江無田382', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0972-63-8000', fax: '0972-63-8022', website: 'https://kugehonten.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '九六位', kana: 'くろくい', company: c)
Brand.find_or_create_by!(name: 'USUKI', kana: 'うすき', company: c)
Brand.find_or_create_by!(name: 'なごり雪', kana: 'なごりゆき', company: c)
Brand.find_or_create_by!(name: '一の井手', kana: 'いちのいで', company: c)


c = Company.create_or_find_by!(name: '小手川酒造', kana: 'こてがわしゅぞう')
address_attrs = { prefecture_code: 44, city: '臼杵市', street_address: '臼杵538', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0972-62-3335', fax: '0972-62-4626', website: 'http://www.fundokin.co.jp/kotegawa', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宗麟', kana: 'そうりん', company: c)


c = Company.create_or_find_by!(name: '藤居酒造', kana: 'ふじいしゅぞう')
address_attrs = { prefecture_code: 44, city: '臼杵市', street_address: '野津町野津市213-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0974-32-2008', fax: '0974-32-2410', website: 'http://www.fujii-shuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '野津院川', kana: 'のついんがわ', company: c)
Brand.find_or_create_by!(name: '龍梅', kana: 'りゅうばい', company: c)
Brand.find_or_create_by!(name: '龍颯', kana: 'りゅうふう', company: c)


c = Company.create_or_find_by!(name: '赤嶺酒造場', kana: 'あかみねしゅぞうじょう')
address_attrs = { prefecture_code: 44, city: '臼杵市', street_address: '野津町野津市164-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0974-32-2001', fax: '0974-32-4161', website: 'http://www.akamineshuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萬寿玉', kana: 'ますたま', company: c)


c = Company.create_or_find_by!(name: '大地酒造', kana: 'おおちしゅぞう')
address_attrs = { prefecture_code: 44, city: '佐伯市', street_address: '船頭町14-14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0972-22-0074', fax: '0972-22-4440', website: 'http://www.saiki.tv/~ochi-s', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花笑み', kana: 'はなえみ', company: c)
Brand.find_or_create_by!(name: '天眞雪正宗', kana: 'てんしんゆきまさむね', company: c)
Brand.find_or_create_by!(name: '豊後翠明', kana: 'ぶんごすいめい', company: c)


c = Company.create_or_find_by!(name: 'クンチョウ酒造', kana: 'くんちょうしゅぞう')
address_attrs = { prefecture_code: 44, city: '日田市', street_address: '豆田町6-31', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0973-23-6262', fax: '0973-23-6265', website: 'https://www.kuncho.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'MOMO', kana: 'モモ', company: c)
Brand.find_or_create_by!(name: '薫長', kana: 'くんちょう', company: c)


c = Company.create_or_find_by!(name: '井上酒造', kana: 'いのうえしゅぞう')
address_attrs = { prefecture_code: 44, city: '日田市', street_address: '大肥2220-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0973-28-2211', fax: '0973-28-2910', website: 'http://www.kakunoi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '角の井', kana: 'かくのい', company: c)


c = Company.create_or_find_by!(name: '老松酒造', kana: 'おいまつしゅぞう')
address_attrs = { prefecture_code: 44, city: '日田市', street_address: '大鶴町2912', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0973-28-2116', fax: '0973-28-2848', website: 'http://www.oimatsu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '黒鬼', kana: 'くろおに', company: c)
Brand.find_or_create_by!(name: '峰乃寒椿', kana: 'みねのかんつばき', company: c)
Brand.find_or_create_by!(name: '日田杉ボトル 和', kana: 'わ', company: c)
Brand.find_or_create_by!(name: '老松', kana: 'おいまつ', company: c)
Brand.find_or_create_by!(name: '山水', kana: 'さんすい', company: c)


c = Company.create_or_find_by!(name: '佐藤酒造', kana: 'さとうしゅぞう')
address_attrs = { prefecture_code: 44, city: '竹田市', street_address: '久住町久住6197', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0974-76-0004', fax: '0974-76-0005', website: 'http://kuju-senbazuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千羽鶴', kana: 'せんばづる', company: c)


c = Company.create_or_find_by!(name: '西の誉銘醸', kana: 'にしのほまれめいじょう')
address_attrs = { prefecture_code: 44, city: '中津市', street_address: '福島2065-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0979-32-2600', fax: '0979-32-6689', website: 'http://www.yukichinosato.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '耶馬正宗', kana: 'やばまさむね', company: c)
Brand.find_or_create_by!(name: '西の誉', kana: 'にしのほまれ', company: c)


c = Company.create_or_find_by!(name: '常徳屋酒造場', kana: 'じょうとくやしゅぞうじょう')
address_attrs = { prefecture_code: 44, city: '宇佐市', street_address: '四日市1205-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-32-0011', fax: '0978-32-7861', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '正直の誉', kana: 'しょうじきのほまれ', company: c)


c = Company.create_or_find_by!(name: '三和酒類', kana: 'さんわしゅるい')
address_attrs = { prefecture_code: 44, city: '宇佐市', street_address: '山本2231-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-32-1431', fax: '0978-33-3030', website: 'http://www.sanwa-shurui.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '虚空蔵', kana: 'こくぞう', company: c)
Brand.find_or_create_by!(name: '和香牡丹', kana: 'わかぼたん', company: c)
Brand.find_or_create_by!(name: '福貴野', kana: 'ふきの', company: c)


c = Company.create_or_find_by!(name: '山田酒造場', kana: 'やまだしゅぞうじょう')
address_attrs = { prefecture_code: 44, city: '豊後高田市', street_address: '新栄1216', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0978-22-2222', fax: '0978-22-3984', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊乃関', kana: 'とよのせき', company: c)


c = Company.create_or_find_by!(name: '小野酒造', kana: 'おのしゅぞう')
address_attrs = { prefecture_code: 44, city: '速見郡', street_address: '山香町野原1353-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0977-75-0011', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊後男酒', kana: 'ぶんごおとこざけ', company: c)
Brand.find_or_create_by!(name: '貴運久', kana: 'きんぐ', company: c)


c = Company.create_or_find_by!(name: 'ぶんご銘醸', kana: 'ぶんごめいじょう')
address_attrs = { prefecture_code: 44, city: '佐伯市', street_address: '直川横川789-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0972-58-5855', fax: '0972-58-5857', website: 'http://www.bungomeijyo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '佐伯飛翔', kana: 'さいきひしょう', company: c)
Brand.find_or_create_by!(name: '鶴城', kana: 'かくじょう', company: c)


c = Company.create_or_find_by!(name: '小掠酒造', kana: 'おぐらしゅぞう')
address_attrs = { prefecture_code: 44, city: '佐伯市', street_address: '宇目小野市2941', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0972-54-3002', fax: '0972-54-3368', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔夢', kana: 'すいむ', company: c)
Brand.find_or_create_by!(name: '弥生', kana: 'やよい', company: c)
Brand.find_or_create_by!(name: '宇目の唄げんか', kana: 'うめのうたげんか', company: c)


c = Company.create_or_find_by!(name: '亀の井酒造', kana: 'かめのいしゅぞう')
address_attrs = { prefecture_code: 44, city: '玖珠郡', street_address: '玖珠町小田777', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0973-72-0206', fax: '0973-72-5055', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '玄亀', kana: 'げんかめ', company: c)
Brand.find_or_create_by!(name: '亀の井', kana: 'かめのい', company: c)


c = Company.create_or_find_by!(name: '八鹿酒造', kana: 'やつしかしゅぞう')
address_attrs = { prefecture_code: 44, city: '玖珠郡', street_address: '九重町右田3364', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0973-76-2888', fax: '0973-76-3071', website: 'http://www.yatsushika.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '万年山', kana: 'はねやま', company: c)
Brand.find_or_create_by!(name: 'ゆふいんの森', kana: 'ゆふいんのもり', company: c)
Brand.find_or_create_by!(name: '八鹿', kana: 'やつしか', company: c)
Brand.find_or_create_by!(name: '源', kana: 'げん', company: c)


c = Company.create_or_find_by!(name: '小野酒造', kana: 'おのしゅぞう')
address_attrs = { prefecture_code: 44, city: '由布市', street_address: '庄内町東長宝454-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '097-582-0423', fax: '097-582-2702', website: 'http://www.onoshuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '銀蝶', kana: 'ぎんちょう', company: c)


c = Company.create_or_find_by!(name: '麻生本店', kana: 'あそうほんてん')
address_attrs = { prefecture_code: 44, city: '由布市', street_address: '庄内町畑田16', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '097-582-0008', fax: '097-582-0023', website: 'http://www.asouhonten.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ぶんご梅', kana: 'ぶんごうめ', company: c)
Brand.find_or_create_by!(name: '豊後富士', kana: 'ぶんごふじ', company: c)


c = Company.create_or_find_by!(name: '牟礼鶴酒造', kana: 'むれづるしゅぞう')
address_attrs = { prefecture_code: 44, city: '豊後大野市', street_address: '朝地町市万田570', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0974-72-0101', fax: '0974-72-0103', website: 'http://www.oct-net.ne.jp/mureduru', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '牟礼鶴', kana: 'むれづる', company: c)


c = Company.create_or_find_by!(name: '丹誠酒類', kana: 'たんせいしゅるい')
address_attrs = { prefecture_code: 44, city: '豊後大野市', street_address: '緒方町下自在519', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0974-42-2125', fax: '0974-42-2126', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '丹誠', kana: 'たんせい', company: c)


c = Company.create_or_find_by!(name: '吉良酒造', kana: 'きらしゅぞう')
address_attrs = { prefecture_code: 44, city: '豊後大野市', street_address: '緒方町下自在359', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0974-42-2205', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ゆすらもも', kana: 'ゆすらもも', company: c)


c = Company.create_or_find_by!(name: '浜嶋酒造', kana: 'はましましゅぞう')
address_attrs = { prefecture_code: 44, city: '豊後大野市', street_address: '緒方町下自在381', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0974-42-2216', fax: '0974-42-3090', website: 'http://www.takakiya.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鷹来屋', kana: 'たかきや', company: c)
Brand.find_or_create_by!(name: '華鷹', kana: 'はなたか', company: c)
Brand.find_or_create_by!(name: '金鷹', kana: 'きんたか', company: c)
