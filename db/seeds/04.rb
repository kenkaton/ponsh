# 宮城県の酒造会社
c = Company.in_prefecture(4).find_or_create_by!(name: 'DATE SEVEN', kana: 'だてせぶん')
address_attrs = { prefecture_code: 4, city: '', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '', fax: '', website: 'https://www.facebook.com/date7.miyagi', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'DATE SEVEN', kana: 'ダテセブン', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '千松島', kana: 'ちまつしま')
address_attrs = { prefecture_code: 4, city: '仙台市青葉区', street_address: '国分町2-11-11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '022-222-4402', fax: '022-222-4407', website: 'https://www.chimatsushima.com/sake', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千松島', kana: 'ちまつしま', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '吉岡酒造店', kana: 'よしおかしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '仙台市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '志ら梅', kana: 'しらうめ', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '佐々木酒造店', kana: 'ささきしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '名取市', street_address: '閖上1-7　230-E10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '022-398-8596', fax: '022-398-8511', website: 'http://housen-naminooto.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '浪の音', kana: 'なみのおと', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '仙台伊澤家 勝山酒造', kana: 'かつやましゅぞう')
address_attrs = { prefecture_code: 4, city: '仙台市泉区', street_address: '福岡字二又25番地1号', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '022-348-2812', fax: '022-348-2814', website: 'http://www.katsu-yama.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '撰勝山', kana: 'せんかつやま', company: c)
Brand.find_or_create_by!(name: 'シャトーガクト', kana: 'しゃとーがくと', company: c)
Brand.find_or_create_by!(name: '戦勝政宗', kana: 'せんしょうまさむね', company: c)
Brand.find_or_create_by!(name: '勝山', kana: 'かつやま', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '内ヶ崎酒造店', kana: 'うちがさきしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '黒川郡', street_address: '富谷町富谷字町27', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '022-358-2026', fax: '022-358-6208', website: 'http://www.uchigasaki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鳳陽', kana: 'ほうよう', company: c)
Brand.find_or_create_by!(name: 'みやぎ萩', kana: 'みやぎはぎ', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '大和蔵酒造', kana: 'たいわぐらしゅぞう')
address_attrs = { prefecture_code: 4, city: '黒川郡', street_address: '大和町松坂平8-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '022-345-6886', fax: '022-345-6881', website: 'https://taiwagura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'お立ち酒', kana: 'おたちざけ', company: c)
Brand.find_or_create_by!(name: '七ツ森伝説', kana: 'ななつもりでんせつ', company: c)
Brand.find_or_create_by!(name: '雪の松島', kana: 'ゆきのまつしま', company: c)
Brand.find_or_create_by!(name: '伊達之都', kana: 'だてのみやこ', company: c)
Brand.find_or_create_by!(name: '大和蔵', kana: 'たいわぐら', company: c)
Brand.find_or_create_by!(name: '秀泉', kana: 'ひでいずみ', company: c)
Brand.find_or_create_by!(name: '殿の春風', kana: 'とののはるかぜ', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '中勇酒造店', kana: 'なかゆうしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '加美郡', street_address: '加美町南町166', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0229-63-2018', fax: '0229-63-2089', website: 'https://tenjo-mugen.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花ノ文', kana: 'はなのふみ', company: c)
Brand.find_or_create_by!(name: '天賞', kana: 'てんしょう', company: c)
Brand.find_or_create_by!(name: '火伏せの虎舞', kana: 'ひぶせのとらまい', company: c)
Brand.find_or_create_by!(name: '泉の大地', kana: 'いずみのだいち', company: c)
Brand.find_or_create_by!(name: '天上夢幻', kana: 'てんじょうむげん', company: c)
Brand.find_or_create_by!(name: '夢幻', kana: 'むげん', company: c)
Brand.find_or_create_by!(name: '鳴瀬川', kana: 'なるせがわ', company: c)
Brand.find_or_create_by!(name: '万葉美人', kana: 'まんようびじん', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '山和酒造店', kana: 'やまわしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '加美郡', street_address: '加美町南町109-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0229-63-3017', fax: '0229-63-3018', website: 'http://www.nona.dti.ne.jp/~yamawa', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '瞑想水', kana: 'めいそうすい', company: c)
Brand.find_or_create_by!(name: '七ツ森の四季', kana: 'ななつもりのしき', company: c)
Brand.find_or_create_by!(name: '山和', kana: 'やまわ', company: c)
Brand.find_or_create_by!(name: 'わしが国', kana: 'わしがくに', company: c)
Brand.find_or_create_by!(name: '有朋 待酒', kana: 'ゆうほう まちざけ', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '田中酒造店', kana: 'たなかしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '加美郡', street_address: '加美町字西町88-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0229-63-3005', fax: '0229-63-3003', website: 'http://www.manatsuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '真鶴', kana: 'まなつる', company: c)
Brand.find_or_create_by!(name: '田林', kana: 'でんりん', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '森民酒造本家', kana: 'もりたみしゅぞうほんけ')
address_attrs = { prefecture_code: 4, city: '仙台市若林区', street_address: '荒町53', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '022-266-2064', fax: '022-266-2066', website: 'https://moritami.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '森乃菊川', kana: 'もりのきくかわ', company: c)
Brand.find_or_create_by!(name: '森民', kana: 'もりたみ', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '鳳山酒造', kana: 'ほうざんしゅぞう')
address_attrs = { prefecture_code: 4, city: '仙台市若林区', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '鳳山', kana: 'ほうざん', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '佐浦', kana: 'さうら')
address_attrs = { prefecture_code: 4, city: '塩竈市', street_address: '本町2-19', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '022-362-4165', fax: '022-362-7895', website: 'https://www.urakasumi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '浦霞', kana: 'うらかすみ', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '麹屋酒造店', kana: 'こうじやしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '塩竈市', street_address: '本町2-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '022-362-0075', fax: '', website: '', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '福釜正宗', kana: 'ふくがままさむね', company: c)
Brand.find_or_create_by!(name: 'しおがま', kana: 'しおがま', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '阿部勘酒造店', kana: 'あべかんしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '塩竈市', street_address: '西町3-9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '022-362-0251', fax: '022-362-9668', website: 'http://www.abekan.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '四季の松島', kana: 'しきのまつしま', company: c)
Brand.find_or_create_by!(name: '於茂多加男山', kana: 'おもたかおとこやま', company: c)
Brand.find_or_create_by!(name: '阿部勘', kana: 'あべかん', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '石川酒造店', kana: 'いしかわしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '石巻市', street_address: '住吉町2-1-31', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0225-22-0535', fax: '', website: '', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '樹齢', kana: 'じゅれい', company: c)
Brand.find_or_create_by!(name: '北上川', kana: 'きたかみがわ', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '墨廼江酒造', kana: 'すみのえしゅぞう')
address_attrs = { prefecture_code: 4, city: '石巻市', street_address: '千石町8-43', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0225-96-6288', fax: '0225-96-6290', website: '', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '墨廼江', kana: 'すみのえ', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '平孝酒造', kana: 'ひらこうしゅぞう')
address_attrs = { prefecture_code: 4, city: '石巻市', street_address: '清水町1丁目5-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0225-22-0161', fax: '0225-96-4456', website: '', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日高見', kana: 'ひたかみ', company: c)
Brand.find_or_create_by!(name: '新関', kana: 'しんぜき', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '一ノ蔵', kana: 'いちのくら')
address_attrs = { prefecture_code: 4, city: '大崎市', street_address: '松山千石字大欅14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0229-55-3322', fax: '0229-55-4513', website: 'https://ichinokura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勝来', kana: 'かちき', company: c)
Brand.find_or_create_by!(name: 'ワタシノオト', kana: 'わたしのおと', company: c)
Brand.find_or_create_by!(name: 'ひめぜん', kana: 'ひめぜん', company: c)
Brand.find_or_create_by!(name: 'すず音', kana: 'すずね', company: c)
Brand.find_or_create_by!(name: '一ノ蔵', kana: 'いちのくら', company: c)
Brand.find_or_create_by!(name: 'あ、不思議なお酒', kana: 'あ、ふしぎなおさけ', company: c)
Brand.find_or_create_by!(name: '米米酒', kana: 'こめこめしゅ', company: c)
Brand.find_or_create_by!(name: '祥雲金龍', kana: 'しょううんきんりゅう', company: c)
Brand.find_or_create_by!(name: 'わたり藤五郎', kana: 'わたりとうごろう', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: 'はさまや酒造店', kana: 'はさまやしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '栗原市', street_address: '高清水字中町8番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0228-58-2002', fax: '0228-58-2831', website: 'http://www.e-na.co.jp/bansui', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '七清水', kana: 'ななしみず', company: c)
Brand.find_or_create_by!(name: '阿佐緒', kana: 'あさお', company: c)
Brand.find_or_create_by!(name: '虹 Niji', kana: 'にじ', company: c)
Brand.find_or_create_by!(name: '桂泉', kana: 'けいせん', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '金の井酒造', kana: 'かねのいしゅぞう')
address_attrs = { prefecture_code: 4, city: '栗原市', street_address: '一迫字川口町浦1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0228-54-2115', fax: '0228-54-2639', website: '', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '綿屋', kana: 'わたや', company: c)
Brand.find_or_create_by!(name: '小僧山水', kana: 'こぞうさんすい', company: c)
Brand.find_or_create_by!(name: '川口納豆', kana: 'かわぐちなっとう', company: c)
Brand.find_or_create_by!(name: '金の井', kana: 'かねのい', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '門傳醸造', kana: 'もんでんじょうぞう')
address_attrs = { prefecture_code: 4, city: '栗原市', street_address: '一迫萩生33', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0228-52-2563', fax: '0228-52-2563', website: 'http://www3.ic-net.or.jp/~monden/link3.html', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '坤輿', kana: 'こんよ', company: c)
Brand.find_or_create_by!(name: 'ほでなす', kana: 'ほでなす', company: c)
Brand.find_or_create_by!(name: '太閤', kana: 'たいこう', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '角星', kana: 'かくぼし')
address_attrs = { prefecture_code: 4, city: '気仙沼市', street_address: '魚町2-1-9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0226-22-0007', fax: '0226-22-0007', website: 'http://kakuboshi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '水鳥記', kana: 'みずとりき', company: c)
Brand.find_or_create_by!(name: '金紋両國', kana: 'きんもんりょうごく', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '男山本店', kana: 'おとこやまほんてん')
address_attrs = { prefecture_code: 4, city: '気仙沼市', street_address: '入沢3-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0226-24-8088', fax: '0226-22-3037', website: 'http://www.kesennuma.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '陸前男山', kana: 'りくぜんおとこやま', company: c)
Brand.find_or_create_by!(name: '伏見男山', kana: 'ふしみおとこやま', company: c)
Brand.find_or_create_by!(name: '華心', kana: 'かしん', company: c)
Brand.find_or_create_by!(name: '蒼天伝', kana: 'そうてんでん', company: c)
Brand.find_or_create_by!(name: '黄金海道', kana: 'おうごんかいどう', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '蔵王酒造', kana: 'ざおうしゅぞう')
address_attrs = { prefecture_code: 4, city: '白石市', street_address: '東小路120-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0224-25-3355', fax: '0224-25-3272', website: 'http://www.zaoshuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蔵王', kana: 'ざおう', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '大沼酒造店', kana: 'おおぬましゅぞうてん')
address_attrs = { prefecture_code: 4, city: '柴田郡', street_address: '村田町村田56-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0224-83-2025', fax: '0224-83-5689', website: 'https://www.facebook.com/SakeKenkonichi', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '不二正宗', kana: 'ふじまさむね', company: c)
Brand.find_or_create_by!(name: '大沼屋', kana: 'おおぬまや', company: c)
Brand.find_or_create_by!(name: '乾坤一', kana: 'けんこんいち', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '小野酒造店', kana: 'おのしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '岩沼市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '武隈', kana: 'たけくま', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '相傳商店', kana: 'あいでんしょうてん')
address_attrs = { prefecture_code: 4, city: '岩沼市', street_address: '中央3-1-24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0223-22-5000', fax: '0223-22-5001', website: '', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '名取駒', kana: 'なとりこま', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '川敬商店', kana: 'かわけいしょうてん')
address_attrs = { prefecture_code: 4, city: '遠田郡', street_address: '美里町二郷字高玉六号7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0229-58-0333', fax: '0229-58-0334', website: '', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '黄金澤', kana: 'こがねさわ', company: c)
Brand.find_or_create_by!(name: '橘屋', kana: 'たちばなや', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '石越醸造', kana: 'いしこしじょうぞう')
address_attrs = { prefecture_code: 4, city: '登米市', street_address: '石越町北郷中澤108-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0228-34-2005', fax: '0228-34-2304', website: 'http://sawanoizumi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '澤乃泉', kana: 'さわのいずみ', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '萩野酒造', kana: 'はぎのしゅぞう')
address_attrs = { prefecture_code: 4, city: '栗原市', street_address: '金成有壁新町52', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0228-44-2214', fax: '0228-44-2026', website: 'http://www.hagino-shuzou.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '有壁の隠し酒', kana: 'ありかべのかくしざけ', company: c)
Brand.find_or_create_by!(name: '日輪田', kana: 'ひわた', company: c)
Brand.find_or_create_by!(name: 'メガネ専用', kana: 'めがねせんよう', company: c)
Brand.find_or_create_by!(name: '萩の鶴', kana: 'はぎのつる', company: c)
Brand.find_or_create_by!(name: '亀岡', kana: 'かめおか', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '千田酒造', kana: 'ちだしゅぞう')
address_attrs = { prefecture_code: 4, city: '栗原市', street_address: '栗駒中野北畑中63-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0228-45-1024', fax: '0228-45-1686', website: '', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '奥鶴', kana: 'おくつる', company: c)
Brand.find_or_create_by!(name: '栗駒山', kana: 'くりこまやま', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '宮城ふるさと酒造', kana: 'みやぎふるさとしゅぞう')
address_attrs = { prefecture_code: 4, city: '大崎市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '湖醉', kana: 'こすい', company: c)
Brand.find_or_create_by!(name: '荒雄', kana: 'あらお', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '橋平酒造店', kana: 'はしへいしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '大崎市', street_address: '古川七日町3-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0229-22-0335', fax: '0229-22-0303', website: 'http://ameblo.jp/hashihei1790', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '玉の緒', kana: 'たまのお', company: c)
Brand.find_or_create_by!(name: 'をだえの橋', kana: 'をだえのはし', company: c)
Brand.find_or_create_by!(name: '平之丞', kana: 'へいのじょう', company: c)
Brand.find_or_create_by!(name: '醸室', kana: 'かむろ', company: c)
Brand.find_or_create_by!(name: '洋々きたかみ', kana: 'ようようきたかみ', company: c)
Brand.find_or_create_by!(name: '登米ばやし', kana: 'とよまばやし', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '浅勘酒造店', kana: 'あさかんしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '大崎市', street_address: '古川矢目北谷地87', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0229-26-2255', fax: '0229-26-2256', website: 'http://www.yoimai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔舞', kana: 'よいまい', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '寒梅酒造', kana: 'かんばいしゅぞう')
address_attrs = { prefecture_code: 4, city: '大崎市', street_address: '古川柏崎字境田15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0229-26-2037', fax: '0229-26-2263', website: 'http://miyakanbai.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '宮寒梅', kana: 'みやかんばい', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '新澤醸造店', kana: 'にいざわじょうぞうてん')
address_attrs = { prefecture_code: 4, city: '大崎市', street_address: '三本木字北町63', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0229-52-3002', fax: '0229-52-5226', website: 'http://niizawa-brewery.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '虎千里', kana: 'とらせんり', company: c)
Brand.find_or_create_by!(name: '愛宕の松', kana: 'あたごのまつ', company: c)
Brand.find_or_create_by!(name: '残響', kana: 'ざんきょう', company: c)
Brand.find_or_create_by!(name: '飛龍', kana: 'ひりゅう', company: c)
Brand.find_or_create_by!(name: '伯楽星', kana: 'はくらくせい', company: c)
Brand.find_or_create_by!(name: '横濱', kana: 'よこはま', company: c)
Brand.find_or_create_by!(name: '零響', kana: 'れいきょう', company: c)
Brand.find_or_create_by!(name: 'NIIZAWA', kana: 'にいざわ', company: c)
Brand.find_or_create_by!(name: '空木', kana: 'うつぎ', company: c)
Brand.find_or_create_by!(name: 'もえ姫', kana: 'もえひめ', company: c)
Brand.find_or_create_by!(name: 'もえこい♡', kana: 'もえこい', company: c)

c = Company.in_prefecture(4).find_or_create_by!(name: '森民酒造店', kana: 'もりたみしゅぞうてん')
address_attrs = { prefecture_code: 4, city: '大崎市', street_address: '岩出山上川原町15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0229-72-1010', fax: '0229-72-1010', website: 'http://moritamishuzouten.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '森泉', kana: 'もりいずみ', company: c)
