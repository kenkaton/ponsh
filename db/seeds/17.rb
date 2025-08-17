c = Company.in_prefecture(17).find_or_create_by!(name: '武内酒造店', kana: 'たけうちしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '金沢市', street_address: '御所町イ22', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-252-5476', fax: '076-251-5068', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御所泉', kana: 'ごしょいずみ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: 'やちや酒造', kana: 'やちやしゅぞう')
address_attrs = { prefecture_code: 17, city: '金沢市', street_address: '大樋町8-32', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-252-7077', fax: '076-252-7449', website: 'http://www.yachiya-sake.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '加賀鶴', kana: 'かがつる', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '中村酒造', kana: 'なかむらしゅぞう')
address_attrs = { prefecture_code: 17, city: '金沢市', street_address: '長土塀3-2-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-248-2435', fax: '076-248-2436', website: 'https://nakamura-shuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '加賀雪梅', kana: 'かがせつばい', company: c)
Brand.find_or_create_by!(name: 'ルネサンス金沢', kana: 'るねさんすかなざわ', company: c)
Brand.find_or_create_by!(name: '加賀太鼓', kana: 'かがだいこ', company: c)
Brand.find_or_create_by!(name: 'AKIRA', kana: 'あきら', company: c)
Brand.find_or_create_by!(name: 'すっぽんぽん', kana: 'すっぽんぽん', company: c)
Brand.find_or_create_by!(name: '客人', kana: 'まれびと', company: c)
Brand.find_or_create_by!(name: '日榮', kana: 'にちえい', company: c)
Brand.find_or_create_by!(name: 'アランデュカス', kana: 'あらんでゅかす', company: c)
Brand.find_or_create_by!(name: '金澤中村屋', kana: 'かなざわなかむらや', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '小堀酒造店', kana: 'こぼりしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '白山市', street_address: '鶴来本町1丁目ワ47番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0761-93-1171', fax: '0761-93-3725', website: 'http://www.manzairaku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萬歳楽', kana: 'まんざいらく', company: c)
Brand.find_or_create_by!(name: '白山', kana: 'はくさん', company: c)
Brand.find_or_create_by!(name: '石川門', kana: 'いしかわもん', company: c)
Brand.find_or_create_by!(name: '獅子吼', kana: 'ししく', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '菊姫', kana: 'きくひめ')
address_attrs = { prefecture_code: 17, city: '白山市', street_address: '鶴来新町タ8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-272-1234', fax: '076-273-1222', website: 'https://www.kikuhime.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊姫', kana: 'きくひめ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '福光屋', kana: 'ふくみつや')
address_attrs = { prefecture_code: 17, city: '金沢市', street_address: '石引2-8-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-223-1161', fax: '076-222-3769', website: 'http://www.fukumitsuya.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '百々登勢', kana: 'ももとせ', company: c)
Brand.find_or_create_by!(name: '禱と稔', kana: 'いのりとみのり', company: c)
Brand.find_or_create_by!(name: '金澤', kana: 'かなざわ', company: c)
Brand.find_or_create_by!(name: '加賀鳶', kana: 'かがとび', company: c)
Brand.find_or_create_by!(name: '初心', kana: 'はつごころ', company: c)
Brand.find_or_create_by!(name: 'そして伝説へ…', kana: 'そしてでんせつへ…', company: c)
Brand.find_or_create_by!(name: '加賀纏', kana: 'かがまとい', company: c)
Brand.find_or_create_by!(name: '福正宗', kana: 'ふくまさむね', company: c)
Brand.find_or_create_by!(name: '酒炭酸', kana: 'さけたんさん', company: c)
Brand.find_or_create_by!(name: '黒帯', kana: 'くろおび', company: c)
Brand.find_or_create_by!(name: '瑞秀', kana: 'みずほ', company: c)
Brand.find_or_create_by!(name: '風よ水よ人よ', kana: 'かぜよみずよひとよ', company: c)
Brand.find_or_create_by!(name: '鏡花', kana: 'きょうか', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '松浦酒造', kana: 'まつうらしゅぞう')
address_attrs = { prefecture_code: 17, city: '加賀市', street_address: '山中温泉冨士見町オ50', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0761-78-1125', fax: '0761-78-1126', website: 'https://shishinosato.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '獅子の里', kana: 'ししのさと', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '橋本酒造', kana: 'はしもとしゅぞう')
address_attrs = { prefecture_code: 17, city: '加賀市', street_address: '動橋町イ184', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0761-74-0602', fax: '0761-74-0603', website: 'https://judaime.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '十代目', kana: 'じゅうだいめ', company: c)
Brand.find_or_create_by!(name: '大日盛', kana: 'だいにちざかり', company: c)
Brand.find_or_create_by!(name: '富樫の仁', kana: 'とがしのじん', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '鹿野酒造', kana: 'かのしゅぞう')
address_attrs = { prefecture_code: 17, city: '加賀市', street_address: '八日市町イ6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0761-74-1551', fax: '0761-74-6120', website: 'https://www.jokigen.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '益荒男', kana: 'ますらお', company: c)
Brand.find_or_create_by!(name: '常きげん', kana: 'じょうきげん', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '東酒造', kana: 'ひがししゅぞう')
address_attrs = { prefecture_code: 17, city: '小松市', street_address: '野田町丁35', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0761-22-2301', fax: '0761-22-2300', website: 'http://www.sake-sinsen.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神泉', kana: 'しんせん', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '農口尚彦研究所', kana: 'のぐちなおひこけんきゅうしょ')
address_attrs = { prefecture_code: 17, city: '小松市', street_address: '観音下町ワ1番1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://noguchi-naohiko.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '農口尚彦研究所', kana: 'のぐちなおひこけんきゅうしょ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '西出酒造', kana: 'にしでしゅぞう')
address_attrs = { prefecture_code: 17, city: '小松市', street_address: '下粟津町ろ24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0761-44-8188', fax: '0761-44-4521', website: 'https://nishidesake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '春心', kana: 'はるごころ', company: c)
Brand.find_or_create_by!(name: '金紋', kana: 'きんもん', company: c)
Brand.find_or_create_by!(name: '裕恒', kana: 'ひろひさ', company: c)
Brand.find_or_create_by!(name: 'シラヤマフウロ', kana: 'しらやまふうろ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '加越', kana: 'かえつ')
address_attrs = { prefecture_code: 17, city: '小松市', street_address: '今江町9-605', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0761-22-5321', fax: '0761-23-1444', website: 'https://www.kanpaku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '加賀ノ月', kana: 'かがのつき', company: c)
Brand.find_or_create_by!(name: 'こっそり', kana: 'こっそり', company: c)
Brand.find_or_create_by!(name: '関白', kana: 'かんぱく', company: c)
Brand.find_or_create_by!(name: '酒峰加越', kana: 'しゅほうかえつ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '手塚酒造場', kana: 'てづかしゅぞうじょう')
address_attrs = { prefecture_code: 17, city: '小松市', street_address: '串町庚7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0761-44-1200', fax: '0761-44-2342', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊鶴', kana: 'きくつる', company: c)
Brand.find_or_create_by!(name: '御幸誉', kana: 'みゆきのほまれ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '農口酒造', kana: 'のぐちしゅぞう')
address_attrs = { prefecture_code: 17, city: '能美市', street_address: '末寺町イ42', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0761-57-0021', fax: '0761-57-0106', website: 'http://noguchishuzo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '農口', kana: 'のぐち', company: c)
Brand.find_or_create_by!(name: '弁慶', kana: 'べんけい', company: c)
Brand.find_or_create_by!(name: '勧進帳', kana: 'かんじんちょう', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '宮本酒造店', kana: 'みやもとしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '能美市', street_address: '宮竹町イ74', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0761-51-3333', fax: '0761-51-5355', website: 'http://www.mujou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '夢醸', kana: 'むじょう', company: c)
Brand.find_or_create_by!(name: '福の宮', kana: 'ふくのみや', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '車多酒造', kana: 'しゃたしゅぞう')
address_attrs = { prefecture_code: 17, city: '白山市', street_address: '坊丸町60-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-275-1165', fax: '076-275-1866', website: 'https://www.tengumai.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天狗舞', kana: 'てんぐまい', company: c)
Brand.find_or_create_by!(name: '五凜', kana: 'ごりん', company: c)
Brand.find_or_create_by!(name: 'shu re', kana: 'シュレ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '吉田酒造店', kana: 'よしだしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '白山市', street_address: '安吉町41', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-276-3311', fax: '076-276-3378', website: 'https://tedorigawa.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'You / U', kana: 'ゆう', company: c)
Brand.find_or_create_by!(name: '吉田蔵', kana: 'よしだぐら', company: c)
Brand.find_or_create_by!(name: 'いきな女', kana: 'いきなおんな', company: c)
Brand.find_or_create_by!(name: '友白髪', kana: 'ともしらが', company: c)
Brand.find_or_create_by!(name: '手取川', kana: 'てどりがわ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '金谷酒造店', kana: 'かなやしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '白山市', street_address: '安田町3-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-276-1177', fax: '076-276-4234', website: 'http://www.hakusan-takasago.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '高砂', kana: 'たかさご', company: c)
Brand.find_or_create_by!(name: '北美雪', kana: 'きたみゆき', company: c)
Brand.find_or_create_by!(name: '友白髪', kana: 'ともしらが', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '春成酒造店', kana: 'はるなりしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '七尾市', street_address: '今町15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0767-52-0120', fax: '0767-52-7135', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '春山', kana: 'はるやま', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '布施酒造店', kana: 'ふせしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '七尾市', street_address: '三島町52-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0767-53-0027', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天平', kana: 'てんぺい', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '鶴野酒造店', kana: 'つるのしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '鳳珠郡', street_address: '能登町鵜川19-64', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-67-2311', fax: '0768-67-2312', website: 'https://www.taniizumi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鶴と福', kana: 'つるとふく', company: c)
Brand.find_or_create_by!(name: '谷泉', kana: 'たにいずみ', company: c)
Brand.find_or_create_by!(name: '登雷', kana: 'とらい', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '数馬酒造', kana: 'かずましゅぞう')
address_attrs = { prefecture_code: 17, city: '鳳珠郡', street_address: '能登町宇出津ヘ36', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-62-1200', fax: '0768-62-1201', website: 'https://chikuha.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'Chikuha N', kana: 'ちくは えぬ', company: c)
Brand.find_or_create_by!(name: '竹葉', kana: 'ちくは', company: c)
Brand.find_or_create_by!(name: '閃', kana: 'せん', company: c)
Brand.find_or_create_by!(name: '深豊', kana: 'しんほう', company: c)
Brand.find_or_create_by!(name: 'NOTO', kana: 'のと', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '松波酒造', kana: 'まつなみしゅぞう')
address_attrs = { prefecture_code: 17, city: '鳳珠郡', street_address: '能登町松波30-114', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-72-0005', fax: '0768-72-2348', website: 'http://www.o-eyama.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大江山', kana: 'おおえやま', company: c)
Brand.find_or_create_by!(name: '能登起舟', kana: 'のときしゅう', company: c)
Brand.find_or_create_by!(name: 'つづらの波', kana: 'つづらのなみ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '櫻田酒造', kana: 'さくらだしゅぞう')
address_attrs = { prefecture_code: 17, city: '珠洲市', street_address: '蛸島町ソ93', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-82-0508', fax: '0768-82-6628', website: 'https://sakurada.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '大慶', kana: 'たいけい', company: c)
Brand.find_or_create_by!(name: '初桜', kana: 'はつさくら', company: c)
Brand.find_or_create_by!(name: '能登桜', kana: 'のとざくら', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '宗玄酒造', kana: 'そうげんしゅぞう')
address_attrs = { prefecture_code: 17, city: '珠洲市', street_address: '宝立町宗玄24-22', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-84-1314', fax: '0768-84-1315', website: 'http://www.sougen-shuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宗玄', kana: 'そうげん', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '中野酒造', kana: 'なかのしゅぞう')
address_attrs = { prefecture_code: 17, city: '輪島市', street_address: '門前町広瀬ニ5-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-42-0008', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '能登亀泉', kana: 'のとかめいずみ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '沢田酒造店', kana: 'さわだしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '輪島市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '白鳳', kana: 'はくほう', company: c)
Brand.find_or_create_by!(name: '能登のおやじ', kana: 'のとのおやじ', company: c)
Brand.find_or_create_by!(name: 'つばさ', kana: 'つばさ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '日吉酒造店', kana: 'ひよししゅぞうてん')
address_attrs = { prefecture_code: 17, city: '輪島市', street_address: '河井町2-27-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-22-0130', fax: '0768-22-9988', website: 'http://www.hiyoshisyuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金瓢白駒', kana: 'きんぴょうしらこま', company: c)
Brand.find_or_create_by!(name: 'ささのつゆ', kana: 'ささのつゆ', company: c)
Brand.find_or_create_by!(name: 'おれの酒', kana: 'おれのさけ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '清水酒造店', kana: 'しみずしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '輪島市', street_address: '河井町1-18-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-22-5858', fax: '0768-22-5868', website: 'http://www.notohomare.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千枚田', kana: 'せんまいだ', company: c)
Brand.find_or_create_by!(name: '能登誉', kana: 'のとほまれ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '白藤酒造店', kana: 'はくとうしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '輪島市', street_address: '鳳至町上町24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-22-2115', fax: '0768-22-5524', website: 'http://www.hakutousyuzou.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '寧音', kana: 'ねね', company: c)
Brand.find_or_create_by!(name: '奥能登の白菊', kana: 'おくのとのしらぎく', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '中島酒造店', kana: 'なかしましゅぞうてん')
address_attrs = { prefecture_code: 17, city: '輪島市', street_address: '鳳至町稲荷町8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-22-0018', fax: '0768-22-0018', website: 'https://www.notosuehiro.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '杜夢', kana: 'とむ', company: c)
Brand.find_or_create_by!(name: '能登國', kana: 'のとぐに', company: c)
Brand.find_or_create_by!(name: '花おぼろ', kana: 'はなおぼろ', company: c)
Brand.find_or_create_by!(name: '能登末廣', kana: 'のとすえひろ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '中納酒造', kana: 'なかのしゅぞう')
address_attrs = { prefecture_code: 17, city: '輪島市', street_address: '町野町寺山3-42', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0768-32-1130', fax: '0768-32-1131', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '若緑', kana: 'わかみどり', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '久世酒造店', kana: 'くぜしゅぞうてん')
address_attrs = { prefecture_code: 17, city: '河北郡', street_address: '津幡町清水イ122', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-289-2028', fax: '076-289-4606', website: 'http://www.choseimai.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '能登路', kana: 'のとじ', company: c)
Brand.find_or_create_by!(name: '長生舞', kana: 'ちょうせいまい', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '見砂酒造', kana: 'みさごしゅぞう')
address_attrs = { prefecture_code: 17, city: '羽咋郡', street_address: '宝達志水町宿4-43', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0767-28-3151', fax: '0767-28-3152', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '朱鷺の里', kana: 'ときのさと', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '御祖酒造', kana: 'みおやしゅぞう')
address_attrs = { prefecture_code: 17, city: '羽咋市', street_address: '大町イ8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0767-26-2320', fax: '0767-26-2339', website: 'http://mioya-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ほまれ', kana: 'ほまれ', company: c)
Brand.find_or_create_by!(name: '遊穂', kana: 'ゆうほ', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '二羽鶴酒造場', kana: 'にわづるしゅぞうじょう')
address_attrs = { prefecture_code: 17, city: '鹿島郡', street_address: '中能登町羽坂4-21-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0767-74-0010', fax: '0767-74-0018', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '二羽鶴', kana: 'にわづる', company: c)


c = Company.in_prefecture(17).find_or_create_by!(name: '鳥屋酒造', kana: 'とりやしゅぞう')
address_attrs = { prefecture_code: 17, city: '鹿島郡', street_address: '中能登町一青ケ96', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0767-74-0013', fax: '0767-74-1139', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '池月', kana: 'いけづき', company: c)
