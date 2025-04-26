c = Company.create_or_find_by!(name: '伊勢屋商店', kana: 'いせやしょうてん')
address_attrs = { prefecture_code: 23, city: '豊橋市', street_address: '花田町字斉藤49', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0532-31-1175', fax: '0532-31-1176', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉田不老門', kana: 'よしだふろうもん', company: c)
Brand.find_or_create_by!(name: '公楽', kana: 'こうらく', company: c)


c = Company.create_or_find_by!(name: '日野屋商店', kana: 'ひのやしょうてん')
address_attrs = { prefecture_code: 23, city: '新城市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '朝日嶽', kana: 'あさひだけ', company: c)


c = Company.create_or_find_by!(name: '関谷醸造', kana: 'せきやじょうぞう')
address_attrs = { prefecture_code: 23, city: '北設楽郡', street_address: '設楽町田口字町浦22', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0536-62-0505', fax: '0536-62-1556', website: 'https://www.houraisen.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'YAWAKUCHI', kana: 'やわくち', company: c)
Brand.find_or_create_by!(name: '遠山', kana: 'とおやま', company: c)
Brand.find_or_create_by!(name: '蓬莱泉', kana: 'ほうらいせん', company: c)
Brand.find_or_create_by!(name: '明眸', kana: 'めいぼう', company: c)
Brand.find_or_create_by!(name: '一念不動', kana: 'いちねんふどう', company: c)


c = Company.create_or_find_by!(name: '福井酒造', kana: 'ふくいしゅぞう')
address_attrs = { prefecture_code: 23, city: '豊橋市', street_address: '中浜町214', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0532-45-5227', fax: '0532-45-5229', website: 'https://www.fukui-syuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '四海王', kana: 'しかいおう', company: c)


c = Company.create_or_find_by!(name: '白井醸造', kana: 'しらいじょうぞう')
address_attrs = { prefecture_code: 23, city: '豊川市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '菊鶴', kana: 'きくつる', company: c)
Brand.find_or_create_by!(name: '姫街道', kana: 'ひめかいどう', company: c)


c = Company.create_or_find_by!(name: '丸石醸造', kana: 'まるいしじょうぞう')
address_attrs = { prefecture_code: 23, city: '岡崎市', street_address: '中町6-2-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0564-23-3333', fax: '0564-22-0539', website: 'http://www.014.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '長誉', kana: 'ちょうよ', company: c)
Brand.find_or_create_by!(name: '徳川家康', kana: 'とくがわいえやす', company: c)
Brand.find_or_create_by!(name: '三太夫', kana: 'さんだゆう', company: c)
Brand.find_or_create_by!(name: '徳川の華', kana: 'とくがわのはな', company: c)
Brand.find_or_create_by!(name: '寿司', kana: 'すし', company: c)
Brand.find_or_create_by!(name: '萬歳', kana: 'ばんざい', company: c)
Brand.find_or_create_by!(name: '丸石謹製', kana: 'まるいしきんせい', company: c)
Brand.find_or_create_by!(name: '二兎', kana: 'にと', company: c)
Brand.find_or_create_by!(name: '〇龜', kana: 'まるかめ', company: c)
Brand.find_or_create_by!(name: '二鯱', kana: 'にこ', company: c)
Brand.find_or_create_by!(name: '桜泉', kana: 'おおいずみ', company: c)
Brand.find_or_create_by!(name: 'THEMA', kana: 'テーマ', company: c)
Brand.find_or_create_by!(name: '葵の風', kana: 'あおいのかぜ', company: c)
Brand.find_or_create_by!(name: '三河武士', kana: 'みかわぶし', company: c)


c = Company.create_or_find_by!(name: '山崎合資', kana: 'やまざきごうし')
address_attrs = { prefecture_code: 23, city: '西尾市', street_address: '西幡豆町柿田57', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0563-62-2005', fax: '0563-62-4374', website: 'https://www.sonnoh.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '尊皇', kana: 'そんのう', company: c)
Brand.find_or_create_by!(name: '焚火', kana: 'たきび', company: c)
Brand.find_or_create_by!(name: '山崎醸', kana: 'やまざきかもし', company: c)
Brand.find_or_create_by!(name: '三河鳥羽の火祭', kana: 'みかわとばのひまつり', company: c)
Brand.find_or_create_by!(name: '年魚市', kana: 'あゆち', company: c)
Brand.find_or_create_by!(name: '長久手', kana: 'ながくて', company: c)
Brand.find_or_create_by!(name: '幻々', kana: 'げんげん', company: c)
Brand.find_or_create_by!(name: '奥', kana: 'おく', company: c)


c = Company.create_or_find_by!(name: '中垣酒造', kana: 'なかがきしゅぞう')
address_attrs = { prefecture_code: 23, city: '豊田市', street_address: '有間町下平10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0565-68-2522', fax: '0565-68-2577', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '賜冠', kana: 'しかん', company: c)


c = Company.create_or_find_by!(name: '柴田酒造場', kana: 'しばたしゅぞうじょう')
address_attrs = { prefecture_code: 23, city: '岡崎市', street_address: '保久町神水39番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0564-84-2007', fax: '0564-84-2785', website: 'https://www.shibatabrewery.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '众', kana: 'ぎん', company: c)
Brand.find_or_create_by!(name: '輝きたい星のように。', kana: 'かがやきたいほしのように。', company: c)
Brand.find_or_create_by!(name: '孝の司', kana: 'こうのつかさ', company: c)


c = Company.create_or_find_by!(name: '相生ユニビオ', kana: 'あいおいゆにびお')
address_attrs = { prefecture_code: 23, city: '西尾市', street_address: '下町丸山5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0563-56-2101', fax: '0563-57-0225', website: 'http://www.unibio.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あいおい', kana: 'あいおい', company: c)
Brand.find_or_create_by!(name: '相生乃梅', kana: 'あいおいのうめ', company: c)


c = Company.create_or_find_by!(name: '神杉酒造', kana: 'かみすぎしゅぞう')
address_attrs = { prefecture_code: 23, city: '安城市', street_address: '明治本町20-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0566-75-2121', fax: '0566-76-0050', website: 'http://www.kamisugi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神杉', kana: 'かみすぎ', company: c)
Brand.find_or_create_by!(name: '紅美酒 Cremisi', kana: 'くれみし', company: c)
Brand.find_or_create_by!(name: '安城織姫伝説', kana: 'あんじょうおりひめでんせつ', company: c)


c = Company.create_or_find_by!(name: '永井酒造場', kana: 'ながいしゅぞうじょう')
address_attrs = { prefecture_code: 23, city: '碧南市', street_address: '志貴町2-90', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0566-41-0053', fax: '0566-41-0093', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '昇勢', kana: 'しょうせい', company: c)


c = Company.create_or_find_by!(name: '清洲桜醸造', kana: 'きよすざくらじょうぞう')
address_attrs = { prefecture_code: 23, city: '清須市', street_address: '清洲1692番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '052-409-2121', fax: '052-409-6678', website: 'http://www.onikoroshi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鬼ころし', kana: 'おにころし', company: c)
Brand.find_or_create_by!(name: '楽園', kana: 'らくえん', company: c)


c = Company.create_or_find_by!(name: '八束穂酒造', kana: 'やつかほしゅぞう')
address_attrs = { prefecture_code: 23, city: '名古屋市中川区', street_address: '牛立町5-9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '052-361-1803', fax: '052-361-1806', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八束穂', kana: 'やつかほ', company: c)


c = Company.create_or_find_by!(name: '常盤醸造', kana: 'ときわじょうぞう')
address_attrs = { prefecture_code: 23, city: '名古屋市中川区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '常盤', kana: 'ときわ', company: c)


c = Company.create_or_find_by!(name: '山盛酒造', kana: 'やまもりしゅぞう')
address_attrs = { prefecture_code: 23, city: '名古屋市緑区', street_address: '大高町字高見74', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '052-621-2003', fax: '052-621-2054', website: 'http://takanoyume.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '奈留美', kana: 'なるみ', company: c)
Brand.find_or_create_by!(name: '鷹の夢', kana: 'たかのゆめ', company: c)
Brand.find_or_create_by!(name: '酔笑人', kana: 'えようど', company: c)
Brand.find_or_create_by!(name: '浮かれ猩々', kana: 'うかれしょうじょう', company: c)
Brand.find_or_create_by!(name: '古戦場 桶狭間', kana: 'こせんじょう おけはざま', company: c)


c = Company.create_or_find_by!(name: '神の井酒造', kana: 'かみのいしゅぞう')
address_attrs = { prefecture_code: 23, city: '名古屋市緑区', street_address: '大高町字高見25', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '052-621-2008', fax: '052-621-0210', website: 'http://kaminoi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神の井', kana: 'かみのい', company: c)
Brand.find_or_create_by!(name: '寒九の酒', kana: 'かんくのさけ', company: c)


c = Company.create_or_find_by!(name: '萬乗醸造', kana: 'ばんじょうじょうぞう')
address_attrs = { prefecture_code: 23, city: '名古屋市緑区', street_address: '大高町西門田41', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '052-621-2185', fax: '052-621-2186', website: 'https://kuheiji.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酒望子', kana: 'さかぼうし', company: c)
Brand.find_or_create_by!(name: '醸し人九平次', kana: 'かもしびとくへいじ', company: c)


c = Company.create_or_find_by!(name: '双葉酒造', kana: 'ふたばしゅぞう')
address_attrs = { prefecture_code: 23, city: '北区', street_address: '楠味鋺4-401', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '052-901-3156', fax: '052-901-3157', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '曲水宴', kana: 'きょくすいえん', company: c)


c = Company.create_or_find_by!(name: '金虎酒造', kana: 'きんとらしゅぞう')
address_attrs = { prefecture_code: 23, city: '名古屋市北区', street_address: '山田3丁目11-16', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '052-981-3960', fax: '052-981-3959', website: 'https://kintora.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '名古屋城本丸御殿', kana: 'なごやじょうほんまるごてん', company: c)
Brand.find_or_create_by!(name: '金虎', kana: 'きんとら', company: c)
Brand.find_or_create_by!(name: '虎変', kana: 'こへん', company: c)


c = Company.create_or_find_by!(name: '東春酒造', kana: 'とうしゅんしゅぞう')
address_attrs = { prefecture_code: 23, city: '名古屋市守山区', street_address: '瀬古東3丁目1605', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '052-793-3743', fax: '052-792-7087', website: 'http://www.azumaryu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東龍', kana: 'あずまりゅう', company: c)


c = Company.create_or_find_by!(name: '浦野', kana: 'うらの')
address_attrs = { prefecture_code: 23, city: '豊田市', street_address: '四郷町下古屋48', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0565-45-0020', fax: '0565-45-0098', website: 'http://www.kikuishi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊石', kana: 'きくいし', company: c)


c = Company.create_or_find_by!(name: '野村酒造', kana: 'のむらしゅぞう')
address_attrs = { prefecture_code: 23, city: '知多郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '幸娘', kana: 'さちむすめ', company: c)


c = Company.create_or_find_by!(name: '原田酒造', kana: 'はらだしゅぞう')
address_attrs = { prefecture_code: 23, city: '知多郡', street_address: '東浦町生路坂下29', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0562-83-5171', fax: '0562-83-5172', website: 'http://www.ikujii.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '於大の舞', kana: 'おだいのまい', company: c)
Brand.find_or_create_by!(name: '生道井', kana: 'いくじい', company: c)
Brand.find_or_create_by!(name: '平洲さん', kana: 'へいしゅうさん', company: c)
Brand.find_or_create_by!(name: '衣が浦若水', kana: 'ころもがうらわかみず', company: c)


c = Company.create_or_find_by!(name: '丸一酒造', kana: 'まるいちしゅぞう')
address_attrs = { prefecture_code: 23, city: '知多郡', street_address: '阿久比町植大字西廻間11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0569-48-0003', fax: '0569-48-5010', website: 'http://www.sake01.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '冠勲', kana: 'かんくん', company: c)
Brand.find_or_create_by!(name: 'ほしいずみ', kana: 'ほしいずみ', company: c)


c = Company.create_or_find_by!(name: '内田酒造', kana: 'うちだしゅぞう')
address_attrs = { prefecture_code: 23, city: '知多郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '富好', kana: 'とみよし', company: c)


c = Company.create_or_find_by!(name: '豊田酒造', kana: 'とよたしゅぞう')
address_attrs = { prefecture_code: 23, city: '豊田市', street_address: '喜多町5-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0565-32-0110', fax: '0565-32-0101', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊田正宗', kana: 'とよたまさむね', company: c)


c = Company.create_or_find_by!(name: '伊東', kana: 'いとう')
address_attrs = { prefecture_code: 23, city: '半田市', street_address: '亀崎町9-111', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0569-29-1125', fax: '0569-29-3292', website: 'https://shikishima-ito.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '敷嶋', kana: 'しきしま', company: c)


c = Company.create_or_find_by!(name: '盛田金しゃち酒造', kana: 'もりたきんしゃちしゅぞう')
address_attrs = { prefecture_code: 23, city: '半田市', street_address: '亀崎町9-112', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0569-28-0250', fax: '0569-29-2636', website: 'https://www.kinshachi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初夢桜', kana: 'はつゆめざくら', company: c)
Brand.find_or_create_by!(name: '金鯱', kana: 'きんしゃち', company: c)


c = Company.create_or_find_by!(name: '中埜酒造', kana: 'なかのしゅぞう')
address_attrs = { prefecture_code: 23, city: '半田市', street_address: '東本町2-24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0569-23-1231', fax: '0569-23-1124', website: 'https://www.nakanoshuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '我逢人', kana: 'がほうじん', company: c)
Brand.find_or_create_by!(name: '國盛', kana: 'くにざかり', company: c)
Brand.find_or_create_by!(name: '半田郷', kana: 'はんだごう', company: c)


c = Company.create_or_find_by!(name: '盛田', kana: 'もりた')
address_attrs = { prefecture_code: 23, city: '常滑市', street_address: '小鈴谷字亀井戸21-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0569-37-0511', fax: '0569-37-0532', website: 'http://moritakk.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '尾張男山', kana: 'おわりおとこやま', company: c)
Brand.find_or_create_by!(name: 'ねのひ', kana: 'ねのひ', company: c)
Brand.find_or_create_by!(name: 'なごみ桜', kana: 'なごみざくら', company: c)
Brand.find_or_create_by!(name: '盛田', kana: 'もりた', company: c)


c = Company.create_or_find_by!(name: '澤田酒造', kana: 'さわだしゅぞう')
address_attrs = { prefecture_code: 23, city: '常滑市', street_address: '古場町4-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0569-35-4003', fax: '0569-35-6953', website: 'http://www.hakurou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白老', kana: 'はくろう', company: c)
Brand.find_or_create_by!(name: '燗猿', kana: 'かんざる', company: c)


c = Company.create_or_find_by!(name: '勲碧酒造', kana: 'くんぺきしゅぞう')
address_attrs = { prefecture_code: 23, city: '江南市', street_address: '小折本町柳橋88', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0587-56-2138', fax: '0587-56-2139', website: 'http://www.kunpeki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勲碧', kana: 'くんぺき', company: c)


c = Company.create_or_find_by!(name: '丸井合名', kana: 'まるいごうめい')
address_attrs = { prefecture_code: 23, city: '江南市', street_address: '布袋町東202', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0587-56-3018', website: 'http://ameblo.jp/maruisaketen', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '楽の世', kana: 'らくのよ', company: c)


c = Company.create_or_find_by!(name: '山星酒造', kana: 'やまぼししゅぞう')
address_attrs = { prefecture_code: 23, city: '江南市', street_address: '布袋町西95', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0587-54-4433', fax: '0587-54-4434', website: 'http://www.hoshizakari.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '布袋野のほていさま', kana: 'ほてののほていさま', company: c)
Brand.find_or_create_by!(name: '小牧山', kana: 'こまきやま', company: c)
Brand.find_or_create_by!(name: '星盛', kana: 'ほしざかり', company: c)


c = Company.create_or_find_by!(name: '小弓鶴酒造', kana: 'こゆみつるしゅぞう')
address_attrs = { prefecture_code: 23, city: '犬山市', street_address: '羽黒成海郷70', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0568-67-0033', fax: '0568-67-3815', website: 'http://www.koyumitsuru.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '小弓鶴', kana: 'こゆみつる', company: c)


c = Company.create_or_find_by!(name: '東洋自慢酒造', kana: 'とうようじまんしゅぞう')
address_attrs = { prefecture_code: 23, city: '犬山市', street_address: '羽黒字前川原48-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0568-67-0001', fax: '0568-67-0077', website: 'http://www.one-da.com/toyojiman', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東洋自慢', kana: 'とうようじまん', company: c)


c = Company.create_or_find_by!(name: '金銀花酒造', kana: 'きんぎんかしゅぞう')
address_attrs = { prefecture_code: 23, city: '一宮市', street_address: '今伊勢町馬寄山之小路19', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0586-73-3282', fax: '0586-73-3257', website: 'https://kinginka.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金銀花', kana: 'きんぎんか', company: c)


c = Company.create_or_find_by!(name: '藤市酒造', kana: 'ふじいちしゅぞう')
address_attrs = { prefecture_code: 23, city: '稲沢市', street_address: '稲葉3-4-30', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0587-32-3155', fax: '0587-32-3156', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊鷹', kana: 'きくたか', company: c)
Brand.find_or_create_by!(name: 'ことぶき', kana: 'ことぶき', company: c)


c = Company.create_or_find_by!(name: '内藤醸造', kana: 'ないとうじょうぞう')
address_attrs = { prefecture_code: 23, city: '稲沢市', street_address: '祖父江町甲新田高須賀52-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0587-97-1171', fax: '0587-97-2147', website: 'http://www.naitojouzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '氷の精', kana: 'こおりのせい', company: c)
Brand.find_or_create_by!(name: '木曽三川', kana: 'きそさんせん', company: c)


c = Company.create_or_find_by!(name: '鶴見酒造', kana: 'つるみしゅぞう')
address_attrs = { prefecture_code: 23, city: '津島市', street_address: '百町字旭46', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0567-31-1141', fax: '0567-32-0586', website: 'http://www.tsurumi-jp.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神鶴', kana: 'かみつる', company: c)
Brand.find_or_create_by!(name: '夢乃寒梅', kana: 'ゆめのかんばい', company: c)
Brand.find_or_create_by!(name: 'SUSHI SAKE', kana: 'すしさけ', company: c)


c = Company.create_or_find_by!(name: '長珍酒造', kana: 'ちょうちんしゅぞう')
address_attrs = { prefecture_code: 23, city: '津島市', street_address: '本町3-62', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0567-26-3319', fax: '0567-26-3460', website: 'https://nihonshu.exblog.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '長珍', kana: 'ちょうちん', company: c)


c = Company.create_or_find_by!(name: '山忠本家酒造', kana: 'やまちゅうほんけしゅぞう')
address_attrs = { prefecture_code: 23, city: '愛西市', street_address: '日置町1813', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0567-28-2247', fax: '0567-26-4846', website: 'https://gikyo.net', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '義侠', kana: 'ぎきょう', company: c)


c = Company.create_or_find_by!(name: '山忠新家', kana: 'やまちゅうしんけ')
address_attrs = { prefecture_code: 23, city: '愛西市', street_address: '稲葉町江頭18-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0567-24-2228', fax: '0567-26-9934', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '雲井', kana: 'くもい', company: c)


c = Company.create_or_find_by!(name: '青木酒造', kana: 'あおきしゅぞう')
address_attrs = { prefecture_code: 23, city: '愛西市', street_address: '本部田町本西60番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0567-31-0778', fax: '0567-31-0943', website: 'http://www.yamahai.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '米宗', kana: 'こめそう', company: c)
Brand.find_or_create_by!(name: 'やまはい', kana: 'やまはい', company: c)


c = Company.create_or_find_by!(name: '渡辺酒造', kana: 'わたなべしゅぞう')
address_attrs = { prefecture_code: 23, city: '愛西市', street_address: '草平町道下83', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0567-28-4361', fax: '0567-26-6381', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '平勇', kana: 'ひらいさみ', company: c)


c = Company.create_or_find_by!(name: '水谷酒造', kana: 'みずたにしゅぞう')
address_attrs = { prefecture_code: 23, city: '愛西市', street_address: '鷹場町久田山12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0567-37-2280', fax: '0567-97-3390', website: 'https://www.mizutanishuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'めぐる', kana: 'めぐる', company: c)
Brand.find_or_create_by!(name: '千瓢', kana: 'せんぴょう', company: c)


c = Company.create_or_find_by!(name: '山田酒造', kana: 'やまだしゅぞう')
address_attrs = { prefecture_code: 23, city: '海部郡', street_address: '蟹江町須成1245', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0567-95-2048', fax: '0567-95-2049', website: 'http://www5d.biglobe.ne.jp/~yamada', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '最愛', kana: 'さいあい', company: c)
Brand.find_or_create_by!(name: '酔泉', kana: 'すいせん', company: c)


c = Company.create_or_find_by!(name: '甘強酒造', kana: 'かんきょうしゅぞう')
address_attrs = { prefecture_code: 23, city: '海部郡', street_address: '蟹江町城4-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0567-95-3131', fax: '0567-95-3141', website: 'http://www.kankyo-shuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '四天王', kana: 'してんのう', company: c)
