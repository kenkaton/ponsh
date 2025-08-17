c = Company.in_prefecture(24).find_or_create_by!(name: '宮﨑本店', kana: 'みやざきほんてん')
address_attrs = { prefecture_code: 24, city: '四日市市', street_address: '楠町南五味塚972', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-397-3111', fax: '059-397-3113', website: 'https://www.miyanoyuki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宮の雪', kana: 'みやのゆき', company: c)
Brand.find_or_create_by!(name: '海女神', kana: 'あまじん', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '清水清三郎商店', kana: 'しみずせいざぶろうしょうてん')
address_attrs = { prefecture_code: 24, city: '鈴鹿市', street_address: '若松東3-9-33', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-385-0011', fax: '059-385-0511', website: 'http://seizaburo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔夢譚', kana: 'すいむたん', company: c)
Brand.find_or_create_by!(name: '作', kana: 'ざく', company: c)
Brand.find_or_create_by!(name: '喜代娘', kana: 'きよむすめ', company: c)
Brand.find_or_create_by!(name: '鈴鹿川', kana: 'すずかがわ', company: c)
Brand.find_or_create_by!(name: 'イセノハナ', kana: 'いせのはな', company: c)
Brand.find_or_create_by!(name: '大黒屋光太夫', kana: 'だいこくやこうだゆう', company: c)
Brand.find_or_create_by!(name: '鈴鹿', kana: 'すずしか', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '小川本家', kana: 'おがわほんけ')
address_attrs = { prefecture_code: 24, city: '津市', street_address: '河芸町一色1425', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-245-0013', fax: '059-245-0013', website: 'http://www.ogawahonke.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八千代', kana: 'やちよ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '神楽酒造', kana: 'かぐらしゅぞう')
address_attrs = { prefecture_code: 24, city: '四日市市', street_address: '室山町326', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0593-21-2205', fax: '0593-21-2205', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神楽', kana: 'かぐら', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '早川酒造', kana: 'はやかわしゅぞう')
address_attrs = { prefecture_code: 24, city: '三重郡', street_address: '菰野町小島468', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-396-2088', fax: '059-396-2338', website: 'http://www.hayakawa-syuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '早春', kana: 'そうしゅん', company: c)
Brand.find_or_create_by!(name: '田光', kana: 'たびか', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: 'タカハシ酒造', kana: 'たかはししゅぞう')
address_attrs = { prefecture_code: 24, city: '四日市市', street_address: '松寺2丁目15-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-365-0205', fax: '059-363-0205', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '伊勢物語', kana: 'いせものがたり', company: c)
Brand.find_or_create_by!(name: '伊勢の白酒', kana: 'いせのしろき', company: c)
Brand.find_or_create_by!(name: '天遊琳', kana: 'てんゆうりん', company: c)
Brand.find_or_create_by!(name: '三重の新嘗', kana: 'みえのにいなえ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '安達本家酒造', kana: 'あだちほんけしゅぞう')
address_attrs = { prefecture_code: 24, city: '三重郡', street_address: '朝日町縄生2107', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0593-77-2411', fax: '0593-77-2410', website: 'http://www.fujinohikari.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富士の光', kana: 'ふじのひかり', company: c)
Brand.find_or_create_by!(name: '清', kana: 'せい', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '稲垣酒造場', kana: 'いながきしゅぞうじょう')
address_attrs = { prefecture_code: 24, city: '三重郡', street_address: '朝日町柿2174', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-377-2018', fax: '059-377-2014', website: 'https://miyamasugi.localinfo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月の真珠', kana: 'つきのしんじゅ', company: c)
Brand.find_or_create_by!(name: '御山杉', kana: 'みやますぎ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '早川酒造部', kana: 'はやかわしゅぞうぶ')
address_attrs = { prefecture_code: 24, city: '三重郡', street_address: '川越町高松829', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-365-0038', fax: '059-365-0038', website: 'http://www.sam.hi-ho.ne.jp/hayakawakeisuke', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天一', kana: 'てんいち', company: c)
Brand.find_or_create_by!(name: '天慶', kana: 'てんけい', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '細川酒造', kana: 'ほそかわしゅぞう')
address_attrs = { prefecture_code: 24, city: '桑名市', street_address: '多度町古野1474', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0594-48-4390', fax: '0594-48-5948', website: 'http://www.ji-beer.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '上げ馬', kana: 'あげうま', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '後藤酒造場', kana: 'ごとうしゅぞうじょう')
address_attrs = { prefecture_code: 24, city: '桑名市', street_address: '赤尾1019', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0594-31-3878', fax: '0594-31-8606', website: 'http://www.sake-seiun.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '青雲', kana: 'せいうん', company: c)
Brand.find_or_create_by!(name: '颯', kana: 'はやて', company: c)
Brand.find_or_create_by!(name: '久波奈', kana: 'くわな', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '丸彦酒造', kana: 'まるひこしゅぞう')
address_attrs = { prefecture_code: 24, city: '四日市市', street_address: '川島町1863-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-321-3111', fax: '059-321-3110', website: 'http://www.mienokanbai.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三重の寒梅', kana: 'みえのかんばい', company: c)
Brand.find_or_create_by!(name: '穂波', kana: 'ほなみ', company: c)
Brand.find_or_create_by!(name: '伊勢正宗', kana: 'いせまさむね', company: c)
Brand.find_or_create_by!(name: 'はま娘', kana: 'はまむすめ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '伊藤酒造', kana: 'いとうしゅぞう')
address_attrs = { prefecture_code: 24, city: '四日市市', street_address: '桜町110', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-326-2020', fax: '059-326-9800', website: 'http://www.suzukasanroku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '泗水郷 佐倉', kana: 'しすいきょう さくら', company: c)
Brand.find_or_create_by!(name: '鈿女', kana: 'うづめ', company: c)
Brand.find_or_create_by!(name: '日本華', kana: 'にほんか', company: c)
Brand.find_or_create_by!(name: '鈴鹿山麓', kana: 'すずかさんろく', company: c)
Brand.find_or_create_by!(name: '猿田彦', kana: 'さるたひこ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '石川酒造', kana: 'いしかわしゅぞう')
address_attrs = { prefecture_code: 24, city: '四日市市', street_address: '桜町129', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-326-2105', fax: '059-326-6151', website: 'https://e-sakagura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'やまいし', kana: 'やまいし', company: c)
Brand.find_or_create_by!(name: '噴井', kana: 'ふきい', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '寒紅梅酒造', kana: 'かんこうばいしゅぞう')
address_attrs = { prefecture_code: 24, city: '津市', street_address: '栗真中山町433', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-232-3005', fax: '059-232-3025', website: 'http://www.kankoubai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '寒紅梅', kana: 'かんこうばい', company: c)
Brand.find_or_create_by!(name: '藤堂高虎公', kana: 'とうどうたかとらこう', company: c)
Brand.find_or_create_by!(name: '三重大学', kana: 'みえだいがく', company: c)
Brand.find_or_create_by!(name: '名松線', kana: 'めいしょうせん', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '今村酒造', kana: 'いまむらしゅぞう')
address_attrs = { prefecture_code: 24, city: '津市', street_address: '香良洲町263', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-292-3311', fax: '059-292-3312', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'きげんよし', kana: 'きげんよし', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '油正', kana: 'あぶしょう')
address_attrs = { prefecture_code: 24, city: '津市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '初日', kana: 'はつひ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '松島酒造', kana: 'まつしましゅぞう')
address_attrs = { prefecture_code: 24, city: '津市', street_address: '安濃町南神山191', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '059-268-0869', fax: '059-268-0869', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '安濃誉', kana: 'あのうほまれ', company: c)
Brand.find_or_create_by!(name: '高虎', kana: 'たかとら', company: c)
Brand.find_or_create_by!(name: '初わらひ', kana: 'はつわらい', company: c)
Brand.find_or_create_by!(name: '晴れ娘', kana: 'はれむすめ', company: c)
Brand.find_or_create_by!(name: 'みさと龍神', kana: 'みさとりゅうじん', company: c)
Brand.find_or_create_by!(name: '秀峰', kana: 'しゅうほう', company: c)
Brand.find_or_create_by!(name: '天国', kana: 'てんごく', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '新良酒造', kana: 'にらしゅぞう')
address_attrs = { prefecture_code: 24, city: '松阪市', street_address: '大黒田町130', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0598-21-0256', fax: '0598-21-0256', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夢窓', kana: 'むそう', company: c)
Brand.find_or_create_by!(name: '一粒一滴', kana: 'いちりゅういってき', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '旭酒造', kana: 'あさひしゅぞう')
address_attrs = { prefecture_code: 24, city: '多気郡', street_address: '明和町山大淀3032', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0596-55-2628', fax: '0596-55-4100', website: 'http://www.asahisyuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神都の祈り 斎王', kana: 'しんとのいのり さいおう', company: c)
Brand.find_or_create_by!(name: '伊勢旭', kana: 'いせあさひ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '中山酒造', kana: 'なかやましゅぞう')
address_attrs = { prefecture_code: 24, city: '松阪市', street_address: '小阿坂町2532', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0598-58-2308', fax: '0598-58-0722', website: 'https://hakumaijoh.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白米城', kana: 'はくまいじょう', company: c)
Brand.find_or_create_by!(name: '琥珀城', kana: 'こはくじょう', company: c)
Brand.find_or_create_by!(name: 'あざか', kana: 'あざか', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '船木酒造', kana: 'ふなきしゅぞう')
address_attrs = { prefecture_code: 24, city: '松阪市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: 'ゑびす顔', kana: 'えびすがお', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '海野酒造', kana: 'うんのしゅぞう')
address_attrs = { prefecture_code: 24, city: '津市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '明乃春', kana: 'あけのはる', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '伊勢萬', kana: 'いせまん')
address_attrs = { prefecture_code: 24, city: '伊勢市', street_address: '宇治中之切町77番地の2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0596-23-8800', fax: '0596-23-8804', website: 'http://www.iseman.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '老緑', kana: 'おいみどり', company: c)
Brand.find_or_create_by!(name: 'おかげさま', kana: 'おかげさま', company: c)
Brand.find_or_create_by!(name: '神都の祈り 御裳濯川', kana: 'しんとのいのり みもすそがわ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '森喜酒造場', kana: 'もりきしゅぞうじょう')
address_attrs = { prefecture_code: 24, city: '伊賀市', street_address: '千歳41-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-23-3040', fax: '0595-24-5735', website: 'http://moriki.o.oo7.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '妙の華', kana: 'たえのはな', company: c)
Brand.find_or_create_by!(name: 'るみ子の酒', kana: 'るみこのさけ', company: c)
Brand.find_or_create_by!(name: '英', kana: 'はなぶさ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '福井酒造場', kana: 'ふくいしゅぞうじょう')
address_attrs = { prefecture_code: 24, city: '伊賀市', street_address: '比自岐595', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-37-0026', fax: '0595-36-2201', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福の聲', kana: 'ふくのこえ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '大田酒造', kana: 'おおたしゅぞう')
address_attrs = { prefecture_code: 24, city: '伊賀市', street_address: '上之庄1365-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-21-4709', fax: '0595-21-9686', website: 'https://www.hanzo-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初空', kana: '初空', company: c)
Brand.find_or_create_by!(name: '久寿徳', kana: 'くずとく', company: c)
Brand.find_or_create_by!(name: '花芽実', kana: 'かがみ', company: c)
Brand.find_or_create_by!(name: '久寿屋 徳兵衛', kana: 'くずや とくべえ', company: c)
Brand.find_or_create_by!(name: '東海白鷺', kana: 'とうかいしらさぎ', company: c)
Brand.find_or_create_by!(name: '半蔵', kana: 'はんぞう', company: c)
Brand.find_or_create_by!(name: '大田', kana: 'おおた', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '若戎酒造', kana: 'わかえびすしゅぞう')
address_attrs = { prefecture_code: 24, city: '伊賀市', street_address: '阿保1317', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-52-1153', fax: '0595-52-2141', website: 'https://www.wakaebis.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '真秀', kana: 'まほ', company: c)
Brand.find_or_create_by!(name: '伊勢詣', kana: 'いせもうで', company: c)
Brand.find_or_create_by!(name: 'G-collection', kana: 'Gコレクション', company: c)
Brand.find_or_create_by!(name: '義左衛門', kana: 'ぎざえもん', company: c)
Brand.find_or_create_by!(name: '若戎', kana: 'わかえびす', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '澤佐酒造', kana: 'さわさしゅぞう')
address_attrs = { prefecture_code: 24, city: '名張市', street_address: '夏見944', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-63-0430', fax: '0595-63-2026', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '参宮', kana: 'さんぐう', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '瀧自慢酒造', kana: 'たきじまんしゅぞう')
address_attrs = { prefecture_code: 24, city: '名張市', street_address: '赤目町柏原141', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-63-0488', fax: '0595-63-6126', website: 'https://www.takijiman.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '伊山郷', kana: 'いざんきょう', company: c)
Brand.find_or_create_by!(name: '名張乙女', kana: 'なばりおとめ', company: c)
Brand.find_or_create_by!(name: '伊賀山田錦', kana: 'いがやまだにしき', company: c)
Brand.find_or_create_by!(name: '瀧自慢', kana: 'たきじまん', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '福持酒造場', kana: 'ふくもちしゅぞうじょう')
address_attrs = { prefecture_code: 24, city: '名張市', street_address: '安部田3905', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-63-0323', fax: '0595-64-2999', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天下錦', kana: 'てんかにしき', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '平和酒造', kana: 'へいわしゅぞう')
address_attrs = { prefecture_code: 24, city: '伊賀市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '富士正宗', kana: 'ふじまさむね', company: c)
Brand.find_or_create_by!(name: 'みつくりの里', kana: 'みつくりのさと', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '森本仙右衛門商店', kana: 'もりもとせんうえもんしょうてん')
address_attrs = { prefecture_code: 24, city: '伊賀市', street_address: '上野福居町3342', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-23-5500', fax: '0595-23-5501', website: 'http://www.kuromatsu-okina.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '伊賀の寒梅', kana: 'いがのかんばい', company: c)
Brand.find_or_create_by!(name: '黒松翁', kana: 'くろまつおきな', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '中井酒造場', kana: 'なかいしゅぞうじょう')
address_attrs = { prefecture_code: 24, city: '伊賀市', street_address: '上野西大手町3721', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-21-0010', fax: '0595-24-5473', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三重錦', kana: 'みえにしき', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '橋本酒造場', kana: 'はしもとしゅぞうじょう')
address_attrs = { prefecture_code: 24, city: '伊賀市', street_address: '御代1116', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-45-3014', fax: '0595-51-6395', website: 'http://www.ict.ne.jp/~h-bashou', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '俳聖芭蕉', kana: 'はいせいばしょう', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '清水酒造場', kana: 'しみずしゅぞうじょう')
address_attrs = { prefecture_code: 24, city: '松阪市', street_address: '庄町388', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0598-29-2055', fax: '0598-29-8374', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勲泉', kana: 'くんせん', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '河武醸造', kana: 'かわぶじょうぞう')
address_attrs = { prefecture_code: 24, city: '多気郡', street_address: '多気町五桂234', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0598-37-2037', fax: '0598-39-3077', website: 'http://www.hokosugi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鉾杉', kana: 'ほこすぎ', company: c)
Brand.find_or_create_by!(name: '弓形穂', kana: 'ゆみなりほ', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '福和蔵', kana: 'ふくわぐら')
address_attrs = { prefecture_code: 24, city: '多気郡', street_address: '多気町　ヴィソン672番1食祭4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://www.fukuwagura.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福和蔵', kana: 'ふくわぐら', company: c)


c = Company.in_prefecture(24).find_or_create_by!(name: '元坂酒造', kana: 'げんさかしゅぞう')
address_attrs = { prefecture_code: 24, city: '多気郡', street_address: '大台町柳原346-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0598-85-0001', fax: '0598-85-0993', website: 'https://www.gensaka.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桐花', kana: 'とうか', company: c)
Brand.find_or_create_by!(name: '風の宮', kana: 'かぜのみや', company: c)
Brand.find_or_create_by!(name: '酒屋八兵衛', kana: 'さかやはちべえ', company: c)

c = Company.in_prefecture(24).find_or_create_by!(name: '木屋正酒造', kana: 'きやしょうしゅぞう')
address_attrs = { prefecture_code: 24, city: '名張市', street_address: '本町314-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0595-63-0061', website: 'https://kiyashow.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '而今', kana: 'じこん', company: c)
Brand.find_or_create_by!(name: '高砂', kana: 'たかさご', company: c)
