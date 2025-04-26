c = Company.create_or_find_by!(name: '美川酒造場', kana: 'みかわしゅぞうじょう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '小稲津町36-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-41-1002', fax: '0776-41-1002', website: 'http://www.maibijin.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '舞美人', kana: 'まいびじん', company: c)


c = Company.create_or_find_by!(name: '越の磯', kana: 'こしのいそ')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '大宮5-8-25', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-22-7711', fax: '0776-24-0237', website: 'http://www.j-brewery.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越の磯', kana: 'こしのいそ', company: c)
Brand.find_or_create_by!(name: '越前忘憂', kana: 'えちぜんぼうゆう', company: c)
Brand.find_or_create_by!(name: '無の心', kana: 'むのこころ', company: c)
Brand.find_or_create_by!(name: '春夏秋雪 越前', kana: 'しゅんかしゅうせつ', company: c)
Brand.find_or_create_by!(name: '一期一会', kana: 'いちごいちえ', company: c)
Brand.find_or_create_by!(name: '刻がさね', kana: 'ときがさね', company: c)


c = Company.create_or_find_by!(name: '菊桂酒造', kana: 'きくかつらしゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '黄金舎', kana: 'こがねのや', company: c)
Brand.find_or_create_by!(name: '雪夢想', kana: 'ゆきむそう', company: c)
Brand.find_or_create_by!(name: '曙覧の酒', kana: 'あけみのさけ', company: c)
Brand.find_or_create_by!(name: '菊桂', kana: 'きくかつら', company: c)


c = Company.create_or_find_by!(name: '久保田酒造', kana: 'くぼたしゅぞう')
address_attrs = { prefecture_code: 18, city: '坂井市', street_address: '丸岡町山久保27-45', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-66-0123', fax: '0776-67-2367', website: 'https://www.fukukoma.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富久駒', kana: 'ふくこま', company: c)
Brand.find_or_create_by!(name: '杜氏一献', kana: 'とうじいっこん', company: c)
Brand.find_or_create_by!(name: '芳泉の露', kana: 'ほうせんのしずく', company: c)
Brand.find_or_create_by!(name: '鬼作左', kana: 'おにさくざ', company: c)
Brand.find_or_create_by!(name: '駒ヶ瀬屋', kana: 'こまがせや', company: c)
Brand.find_or_create_by!(name: '丸岡城', kana: 'まるおかじょう', company: c)
Brand.find_or_create_by!(name: '一筆啓上', kana: 'いっぴつけいじょう', company: c)
Brand.find_or_create_by!(name: '淵龍', kana: 'えんりゅう', company: c)
Brand.find_or_create_by!(name: '蔵の宿', kana: 'くらのやど', company: c)
Brand.find_or_create_by!(name: '稲越', kana: 'いなごえ', company: c)


c = Company.create_or_find_by!(name: '舟木酒造', kana: 'ふなきしゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '大和田町46-3-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-54-2323', fax: '0776-54-6623', website: 'http://www.funaki-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北の庄', kana: 'きたのしょう', company: c)
Brand.find_or_create_by!(name: '富成喜', kana: 'ふなき', company: c)
Brand.find_or_create_by!(name: '若鹿', kana: 'わかしか', company: c)


c = Company.create_or_find_by!(name: '常山酒造', kana: 'とこやましゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '御幸1-19-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-22-1541', fax: '0776-22-1841', website: 'https://www.jozan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '羽二重正宗', kana: 'はぶたえまさむね', company: c)
Brand.find_or_create_by!(name: '常山', kana: 'じょうざん', company: c)
Brand.find_or_create_by!(name: '越山若水', kana: 'えつざんじゃくすい', company: c)


c = Company.create_or_find_by!(name: '黒龍酒造', kana: 'こくりゅうしゅぞう')
address_attrs = { prefecture_code: 18, city: '吉田郡', street_address: '永平寺町松岡春日1-38', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-61-0038', fax: '0776-61-3833', website: 'https://www.kokuryu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '黒龍', kana: 'こくりゅう', company: c)
Brand.find_or_create_by!(name: '九頭龍', kana: 'くずりゅう', company: c)


c = Company.create_or_find_by!(name: '田邊酒造', kana: 'たなべしゅぞう')
address_attrs = { prefecture_code: 18, city: '吉田郡', street_address: '永平寺町松岡芝原2-24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-61-0029', fax: '0776-61-1721', website: 'http://www.echizenmisaki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '優勝', kana: 'ゆうしょう', company: c)
Brand.find_or_create_by!(name: '越前岬', kana: 'えちぜんみさき', company: c)


c = Company.create_or_find_by!(name: '吉田酒造', kana: 'よしだしゅぞう')
address_attrs = { prefecture_code: 18, city: '吉田郡', street_address: '永平寺町北島7-22', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-64-2015', fax: '0776-64-2932', website: 'https://www.jizakegura.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉峯', kana: 'きっぽう', company: c)
Brand.find_or_create_by!(name: '游 YOU', kana: 'ゆう', company: c)
Brand.find_or_create_by!(name: '三世', kana: 'さんぜ', company: c)
Brand.find_or_create_by!(name: '旭泉', kana: 'あさいずみ', company: c)
Brand.find_or_create_by!(name: '永平寺白龍', kana: 'えいへいじはくりゅう', company: c)
Brand.find_or_create_by!(name: '四季物語', kana: 'しきものがたり', company: c)
Brand.find_or_create_by!(name: '鯖光る', kana: 'さばひかる', company: c)


c = Company.create_or_find_by!(name: '毛利酒造', kana: 'もうりしゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '東郷二ヶ町36-29', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-41-0020', fax: '0776-41-0887', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月之抄', kana: 'つきのしょう', company: c)
Brand.find_or_create_by!(name: '越の桂月', kana: 'こしのけいげつ', company: c)
Brand.find_or_create_by!(name: '紗利', kana: 'さり', company: c)


c = Company.create_or_find_by!(name: '安本酒造', kana: 'やすもとしゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '安原町7-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-41-0011', fax: '0776-41-0012', website: 'http://www.yasumoto-shuzo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '国府司', kana: 'こくふし', company: c)
Brand.find_or_create_by!(name: '白岳仙', kana: 'はくがくせん', company: c)


c = Company.create_or_find_by!(name: '力泉酒造', kana: 'りきせんしゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '島山梨子20-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-59-1046', fax: '0776-59-1948', website: 'http://tutuzi.com/rikisen', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '明乃鶴', kana: 'あけのつる', company: c)


c = Company.create_or_find_by!(name: '伊藤酒造', kana: 'いとうしゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '江上町44-65', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-59-1018', fax: '0776-59-1596', website: 'http://www.koshinotaka.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越の鷹', kana: 'こしのたか', company: c)
Brand.find_or_create_by!(name: '粋星', kana: 'いきぼし', company: c)


c = Company.create_or_find_by!(name: '吉田金右衛門商店', kana: 'よしだきんえもんしょうてん')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '佐野町21-81', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-83-1166', fax: '0776-83-1167', website: 'http://www.kumonoi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '明星', kana: 'みょうじょう', company: c)
Brand.find_or_create_by!(name: '雲乃井', kana: 'くものい', company: c)


c = Company.create_or_find_by!(name: '西岡河村酒造', kana: 'にしおかかわむらしゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '甑谷町1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-98-5166', fax: '0776-98-3541', website: 'http://www.tsukimaru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月丸', kana: 'つきまる', company: c)
Brand.find_or_create_by!(name: '天津神力', kana: 'あまつしんりき', company: c)
Brand.find_or_create_by!(name: '一富士', kana: 'いちふじ', company: c)
Brand.find_or_create_by!(name: '谷の井', kana: 'たにのい', company: c)
Brand.find_or_create_by!(name: '天乃姫', kana: 'あまのひめ', company: c)


c = Company.create_or_find_by!(name: '中村酒造', kana: 'なかむらしゅぞう')
address_attrs = { prefecture_code: 18, city: '勝山市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '吉野盛', kana: 'よしのざかり', company: c)


c = Company.create_or_find_by!(name: '一本義久保本店', kana: 'いっぽんぎくぼほんてん')
address_attrs = { prefecture_code: 18, city: '勝山市', street_address: '沢町1-3-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0779-87-2500', fax: '0779-87-2504', website: 'https://www.ippongi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '伝心', kana: 'でんしん', company: c)
Brand.find_or_create_by!(name: '一本義', kana: 'いっぽんぎ', company: c)


c = Company.create_or_find_by!(name: '佐々木酒造', kana: 'ささきしゅぞう')
address_attrs = { prefecture_code: 18, city: '勝山市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '宇治川', kana: 'うじがわ', company: c)


c = Company.create_or_find_by!(name: '宇野酒造場', kana: 'うのしゅぞうじょう')
address_attrs = { prefecture_code: 18, city: '大野市', street_address: '本町3-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0779-66-2236', fax: '0779-65-8364', website: 'http://www.itinotani.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '一乃谷', kana: 'いちのたに', company: c)


c = Company.create_or_find_by!(name: '源平酒造', kana: 'げんぺいしゅぞう')
address_attrs = { prefecture_code: 18, city: '大野市', street_address: '要町1-33', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0779-66-5712', fax: '0779-66-5828', website: 'http://www.genpeishuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '源平', kana: 'げんぺい', company: c)


c = Company.create_or_find_by!(name: '南部酒造場', kana: 'なんぶしゅぞうじょう')
address_attrs = { prefecture_code: 18, city: '大野市', street_address: '元町6-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0779-65-8900', fax: '0779-65-1986', website: 'https://www.hanagaki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花垣', kana: 'はながき', company: c)
Brand.find_or_create_by!(name: 'ShuShuShu', kana: 'シュシュシュ', company: c)


c = Company.create_or_find_by!(name: '真名鶴酒造', kana: 'まなつるしゅぞう')
address_attrs = { prefecture_code: 18, city: '大野市', street_address: '明倫町11-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0779-66-2909', fax: '0779-66-2690', website: 'http://www.manaturu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '真名鶴', kana: 'まなつる', company: c)


c = Company.create_or_find_by!(name: '敦賀酒造', kana: 'つるがしゅぞう')
address_attrs = { prefecture_code: 18, city: '敦賀市', street_address: '相生町21-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0770-22-2143', fax: '0770-22-2144', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福寿杯', kana: 'ふくじゅはい', company: c)


c = Company.create_or_find_by!(name: '寿喜娘酒造', kana: 'すきむすめしゅぞう')
address_attrs = { prefecture_code: 18, city: '越前市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '三田村', kana: 'みたむら', company: c)
Brand.find_or_create_by!(name: '寿喜娘', kana: 'すきむすめ', company: c)


c = Company.create_or_find_by!(name: 'タナベ', kana: 'たなべ')
address_attrs = { prefecture_code: 18, city: '越前市', street_address: '家久町89-22', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-22-0580', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '一献の春', kana: 'いっこんのはる', company: c)


c = Company.create_or_find_by!(name: '片山酒造', kana: 'かたやましゅぞう')
address_attrs = { prefecture_code: 18, city: '越前市', street_address: '余田町51-18', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-22-0209', fax: '0778-22-1096', website: 'http://www.sake-kansai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '関西', kana: 'かんさい', company: c)


c = Company.create_or_find_by!(name: '加藤吉平商店', kana: 'かとうきちべいしょうてん')
address_attrs = { prefecture_code: 18, city: '鯖江市', street_address: '吉江町1-11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-51-1507', fax: '0778-53-1406', website: 'http://www.born.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '梵', kana: 'ぼん', company: c)


c = Company.create_or_find_by!(name: '金鱗酒造', kana: 'きんりんしゅぞう')
address_attrs = { prefecture_code: 18, city: '鯖江市', street_address: '舟枝町5-14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-51-0336', fax: '0778-51-0428', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '黄金宝船', kana: 'おうごんたからぶね', company: c)


c = Company.create_or_find_by!(name: '井波酒造', kana: 'いなみしゅぞう')
address_attrs = { prefecture_code: 18, city: '鯖江市', street_address: '有定町1-1-22', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-51-0020', fax: '0778-52-0014', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '七ツ星', kana: 'ななつぼし', company: c)


c = Company.create_or_find_by!(name: '豊酒造', kana: 'ゆたかしゅぞう')
address_attrs = { prefecture_code: 18, city: '鯖江市', street_address: '下野田町38-70', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-62-1013', fax: '0778-62-2184', website: 'http://www.sake-kashoku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '華燭', kana: 'かしょく', company: c)


c = Company.create_or_find_by!(name: '丹生酒造', kana: 'にゅうしゅぞう')
address_attrs = { prefecture_code: 18, city: '丹生郡', street_address: '越前町天王18-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-34-0022', fax: '0778-34-0033', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '飛鳥井', kana: 'あすかい', company: c)


c = Company.create_or_find_by!(name: '朝日酒造', kana: 'あさひしゅぞう')
address_attrs = { prefecture_code: 18, city: '丹生郡', street_address: '越前町西田中11-53', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-34-0020', fax: '0778-34-1200', website: 'http://asahisyuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富士の関', kana: 'ふじのせき', company: c)


c = Company.create_or_find_by!(name: 'わかさ冨士', kana: 'わかさふじ')
address_attrs = { prefecture_code: 18, city: '小浜市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '稚桜', kana: 'わかさくら', company: c)
Brand.find_or_create_by!(name: 'わかさ', kana: 'わかさ', company: c)


c = Company.create_or_find_by!(name: '小浜酒造', kana: 'おばましゅぞう')
address_attrs = { prefecture_code: 18, city: '小浜市', street_address: '中井18-34', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0770-64-5473', fax: '0770-64-5474', website: 'https://obama-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '百伝ふ', kana: 'ももつたふ', company: c)
Brand.find_or_create_by!(name: 'わかさ', kana: 'わかさ', company: c)
Brand.find_or_create_by!(name: '岳颪', kana: 'やまおろし', company: c)
Brand.find_or_create_by!(name: '熊川宿', kana: 'くまがわじゅく', company: c)


c = Company.create_or_find_by!(name: '若狭井酒造', kana: 'わかさいしゅぞう')
address_attrs = { prefecture_code: 18, city: '小浜市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '若狭井', kana: 'わかさい', company: c)


c = Company.create_or_find_by!(name: '増永酒造', kana: 'ますながしゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '華州', kana: 'かしゅう', company: c)


c = Company.create_or_find_by!(name: '田嶋酒造', kana: 'たじましゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '桃園1-3-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-36-3385', fax: '0776-34-1933', website: 'https://www.fukuchitose.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福千歳', kana: 'ふくちとせ', company: c)


c = Company.create_or_find_by!(name: '池田酒造', kana: 'いけだしゅぞう')
address_attrs = { prefecture_code: 18, city: '福井市', street_address: '本堂町70-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-37-1005', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天下取', kana: 'てんかとり', company: c)
Brand.find_or_create_by!(name: '小春日和', kana: 'こはるびより', company: c)


c = Company.create_or_find_by!(name: '北善商店', kana: 'きたぜんしょうてん')
address_attrs = { prefecture_code: 18, city: '南条郡', street_address: '南越前町今庄81-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-45-0016', fax: '0778-45-1365', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '聖乃御代', kana: 'ひじりのみよ', company: c)


c = Company.create_or_find_by!(name: '堀口酒造', kana: 'ほりぐちしゅぞう')
address_attrs = { prefecture_code: 18, city: '南条郡', street_address: '南越前町今庄76-1-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-45-0007', fax: '0778-45-0775', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鳴り瓢', kana: 'なりひさご', company: c)


c = Company.create_or_find_by!(name: '畠山酒造', kana: 'はたけやましゅぞう')
address_attrs = { prefecture_code: 18, city: '南条郡', street_address: '南越前町今庄109-14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-45-0028', fax: '0778-45-0029', website: 'http://www.yukikirara.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '百貴船', kana: 'ももきぶね', company: c)
Brand.find_or_create_by!(name: '雪きらら', kana: 'ゆききらら', company: c)


c = Company.create_or_find_by!(name: '白駒酒造', kana: 'はくこましゅぞう')
address_attrs = { prefecture_code: 18, city: '南条郡', street_address: '南越前町今庄82-24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0778-45-0020', fax: '0778-45-0285', website: 'http://hakukomasyuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白駒', kana: 'はくこま', company: c)


c = Company.create_or_find_by!(name: '坪三酒造', kana: 'つぼさんしゅぞう')
address_attrs = { prefecture_code: 18, city: '坂井市', street_address: '春江町高江24-38', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-51-0041', fax: '0776-51-0041', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福喜久', kana: 'ふくきく', company: c)


c = Company.create_or_find_by!(name: '越前酒造', kana: 'えちぜんしゅぞう')
address_attrs = { prefecture_code: 18, city: 'あわら市', street_address: '北5-86', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0776-74-1007', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越乃泉', kana: 'こしのいずみ', company: c)


c = Company.create_or_find_by!(name: '三宅彦右衛門酒造', kana: 'みやけひこうえもんしゅぞう')
address_attrs = { prefecture_code: 18, city: '三方郡', street_address: '美浜町早瀬21-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0770-32-0303', fax: '0770-32-0304', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '早瀬浦', kana: 'はやせうら', company: c)


c = Company.create_or_find_by!(name: '若狭菊酒造', kana: 'わかさぎくしゅぞう')
address_attrs = { prefecture_code: 18, city: '三方郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '若狭菊', kana: 'わかさきく', company: c)


c = Company.create_or_find_by!(name: '鳥浜酒造', kana: 'とりはましゅぞう')
address_attrs = { prefecture_code: 18, city: '三方上中郡', street_address: '若狭町鳥浜59-30', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0770-45-0021', fax: '0770-45-3434', website: 'http://www.torihama.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '加茂栄', kana: 'かもさかえ', company: c)
Brand.find_or_create_by!(name: '鳥浜', kana: 'とりはま', company: c)
Brand.find_or_create_by!(name: '若狭自慢', kana: 'わかさじまん', company: c)
