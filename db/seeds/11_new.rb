c = Company.create_or_find_by!(name: '大瀧酒造', kana: 'おおたきしゅぞう')
address_attrs = { prefecture_code: 11, city: 'さいたま市', street_address: '見沼区膝子663', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-683-3006', fax: '048-683-3016', website: 'http://otakisake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鷲泉', kana: 'わしいづみ', company: c)
Brand.find_or_create_by!(name: '九重桜', kana: 'ここのえざくら', company: c)


c = Company.create_or_find_by!(name: '小山本家酒造', kana: 'こやまほんけしゅぞう')
address_attrs = { prefecture_code: 11, city: 'さいたま市', street_address: '西区指扇1798', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-623-0013', fax: '048-623-1315', website: 'https://www.koyamahonke.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '米一途', kana: 'こめいちず', company: c)
Brand.find_or_create_by!(name: '大五郎', kana: 'だいごろう', company: c)
Brand.find_or_create_by!(name: '丸眞正宗', kana: 'まるしんまさむね', company: c)
Brand.find_or_create_by!(name: '金紋世界鷹', kana: 'きんもんせかいたか', company: c)
Brand.find_or_create_by!(name: '都鷹', kana: 'みやこたか', company: c)
Brand.find_or_create_by!(name: '東京盛', kana: 'とうきょうざかり', company: c)
Brand.find_or_create_by!(name: 'くらのすけ', kana: 'くらのすけ', company: c)
Brand.find_or_create_by!(name: '武蔵男山', kana: 'むさしおとこやま', company: c)
Brand.find_or_create_by!(name: '武蔵之国一之宮 鬼ころし', kana: 'むさしのくにいちのみや おにころし', company: c)
Brand.find_or_create_by!(name: '二八', kana: 'にはち', company: c)
Brand.find_or_create_by!(name: '賜杯桜', kana: 'しはいざくら', company: c)


c = Company.create_or_find_by!(name: '内木酒造', kana: 'うちきしゅぞう')
address_attrs = { prefecture_code: 11, city: 'さいたま市', street_address: '桜区西堀6-13-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-862-5734', fax: '048-862-5735', website: 'http://uchiki-s.wixsite.com/uchikisake', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭正宗', kana: 'あさひまさむね', company: c)
Brand.find_or_create_by!(name: '&#8203;鳳翔閣', kana: 'ほうしょうかく', company: c)


c = Company.create_or_find_by!(name: '鈴木酒造', kana: 'すずきしゅぞう')
address_attrs = { prefecture_code: 11, city: 'さいたま市', street_address: '岩槻区本町4-8-24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-756-0067', fax: '048-756-0600', website: 'http://www.suzukishuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '岩槻', kana: 'いわつき', company: c)
Brand.find_or_create_by!(name: '瑞薫', kana: 'ずいくん', company: c)
Brand.find_or_create_by!(name: '大手門', kana: 'おおてもん', company: c)
Brand.find_or_create_by!(name: '万両', kana: 'まんりょう', company: c)


c = Company.create_or_find_by!(name: '石井酒造', kana: 'いしいしゅぞう')
address_attrs = { prefecture_code: 11, city: '幸手市', street_address: '南2-6-11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0480-42-1120', fax: '0480-43-4300', website: 'http://www.ishii-syuzo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花あかり', kana: 'はなあかり', company: c)
Brand.find_or_create_by!(name: '彩の原石 幸', kana: 'さいのげんせき さち', company: c)
Brand.find_or_create_by!(name: '幸手', kana: 'さって', company: c)
Brand.find_or_create_by!(name: '石井屋欣兵衛', kana: 'いしいやきんべえ', company: c)
Brand.find_or_create_by!(name: 'ゆめ静', kana: 'ゆめしずか', company: c)
Brand.find_or_create_by!(name: '権現桜', kana: 'ごんげんざくら', company: c)
Brand.find_or_create_by!(name: '健誠 酒酒酒 Chou Chou Chou', kana: 'けんせい しゅしゅしゅ', company: c)
Brand.find_or_create_by!(name: '二才の醸', kana: 'にさいのかもし', company: c)
Brand.find_or_create_by!(name: '初緑', kana: 'はつみどり', company: c)
Brand.find_or_create_by!(name: '豊明', kana: 'ほうめい', company: c)


c = Company.create_or_find_by!(name: '関口酒造', kana: 'せきぐちしゅぞう')
address_attrs = { prefecture_code: 11, city: '北葛飾郡', street_address: '杉戸町清地2-1-16', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0480-32-0005', fax: '0480-32-5150', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'すぎと七福神', kana: 'すぎとしちふくじん', company: c)
Brand.find_or_create_by!(name: '杉戸宿', kana: 'すぎとじゅく', company: c)
Brand.find_or_create_by!(name: '豊泉', kana: 'ほうせん', company: c)


c = Company.create_or_find_by!(name: '寒梅酒造', kana: 'かんばいしゅぞう')
address_attrs = { prefecture_code: 11, city: '久喜市', street_address: '久喜中央2-9-27', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0480-21-2301', fax: '0480-23-2078', website: 'http://www.kanbai.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'I love choco', kana: 'アイ ラブ チョコ', company: c)
Brand.find_or_create_by!(name: '寒梅', kana: 'かんばい', company: c)
Brand.find_or_create_by!(name: '彩の原石 喜', kana: 'さいのげんせき よろこび', company: c)


c = Company.create_or_find_by!(name: '釜屋', kana: 'かまや')
address_attrs = { prefecture_code: 11, city: '加須市', street_address: '騎西1162', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0480-73-1234', fax: '0480-73-3021', website: 'http://www.rikishi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '力士', kana: 'りきし', company: c)
Brand.find_or_create_by!(name: 'かけはし', kana: 'かけはし', company: c)
Brand.find_or_create_by!(name: '加須の舞', kana: 'かぞのまい', company: c)
Brand.find_or_create_by!(name: '越ヶ谷宿', kana: 'こしがやじゅく', company: c)
Brand.find_or_create_by!(name: '釜屋新八', kana: 'かまやしんぱち', company: c)
Brand.find_or_create_by!(name: '桶川', kana: 'おけがわ', company: c)


c = Company.create_or_find_by!(name: '清水酒造', kana: 'しみずしゅぞう')
address_attrs = { prefecture_code: 11, city: '加須市', street_address: '戸室1006', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0480-73-1311', fax: '0480-73-1312', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '亀甲花菱', kana: 'きっこうはなびし', company: c)


c = Company.create_or_find_by!(name: '南陽醸造', kana: 'なんようじょうぞう')
address_attrs = { prefecture_code: 11, city: '羽生市', street_address: '上新郷5951', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-561-0178', fax: '048-563-1715', website: 'http://www.nanyo-jozo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '藍の郷', kana: 'あいのさと', company: c)
Brand.find_or_create_by!(name: '花陽浴', kana: 'はなあび', company: c)


c = Company.create_or_find_by!(name: '東亜酒造', kana: 'とうあしゅぞう')
address_attrs = { prefecture_code: 11, city: '羽生市', street_address: '西4-1-11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0485-61-3311', fax: '048-561-8923', website: 'http://www.toashuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神の泉', kana: 'かみのいずみ', company: c)
Brand.find_or_create_by!(name: '晴菊', kana: 'はれぎく', company: c)


c = Company.create_or_find_by!(name: '神亀酒造', kana: 'しんかめしゅぞう')
address_attrs = { prefecture_code: 11, city: '蓮田市', street_address: '馬込3-74', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-768-0115', fax: '048-768-6182', website: 'http://shinkame.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ひこ孫', kana: 'ひこまご', company: c)
Brand.find_or_create_by!(name: '神亀', kana: 'しんかめ', company: c)
Brand.find_or_create_by!(name: '仙亀', kana: 'せんかめ', company: c)


c = Company.create_or_find_by!(name: '清龍酒造', kana: 'せいりゅうしゅぞう')
address_attrs = { prefecture_code: 11, city: '蓮田市', street_address: '閏戸659-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-768-2025', fax: '048-768-4585', website: 'http://www.seiryu-syuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '清龍', kana: 'せいりゅう', company: c)


c = Company.create_or_find_by!(name: '小江戸鏡山酒造', kana: 'こえどかがみやましゅぞう')
address_attrs = { prefecture_code: 11, city: '川越市', street_address: '仲町10-13', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '049-224-7780', fax: '049-265-6480', website: 'https://www.kagamiyama.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '時の鐘', kana: 'ときのかね', company: c)
Brand.find_or_create_by!(name: '鏡山', kana: 'かがみやま', company: c)


c = Company.create_or_find_by!(name: '日本酒造', kana: 'にほんしゅぞう')
address_attrs = { prefecture_code: 11, city: '比企郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '葵万代', kana: 'あおいばんだい', company: c)
Brand.find_or_create_by!(name: '万代黒松正宗', kana: 'ばんだいくろまつまさむね', company: c)


c = Company.create_or_find_by!(name: '佐藤酒造店', kana: 'さとうしゅぞうてん')
address_attrs = { prefecture_code: 11, city: '入間郡', street_address: '越生町津久根141-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '049-292-2058', fax: '049-292-2034', website: 'http://www.satoshuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あさか野物語', kana: 'あさかのものがたり', company: c)
Brand.find_or_create_by!(name: '越生梅林', kana: 'おごせばいりん', company: c)
Brand.find_or_create_by!(name: '野火止', kana: 'のびどめ', company: c)


c = Company.create_or_find_by!(name: '越生酒造', kana: 'おごせしゅぞう')
address_attrs = { prefecture_code: 11, city: '入間郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '来陽', kana: 'らいよう', company: c)


c = Company.create_or_find_by!(name: '麻原酒造', kana: 'あさはらしゅぞう')
address_attrs = { prefecture_code: 11, city: '入間郡', street_address: '毛呂山町毛呂本郷94', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '049-294-0005', fax: '049-294-0189', website: 'https://www.musashino-asahara.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '近江屋', kana: 'おうみや', company: c)
Brand.find_or_create_by!(name: 'こぶしの里', kana: 'こぶしのさと', company: c)
Brand.find_or_create_by!(name: '武蔵野', kana: 'むさしの', company: c)
Brand.find_or_create_by!(name: 'アクアドルチェ', kana: 'あくあどるちぇ', company: c)
Brand.find_or_create_by!(name: '大香の蔵', kana: 'たいこうのくら', company: c)
Brand.find_or_create_by!(name: '琵琶のささ浪', kana: 'びわのささなみ', company: c)
Brand.find_or_create_by!(name: '素敵', kana: 'すてき', company: c)
Brand.find_or_create_by!(name: '埼玉150周年記念日本酒', kana: 'さいたま150しゅうねんきねん', company: c)


c = Company.create_or_find_by!(name: '長澤酒造', kana: 'ながさわしゅぞう')
address_attrs = { prefecture_code: 11, city: '日高市', street_address: '北平沢335', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-989-0007', fax: '042-989-0612', website: 'http://nagasawasyuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'かわせみの里', kana: 'かわせみのさと', company: c)
Brand.find_or_create_by!(name: '君が旗', kana: 'きみがはた', company: c)
Brand.find_or_create_by!(name: '高麗王', kana: 'こまおう', company: c)


c = Company.create_or_find_by!(name: '松岡醸造', kana: 'まつおかじょうぞう')
address_attrs = { prefecture_code: 11, city: '比企郡', street_address: '小川町下古寺7-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0493-72-1234', fax: '0493-74-1010', website: 'http://www.mikadomatsu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '帝松', kana: 'みかどまつ', company: c)


c = Company.create_or_find_by!(name: '晴雲酒造', kana: 'せいうんしゅぞう')
address_attrs = { prefecture_code: 11, city: '比企郡', street_address: '小川町大塚178-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0493-72-0055', fax: '0493-72-0311', website: 'http://www.kumagaya.or.jp/~seiun', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '金勝山', kana: 'きんしょうざん', company: c)
Brand.find_or_create_by!(name: '無為', kana: 'むい', company: c)
Brand.find_or_create_by!(name: '晴雲', kana: 'せいうん', company: c)
Brand.find_or_create_by!(name: '玉井', kana: 'たまい', company: c)


c = Company.create_or_find_by!(name: '武蔵鶴酒造', kana: 'むさしつるしゅぞう')
address_attrs = { prefecture_code: 11, city: '比企郡', street_address: '小川町大塚243', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0493-72-1634', fax: '0493-74-1872', website: 'http://www.musashitsuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '武蔵鶴', kana: 'むさしつる', company: c)


c = Company.create_or_find_by!(name: '五十嵐酒造', kana: 'いがらししゅぞう')
address_attrs = { prefecture_code: 11, city: '飯能市', street_address: '川寺667-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-973-7703', fax: '042-974-0394', website: 'https://www.snw.co.jp/~iga_s', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '飯能風土記', kana: 'はんのうふどき', company: c)
Brand.find_or_create_by!(name: '天覧山', kana: 'てんらんざん', company: c)
Brand.find_or_create_by!(name: '洗心無', kana: 'せんしんむ', company: c)
Brand.find_or_create_by!(name: '喜八郎', kana: 'きはちろう', company: c)
Brand.find_or_create_by!(name: '五十嵐', kana: 'いがらし', company: c)


c = Company.create_or_find_by!(name: '有馬錦酒造', kana: 'ありまにしきしゅぞう')
address_attrs = { prefecture_code: 11, city: '飯能市', street_address: '飯能446-12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-972-2835', fax: '042-972-0094', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '有馬錦', kana: 'ありまにしき', company: c)


c = Company.create_or_find_by!(name: '権田酒造', kana: 'ごんだしゅぞう')
address_attrs = { prefecture_code: 11, city: '熊谷市', street_address: '三ヶ尻1491', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-532-3611', fax: '048-532-7889', website: 'http://www.ksky.ne.jp/~gonda', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '直実', kana: 'なおざね', company: c)
Brand.find_or_create_by!(name: '清太喜', kana: 'きよたき', company: c)


c = Company.create_or_find_by!(name: '横田酒造', kana: 'よこたしゅぞう')
address_attrs = { prefecture_code: 11, city: '行田市', street_address: '桜町2-29-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-556-6111', fax: '048-553-3530', website: 'http://yokota-shuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '行田育ち', kana: 'ぎょうだそだち', company: c)
Brand.find_or_create_by!(name: '日本橋', kana: 'にほんばし', company: c)
Brand.find_or_create_by!(name: '浮城', kana: 'うきしろ', company: c)


c = Company.create_or_find_by!(name: '川端酒造', kana: 'かわばたしゅぞう')
address_attrs = { prefecture_code: 11, city: '行田市', street_address: '佐間2-9-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-554-3217', fax: '048-554-3218', website: 'http://www.kawabatashuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桝川', kana: 'ますかわ', company: c)


c = Company.create_or_find_by!(name: '北西酒造', kana: 'きたにししゅぞう')
address_attrs = { prefecture_code: 11, city: '上尾市', street_address: '上町2-5-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-771-0011', fax: '048-773-2524', website: 'https://www.kitanishishuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '文楽', kana: 'ぶんらく', company: c)
Brand.find_or_create_by!(name: 'AGEO', kana: 'あげお', company: c)


c = Company.create_or_find_by!(name: '秋笹醸造', kana: 'あきささじょうぞう')
address_attrs = { prefecture_code: 11, city: '鴻巣市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '金紋朝日', kana: 'きんもんあさひ', company: c)


c = Company.create_or_find_by!(name: '丸山酒造', kana: 'まるやましゅぞう')
address_attrs = { prefecture_code: 11, city: '深谷市', street_address: '横瀬1323', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-587-2144', fax: '048-587-2988', website: 'http://www.maruyamasz.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '織星', kana: 'おりほし', company: c)
Brand.find_or_create_by!(name: '金大星正宗', kana: 'きんだいぼしまさむね', company: c)
Brand.find_or_create_by!(name: '酔眺月', kana: 'すいちょうげつ', company: c)
Brand.find_or_create_by!(name: '瞬喜道', kana: 'しゅんきどう', company: c)


c = Company.create_or_find_by!(name: '藤橋藤三郎商店', kana: 'ふじはしとうざぶろうしょうてん')
address_attrs = { prefecture_code: 11, city: '深谷市', street_address: '仲町4-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-571-0136', fax: '048-571-0638', website: 'http://fujihashi.fcciweb.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '東白菊', kana: 'あずましらぎく', company: c)


c = Company.create_or_find_by!(name: '滝澤酒造', kana: 'たきざわしゅぞう')
address_attrs = { prefecture_code: 11, city: '深谷市', street_address: '田所町9-20', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '048-571-0267', fax: '048-571-2248', website: 'https://kikuizumi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊泉', kana: 'きくいずみ', company: c)
Brand.find_or_create_by!(name: '青淵郷', kana: 'せいえんきょう', company: c)


c = Company.create_or_find_by!(name: '横関酒造', kana: 'よこぜきしゅぞう')
address_attrs = { prefecture_code: 11, city: '児玉郡', street_address: '美里町猪俣3214-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0495-76-1051', fax: '0495-76-3998', website: 'http://park3.wakwak.com/~yokozeki', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天仁', kana: 'てんじん', company: c)


c = Company.create_or_find_by!(name: '武甲酒造', kana: 'ぶこうしゅぞう')
address_attrs = { prefecture_code: 11, city: '秩父市', street_address: '宮側町21-27', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0494-22-0046', fax: '0494-22-2831', website: 'http://www.bukou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '武甲正宗', kana: 'ぶこうまさむね', company: c)


c = Company.create_or_find_by!(name: '矢尾本店', kana: 'やおほんてん')
address_attrs = { prefecture_code: 11, city: '秩父市', street_address: '別所久保ノ入1432', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0494-23-8919', fax: '0494-22-2126', website: 'https://chichibunishiki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '升屋', kana: 'ますや', company: c)
Brand.find_or_create_by!(name: '秩父錦', kana: 'ちちぶにしき', company: c)


c = Company.create_or_find_by!(name: '藤﨑摠兵衛商店', kana: 'ふじさきそうべえしょうてん')
address_attrs = { prefecture_code: 11, city: '大里郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '白扇', kana: 'はくせん', company: c)


c = Company.create_or_find_by!(name: '藤﨑摠兵衛商店 長瀞蔵', kana: 'ふじさきそうべえしょうてん ながとろぐら')
address_attrs = { prefecture_code: 11, city: '秩父郡', street_address: '長瀞町長瀞1158', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0494-69-0001', website: 'https://nagatorogura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あまとろ', kana: 'あまとろ', company: c)
Brand.find_or_create_by!(name: '長瀞', kana: 'ながとろ', company: c)


c = Company.create_or_find_by!(name: '秩父菊水酒造', kana: 'ちちぶきくすいしゅぞう')
address_attrs = { prefecture_code: 11, city: '秩父市', street_address: '下吉田3786-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0494-77-2010', fax: '0494-77-2012', website: 'http://www.chichibu-kikusui.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '秩父小次郎', kana: 'ちちぶこじろう', company: c)
Brand.find_or_create_by!(name: '秩父太郎', kana: 'ちちぶたろう', company: c)
Brand.find_or_create_by!(name: '秩父菊水', kana: 'ちちぶきくすい', company: c)
Brand.find_or_create_by!(name: '秩父次郎', kana: 'ちちぶじろう', company: c)


c = Company.create_or_find_by!(name: '和久井酒造', kana: 'わくいしゅぞう')
address_attrs = { prefecture_code: 11, city: '秩父市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '慶長', kana: 'けいちょう', company: c)
