c = Company.create_or_find_by!(name: '中本酒造店', kana: 'なかもとしゅぞうてん')
address_attrs = { prefecture_code: 29, city: '生駒市', street_address: '上町1067', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0743-78-3805', fax: '0743-79-0360', website: 'https://yamaturu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '竹風万葉', kana: 'ちくふうまんよう', company: c)
Brand.find_or_create_by!(name: '山鶴', kana: 'やまつる', company: c)
Brand.find_or_create_by!(name: '蔵人の詩', kana: 'くらびとのうた', company: c)
Brand.find_or_create_by!(name: 'さぶろう', kana: 'さぶろう', company: c)


c = Company.create_or_find_by!(name: '上田酒造', kana: 'うえだしゅぞう')
address_attrs = { prefecture_code: 29, city: '生駒市', street_address: '壱分町866-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0743-77-8122', fax: '0743-76-0701', website: 'https://ueda-syuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '嬉長', kana: 'きちょう', company: c)
Brand.find_or_create_by!(name: '生駒宝山', kana: 'いこまほうざん', company: c)
Brand.find_or_create_by!(name: '生駒山', kana: 'いこまやま', company: c)
Brand.find_or_create_by!(name: '生長', kana: 'せいちょう', company: c)
Brand.find_or_create_by!(name: '萬葉飛鳥', kana: 'まんようあすか', company: c)


c = Company.create_or_find_by!(name: '菊司醸造', kana: 'きくつかさじょうぞう')
address_attrs = { prefecture_code: 29, city: '生駒市', street_address: '小瀬町555', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0743-77-8005', fax: '0743-77-8420', website: 'https://kikutsukasa.pro', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'くらがり越え', kana: 'くらがりごえ', company: c)
Brand.find_or_create_by!(name: '酒屋藤兵衛', kana: 'さかやとうべえ', company: c)
Brand.find_or_create_by!(name: '往馬', kana: 'いこま', company: c)
Brand.find_or_create_by!(name: '菊司', kana: 'きくつかさ', company: c)


c = Company.create_or_find_by!(name: '錦生醸造', kana: 'きんせいじょうぞう')
address_attrs = { prefecture_code: 29, city: '奈良市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '春の坂道', kana: 'はるのさかみち', company: c)
Brand.find_or_create_by!(name: '柳生錦', kana: 'やぎゅうにしき', company: c)


c = Company.create_or_find_by!(name: '奈良春日山酒造', kana: 'ならかすがやましゅぞう')
address_attrs = { prefecture_code: 29, city: '奈良市', street_address: '高畑町915', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0742-26-2300', fax: '0742-27-1841', website: 'https://narakasugayama-shuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大和の清酒', kana: 'やまとのせいしゅ', company: c)
Brand.find_or_create_by!(name: '升平', kana: 'しょうへい', company: c)
Brand.find_or_create_by!(name: '横田屋', kana: 'よこたや', company: c)


c = Company.create_or_find_by!(name: '今西清兵衛商店', kana: 'いまにしせいべえしょうてん')
address_attrs = { prefecture_code: 29, city: '奈良市', street_address: '福智院町24-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0742-23-2255', fax: '0742-27-3585', website: 'https://www.harushika.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白滴', kana: 'はくてき', company: c)
Brand.find_or_create_by!(name: '鹿鳴', kana: 'ろくめい', company: c)
Brand.find_or_create_by!(name: '春鹿', kana: 'はるしか', company: c)
Brand.find_or_create_by!(name: '紫蘇酒', kana: 'しそざけ', company: c)
Brand.find_or_create_by!(name: '倭姫', kana: 'やまとひめ', company: c)
Brand.find_or_create_by!(name: '而妙酒', kana: 'じみょうしゅ', company: c)


c = Company.create_or_find_by!(name: '奈良豊澤酒造', kana: 'ならとよさわしゅぞう')
address_attrs = { prefecture_code: 29, city: '奈良市', street_address: '今市町405', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0742-61-7636', fax: '0742-61-7658', website: 'http://nara-toyosawa.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '無上盃', kana: 'むじょうはい', company: c)
Brand.find_or_create_by!(name: '儀助', kana: 'ぎすけ', company: c)
Brand.find_or_create_by!(name: '豊祝', kana: 'ほうしゅく', company: c)
Brand.find_or_create_by!(name: '貴仙寿吉兆', kana: 'きせんじゅきっちょう', company: c)


c = Company.create_or_find_by!(name: '増田酒造', kana: 'ますだしゅぞう')
address_attrs = { prefecture_code: 29, city: '天理市', street_address: '岩屋町42', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0743-65-0002', fax: '0743-65-3231', website: 'http://masuda-shuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '都姫', kana: 'みやこひめ', company: c)
Brand.find_or_create_by!(name: '神韻', kana: 'しんいん', company: c)


c = Company.create_or_find_by!(name: '稲田酒造', kana: 'いなだしゅぞう')
address_attrs = { prefecture_code: 29, city: '天理市', street_address: '三島町379', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0743-62-0040', fax: '0743-63-5563', website: 'https://inaten.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '稲乃花', kana: 'いねのはな', company: c)
Brand.find_or_create_by!(name: '黒松稲天', kana: 'くろまついなてん', company: c)
Brand.find_or_create_by!(name: '氷室のさと', kana: 'ひむろのさと', company: c)


c = Company.create_or_find_by!(name: '宮崎酒造', kana: 'みやざきしゅぞう')
address_attrs = { prefecture_code: 29, city: '天理市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '白堤', kana: 'はくてい', company: c)


c = Company.create_or_find_by!(name: '多山酒造', kana: 'たやましゅぞう')
address_attrs = { prefecture_code: 29, city: '宇陀市室生区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '長平', kana: 'ちょうへい', company: c)
Brand.find_or_create_by!(name: '室生浪漫', kana: 'むろうろまん', company: c)


c = Company.create_or_find_by!(name: '倉本酒造', kana: 'くらもとしゅぞう')
address_attrs = { prefecture_code: 29, city: '奈良市', street_address: '都祁吐山町2501', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0743-82-0008', fax: '0743-82-1748', website: 'https://kuramoto-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'KURAMOTO', kana: 'くらもと', company: c)
Brand.find_or_create_by!(name: '金嶽', kana: 'きんがく', company: c)
Brand.find_or_create_by!(name: 'こもりくの里', kana: 'こもりくのさと', company: c)


c = Company.create_or_find_by!(name: '西田酒造', kana: 'にしだしゅぞう')
address_attrs = { prefecture_code: 29, city: '奈良市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '両白', kana: 'もろはく', company: c)


c = Company.create_or_find_by!(name: '今西酒造', kana: 'いまにししゅぞう')
address_attrs = { prefecture_code: 29, city: '桜井市', street_address: '三輪510', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0744-42-6022', fax: '0744-42-3612', website: 'https://imanishisyuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鬼ごのみ', kana: 'おにごのみ', company: c)
Brand.find_or_create_by!(name: '今西', kana: 'いまにし', company: c)
Brand.find_or_create_by!(name: '三諸杉', kana: 'みむろすぎ', company: c)
Brand.find_or_create_by!(name: '阿吽', kana: 'あうん', company: c)


c = Company.create_or_find_by!(name: '西内酒造場', kana: 'にしうちしゅぞうじょう')
address_attrs = { prefecture_code: 29, city: '桜井市', street_address: '下3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0744-42-2284', fax: '0744-45-1015', website: 'http://www.nara-tanzan.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大名庄屋酒', kana: 'だいみょうしょうやざけ', company: c)
Brand.find_or_create_by!(name: '大織冠', kana: 'だいしょくかん', company: c)
Brand.find_or_create_by!(name: '談山', kana: 'だんざん', company: c)


c = Company.create_or_find_by!(name: '岡野酒造', kana: 'おかのしゅぞう')
address_attrs = { prefecture_code: 29, city: '宇陀郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '日の出', kana: 'ひので', company: c)


c = Company.create_or_find_by!(name: '久保本家酒造', kana: 'くぼほんけしゅぞう')
address_attrs = { prefecture_code: 29, city: '宇陀市', street_address: '大宇陀出新1834', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-83-0036', fax: '0745-83-3353', website: 'http://kubohonke.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初霞', kana: 'はつがすみ', company: c)
Brand.find_or_create_by!(name: '睡龍', kana: 'すいりゅう', company: c)


c = Company.create_or_find_by!(name: '芳村酒造', kana: 'よしむらしゅぞう')
address_attrs = { prefecture_code: 29, city: '宇陀市', street_address: '大宇陀万六1797', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-83-2231', fax: '0745-83-0840', website: 'http://www.begin.or.jp/~inadoya', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '阿騎野物語', kana: 'あきのものがたり', company: c)
Brand.find_or_create_by!(name: '千代の松', kana: 'ちよのまつ', company: c)


c = Company.create_or_find_by!(name: '喜多酒造', kana: 'きたしゅぞう')
address_attrs = { prefecture_code: 29, city: '橿原市', street_address: '御坊町8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0744-22-2419', fax: '0744-25-3588', website: 'https://miyokiku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '利兵衞', kana: 'りへい', company: c)
Brand.find_or_create_by!(name: '白檮', kana: 'はくじゅ', company: c)
Brand.find_or_create_by!(name: '御代菊', kana: 'みよきく', company: c)


c = Company.create_or_find_by!(name: '岸の竹酒造', kana: 'きしのたけしゅぞう')
address_attrs = { prefecture_code: 29, city: '橿原市', street_address: '八木町3-1-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0744-22-2113', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '飛鳥路', kana: 'あずかじ', company: c)
Brand.find_or_create_by!(name: '岸の竹', kana: 'きしのたけ', company: c)


c = Company.create_or_find_by!(name: '脇本酒造', kana: 'わきもとしゅぞう')
address_attrs = { prefecture_code: 29, city: '高市郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '右近橘', kana: 'うこんたちばな', company: c)


c = Company.create_or_find_by!(name: '河合酒造', kana: 'かわいしゅぞう')
address_attrs = { prefecture_code: 29, city: '橿原市', street_address: '今井町1-7-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0744-22-2154', fax: '0744-24-1061', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '出世男', kana: 'しゅっせおとこ', company: c)
Brand.find_or_create_by!(name: 'うねび', kana: 'うねび', company: c)
Brand.find_or_create_by!(name: '香具山', kana: 'かぐやま', company: c)
Brand.find_or_create_by!(name: '上品寺屋', kana: 'じょうぼんじや', company: c)
Brand.find_or_create_by!(name: '宗久', kana: 'そうきゅう', company: c)
Brand.find_or_create_by!(name: '萬葉飛鳥カップ', kana: 'まんようあすか', company: c)
Brand.find_or_create_by!(name: '今井の里', kana: 'いまいのさと', company: c)


c = Company.create_or_find_by!(name: '金剛力酒造', kana: 'こんごうりきしゅぞう')
address_attrs = { prefecture_code: 29, city: '高市郡', street_address: '高取町上土佐28', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0744-52-2073', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金剛力', kana: 'こんごうりき', company: c)


c = Company.create_or_find_by!(name: '長龍酒造', kana: 'ちょうりょうしゅぞう')
address_attrs = { prefecture_code: 29, city: '北葛城郡', street_address: '広陵町南4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-56-2026', fax: '0745-56-3080', website: 'http://www.choryo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '爽爽', kana: 'さわさわ', company: c)
Brand.find_or_create_by!(name: '吉野杉の樽酒', kana: 'よしのすぎのたるさけ', company: c)
Brand.find_or_create_by!(name: '長龍', kana: 'ちょうりょう', company: c)
Brand.find_or_create_by!(name: '稲の国の稲の酒', kana: 'いねのくにのいねのさけ', company: c)
Brand.find_or_create_by!(name: '蒼穂', kana: 'そうほ', company: c)
Brand.find_or_create_by!(name: 'ふた穂', kana: 'ふたほ', company: c)
Brand.find_or_create_by!(name: '四季咲', kana: 'しきざき', company: c)


c = Company.create_or_find_by!(name: '太田酒造', kana: 'おおたしゅぞう')
address_attrs = { prefecture_code: 29, city: '生駒郡', street_address: '斑鳩町龍田3-3-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-75-2015', fax: '0745-74-0961', website: 'http://otashouten.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初時雨', kana: 'はつしぐれ', company: c)


c = Company.create_or_find_by!(name: '五條酒造', kana: 'ごじょうしゅぞう')
address_attrs = { prefecture_code: 29, city: '五條市', street_address: '今井1-1-31', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0747-22-2079', fax: '0747-25-3646', website: 'http://www.sake-goshin.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '五神', kana: 'ごしん', company: c)


c = Company.create_or_find_by!(name: '山本本家', kana: 'やまもとほんけ')
address_attrs = { prefecture_code: 29, city: '五條市', street_address: '五條1-2-19', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0747-22-1331', fax: '0747-22-3366', website: 'http://www.yamamoto.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神代杉', kana: 'じんだいすぎ', company: c)
Brand.find_or_create_by!(name: '松の友', kana: 'まつのとも', company: c)


c = Company.create_or_find_by!(name: '藤村酒造', kana: 'ふじむらしゅぞう')
address_attrs = { prefecture_code: 29, city: '吉野郡', street_address: '下市町下市154', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0747-52-2538', fax: '0747-52-8739', website: 'http://yoshino-umazake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '万代老松', kana: 'まんだいおいまつ', company: c)


c = Company.create_or_find_by!(name: '岡本本家', kana: 'おかもとほんけ')
address_attrs = { prefecture_code: 29, city: '吉野郡', street_address: '大淀町下渕230', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0747-52-2114', fax: '0747-52-7659', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山桂', kana: 'やまかつら', company: c)


c = Company.create_or_find_by!(name: '澤田酒造', kana: 'さわだしゅぞう')
address_attrs = { prefecture_code: 29, city: '香芝市', street_address: '五位堂6-167', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-78-1221', fax: '0745-76-0005', website: 'http://www.kankiko.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '歓喜光', kana: 'かんきこう', company: c)


c = Company.create_or_find_by!(name: '大倉本家', kana: 'おおくらほんけ')
address_attrs = { prefecture_code: 29, city: '香芝市', street_address: '鎌田692', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-52-2018', fax: '0745-78-0019', website: 'http://www.kinko-ookura.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金鼓', kana: 'きんこ', company: c)
Brand.find_or_create_by!(name: '彩葉', kana: 'いろは', company: c)
Brand.find_or_create_by!(name: '大倉', kana: 'おおくら', company: c)
Brand.find_or_create_by!(name: '美巌', kana: 'びげん', company: c)
Brand.find_or_create_by!(name: '天平の甍', kana: 'てんぴょうのいらか', company: c)


c = Company.create_or_find_by!(name: '井上酒造', kana: 'いのうえしゅぞう')
address_attrs = { prefecture_code: 29, city: '香芝市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '月鶴', kana: 'つきづる', company: c)


c = Company.create_or_find_by!(name: '中川酒造', kana: 'なかがわしゅぞう')
address_attrs = { prefecture_code: 29, city: '葛城市', street_address: '新在家152', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-48-2016', fax: '0745-48-8216', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '透泉', kana: 'とうせん', company: c)
Brand.find_or_create_by!(name: '当麻蹶速', kana: 'たいまのけはや', company: c)


c = Company.create_or_find_by!(name: '中谷酒造', kana: 'なかたにしゅぞう')
address_attrs = { prefecture_code: 29, city: '大和郡山市', street_address: '番条町561', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0743-56-2296', fax: '0743-56-2464', website: 'http://www.sake-asaka.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '奈良吟', kana: 'ならぎん', company: c)
Brand.find_or_create_by!(name: '幻鷹', kana: 'げんよう', company: c)
Brand.find_or_create_by!(name: '朝香', kana: 'あさか', company: c)
Brand.find_or_create_by!(name: '三日踊', kana: 'みっかおどり', company: c)
Brand.find_or_create_by!(name: '萬穣', kana: 'ばんじょう', company: c)


c = Company.create_or_find_by!(name: '梅乃宿酒造', kana: 'うめのやどしゅぞう')
address_attrs = { prefecture_code: 29, city: '葛城市', street_address: '東室27', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-69-2121', fax: '0745-69-2122', website: 'https://www.umenoyado.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山香', kana: 'さんか', company: c)
Brand.find_or_create_by!(name: 'Unfeigned SAKE', kana: 'アンフェインド サケ', company: c)
Brand.find_or_create_by!(name: '梅乃宿', kana: 'うめのやど', company: c)
Brand.find_or_create_by!(name: '風香', kana: 'ふうか', company: c)


c = Company.create_or_find_by!(name: '岸本酒造', kana: 'きしもとしゅぞう')
address_attrs = { prefecture_code: 29, city: '御所市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '松の勢', kana: 'まつのせい', company: c)


c = Company.create_or_find_by!(name: '油長酒造', kana: 'ゆうちょうしゅぞう')
address_attrs = { prefecture_code: 29, city: '御所市', street_address: '中本町1160', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-62-2047', fax: '0745-62-3400', website: 'https://www.yucho-sake.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '風の森', kana: 'かぜのもり', company: c)
Brand.find_or_create_by!(name: '鷹長', kana: 'たかちょう', company: c)


c = Company.create_or_find_by!(name: '千代酒造', kana: 'ちよしゅぞう')
address_attrs = { prefecture_code: 29, city: '御所市', street_address: '櫛羅621', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-62-2301', fax: '0745-62-0127', website: 'https://chiyoshuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千代', kana: 'ちよ', company: c)
Brand.find_or_create_by!(name: '櫛羅', kana: 'くじら', company: c)
Brand.find_or_create_by!(name: '篠峯', kana: 'しのみね', company: c)


c = Company.create_or_find_by!(name: '葛城酒造', kana: 'かつらぎしゅぞう')
address_attrs = { prefecture_code: 29, city: '御所市', street_address: '名柄347-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0745-66-1141', fax: '0745-66-1548', website: 'http://www.hyakurakumon-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '百楽門', kana: 'ひゃくらくもん', company: c)


c = Company.create_or_find_by!(name: '北岡本店', kana: 'きたおかほんてん')
address_attrs = { prefecture_code: 29, city: '吉野郡', street_address: '吉野町上市61', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0746-32-2777', fax: '0746-32-8744', website: 'https://www.kitaoka-honten.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉野千本桜', kana: 'よしのせんぼんざくら', company: c)
Brand.find_or_create_by!(name: '八咫烏', kana: 'やたがらす', company: c)


c = Company.create_or_find_by!(name: '北村酒造', kana: 'きたむらしゅぞう')
address_attrs = { prefecture_code: 29, city: '吉野郡', street_address: '吉野町上市172-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0746-32-2020', fax: '0746-32-2570', website: 'http://www.kitamurasyuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '猩々', kana: 'しょうじょう', company: c)
Brand.find_or_create_by!(name: '鬼', kana: 'おに', company: c)


c = Company.create_or_find_by!(name: '美吉野醸造', kana: 'みよしのじょうぞう')
address_attrs = { prefecture_code: 29, city: '吉野郡', street_address: '吉野町六田1238-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0746-32-3639', fax: '0746-32-8768', website: 'https://www.hanatomoe.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天彩', kana: 'あまいろ', company: c)
Brand.find_or_create_by!(name: '谷瀬', kana: 'たにぜ', company: c)
Brand.find_or_create_by!(name: '花巴', kana: 'はなともえ', company: c)
Brand.find_or_create_by!(name: '花つどい', kana: 'はなつどい', company: c)
Brand.find_or_create_by!(name: '花巴正宗', kana: 'はなともえまさむね', company: c)
Brand.find_or_create_by!(name: '南遷', kana: 'なんせん', company: c)
Brand.find_or_create_by!(name: '百年杉', kana: 'ひゃくねんすぎ', company: c)
Brand.find_or_create_by!(name: '蔵王桜', kana: 'ざおうざくら', company: c)
