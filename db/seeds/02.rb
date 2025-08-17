c = Company.in_prefecture(2).find_or_create_by!(name: 'Future4', kana: 'ふゅーちゃーふぉー')
address_attrs = { prefecture_code: 2, addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
Brand.find_or_create_by!(name: 'Future4', kana: 'フューチャーフォー', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: 'あおもり酒米プロジェクト', kana: 'あおもりさかまいぷろじぇくと')
address_attrs = { prefecture_code: 2, addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
Brand.find_or_create_by!(name: '三ツ友恵', kana: 'みつどもえ', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '合同酒精 八戸工場', kana: 'ごうどうしゅせいはちのへこうじょう')
address_attrs = { prefecture_code: 2, city: '八戸市', street_address: '城下2-11-67', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0178-22-1131', fax: '0178-24-1131', website: 'https://www.oenon.jp/product/sake' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '南部蔵 富貴', kana: 'なんぶぐら ふうき', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '八戸酒類 八鶴工場', kana: 'はちのへしゅるい はちつるこうじょう')
address_attrs = { prefecture_code: 2, city: '八戸市', street_address: '八日町1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0178-43-0010', fax: '0178-43-0313', website: 'https://hachinohe-syurui.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蔵物語', kana: 'くらものがたり', company: c)
Brand.find_or_create_by!(name: '八鶴', kana: 'はちつる', company: c)
Brand.find_or_create_by!(name: '三戸のどんべり', kana: 'さんのへのどんべり', company: c)
Brand.find_or_create_by!(name: '十魂', kana: 'じゅっこん', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '八戸酒造', kana: 'はちのへしゅぞう')
address_attrs = { prefecture_code: 2, city: '八戸市', street_address: '湊町本町9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0178-33-1171', fax: '0178-34-1174', website: 'https://mutsu8000.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '陸奥男山', kana: 'むつおとこやま', company: c)
Brand.find_or_create_by!(name: 'がんじゃ自然酒倶楽部', kana: 'がんじゃしぜんしゅくらぶ', company: c)
Brand.find_or_create_by!(name: '陸奥八仙', kana: 'むつはっせん', company: c)
Brand.find_or_create_by!(name: '陸奥山海', kana: 'むつさんかい', company: c)
Brand.find_or_create_by!(name: '陸奥田心', kana: 'むつでんしん', company: c)
Brand.find_or_create_by!(name: '裏 陸奥八仙', kana: 'うら むつはっせん', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '鳩正宗', kana: 'はとまさむね')
address_attrs = { prefecture_code: 2, city: '十和田市', street_address: '大字三本木字稲吉176-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0176-23-0221', fax: '0176-24-2532', website: 'http://www.hatomasa.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '佐藤企', kana: 'さとうたくみ', company: c)
Brand.find_or_create_by!(name: '鳩正宗', kana: 'はとまさむね', company: c)
Brand.find_or_create_by!(name: '稲生', kana: 'いなおい', company: c)
Brand.find_or_create_by!(name: '八甲田おろし', kana: 'はっこうだおろし', company: c)
Brand.find_or_create_by!(name: '蒼川', kana: 'そうせん', company: c)
Brand.find_or_create_by!(name: '武士道', kana: 'ぶしどう', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '関乃井酒造', kana: 'せきのいしゅぞう')
address_attrs = { prefecture_code: 2, city: 'むつ市', street_address: '柳町1-5-15', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0175-22-3261', fax: '0175-22-3259', website: 'http://www.sekinoi.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '関乃井', kana: 'せきのい', company: c)
Brand.find_or_create_by!(name: '北勇', kana: 'きたいさみ', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '中村亀吉', kana: 'なかむらかめきち')
address_attrs = { prefecture_code: 2, city: '黒石市', street_address: '中町12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-52-3361', fax: '0172-52-3362' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '亀吉', kana: 'かめきち', company: c)
Brand.find_or_create_by!(name: '玉垂', kana: 'たまだれ', company: c)
Brand.find_or_create_by!(name: '津軽娘', kana: 'つがるむすめ', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '鳴海醸造店', kana: 'なるみじょうぞうてん')
address_attrs = { prefecture_code: 2, city: '黒石市', street_address: '大字中町1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-52-3321', fax: '0172-52-3819', website: 'https://narumijozoten.com/' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '稲村屋文四郎', kana: 'いなむらやぶんしろう', company: c)
Brand.find_or_create_by!(name: '稲村屋', kana: 'いなむらや', company: c)
Brand.find_or_create_by!(name: '菊乃井', kana: 'きくのい', company: c)
Brand.find_or_create_by!(name: '賜', kana: 'たまもの', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '佐藤酒造', kana: 'さとうしゅぞう')
address_attrs = { prefecture_code: 2, addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '初駒', kana: 'はつこま', company: c)
Brand.find_or_create_by!(name: '鬼笑', kana: 'おにわらい', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '佐藤酒造店', kana: 'さとうしゅぞうてん')
address_attrs = { prefecture_code: 2, city: '弘前市', street_address: '鳥井野字宮本31-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-82-4210', fax: '0172-82-4914' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '卍', kana: 'まんじ', company: c)
Brand.find_or_create_by!(name: '掬水', kana: 'きくすい', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '丸竹酒造店', kana: 'まるたけしゅぞうてん')
address_attrs = { prefecture_code: 2, city: '弘前市', street_address: '大字国吉字坂本49', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-86-2002', fax: '0172-86-2077' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '津軽衆', kana: 'つがるしゅう', company: c)
Brand.find_or_create_by!(name: '大輪菊盛', kana: 'だいりんきくもり', company: c)
Brand.find_or_create_by!(name: '白神ロマンの宴', kana: 'しらかみろまんのうたげ', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '白神酒造', kana: 'しらかみしゅぞう')
address_attrs = { prefecture_code: 2, city: '弘前市', street_address: '米ヶ袋村元22', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-86-2106', fax: '0172-86-2529', website: 'http://www.sirakami-sake.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '西澤', kana: 'にしざわ', company: c)
Brand.find_or_create_by!(name: '白神', kana: 'しらかみ', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '吉井酒造', kana: 'よしいしゅぞう')
address_attrs = { prefecture_code: 2, city: '弘前市', street_address: '駅前1-6-6', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-32-3481' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '吉野桜', kana: 'よしのざくら', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '六花酒造', kana: 'ろっかしゅぞう')
address_attrs = { prefecture_code: 2, city: '弘前市', street_address: '向外瀬豊田217', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-35-4141', fax: '0172-35-4147', website: 'http://www.joppari.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '杜來', kana: 'とらい', company: c)
Brand.find_or_create_by!(name: 'じょっぱり', kana: 'じょっぱり', company: c)
Brand.find_or_create_by!(name: '荒馬', kana: 'あらま', company: c)
Brand.find_or_create_by!(name: '龍飛', kana: 'たっぴ', company: c)
Brand.find_or_create_by!(name: '蔵子', kana: 'くらこ', company: c)
Brand.find_or_create_by!(name: '津軽海峡', kana: 'つがるかいきょう', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '弘前銘醸', kana: 'ひろさきめいじょう')
address_attrs = { prefecture_code: 2, city: '弘前市', street_address: '富田3丁目7-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-32-4241', fax: '0172-36-8385', website: 'https://ja-jp.facebook.com/hirosakimeijo' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '遊天', kana: 'ゆうてん', company: c)
Brand.find_or_create_by!(name: '羽衣', kana: 'はごろも', company: c)
Brand.find_or_create_by!(name: '弘前城', kana: 'ひろさきじょう', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: 'カネタ玉田酒造店', kana: 'かねたたまだしゅぞうてん')
address_attrs = { prefecture_code: 2, city: '弘前市', street_address: '茂森町81', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-34-7506', fax: '0172-34-7507' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蟹田', kana: 'かにた', company: c)
Brand.find_or_create_by!(name: '津軽蔵人', kana: 'つがるくろうど', company: c)
Brand.find_or_create_by!(name: '華一風', kana: 'はないっぷう', company: c)
Brand.find_or_create_by!(name: '玉川', kana: 'たまかわ', company: c)
Brand.find_or_create_by!(name: '斬', kana: 'ざん', company: c)
Brand.find_or_create_by!(name: '津軽じょんがら', kana: 'つがるじょんがら', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '三浦酒造', kana: 'みうらしゅぞう')
address_attrs = { prefecture_code: 2, city: '弘前市', street_address: '石渡5-1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-32-1577', fax: '0172-32-1581', website: 'https://houhai.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊盃', kana: 'ほうはい', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '松緑酒造', kana: 'まつみどりしゅぞう')
address_attrs = { prefecture_code: 2, city: '弘前市', street_address: '駒越町58', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0172-34-2233', fax: '0172-34-2234', website: 'https://matsu-midori.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '北のまほろば', kana: 'きたのまほろば', company: c)
Brand.find_or_create_by!(name: '刑事', kana: 'でか', company: c)
Brand.find_or_create_by!(name: '松緑', kana: 'まつみどり', company: c)
Brand.find_or_create_by!(name: '六根', kana: 'ろっこん', company: c)
Brand.find_or_create_by!(name: '麗峰', kana: 'れいほう', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '竹浪酒造店', kana: 'たけなみしゅぞうてん')
address_attrs = { prefecture_code: 2, city: 'つがる市', street_address: '稲垣町沼崎字幾代崎121-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0173-23-5053', fax: '0173-23-5054', website: 'http://www.takenami-shuzoten.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '七郎兵衛', kana: 'しちろべえ', company: c)
Brand.find_or_create_by!(name: '岩木正宗', kana: 'いわきまさむね', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '長内酒造店', kana: 'おさないしゅぞうてん')
address_attrs = { prefecture_code: 2, addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '明ケ烏', kana: 'あけがらす', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '西田酒造店', kana: 'にしだしゅぞうてん')
address_attrs = { prefecture_code: 2, city: '青森市', street_address: '大字油川字大浜46', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '017-788-0007', fax: '017-788-2553', website: 'http://www.densyu.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '田酒', kana: 'でんしゅ', company: c)
b = Brand.find_or_create_by!(name: '喜久泉', kana: 'きくいずみ', company: c)
Product.find_or_create_by!(name: ' 大吟醸 喜久泉', kana: 'だいぎんじょう きくいずみ', brand: b)
Product.find_or_create_by!(name: '善知鳥', kana: 'うとう', brand: b)
Brand.find_or_create_by!(name: '外ヶ濱', kana: 'そとがはま', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '尾崎酒造', kana: 'おざきしゅぞう')
address_attrs = { prefecture_code: 2, city: '西津軽郡', street_address: '鰺ヶ沢町漁師町30', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0173-72-2029', fax: '0173-72-6655', website: 'https://ozakishuzo.jp/' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鯵ヶ澤', kana: 'あじがさわ', company: c)
Brand.find_or_create_by!(name: '岩木川', kana: 'いわきがわ', company: c)
Brand.find_or_create_by!(name: 'ブナの白神', kana: 'ぶなのしらかみ', company: c)
Brand.find_or_create_by!(name: '白神の金鮎', kana: 'しらかみのきんあゆ', company: c)
Brand.find_or_create_by!(name: '安東水軍', kana: 'あんどうすいぐん', company: c)
Brand.find_or_create_by!(name: '白神山地の湧き水で仕込んだお酒', kana: 'しらかみさんちのわきみずでしこんだおさけ', company: c)
Brand.find_or_create_by!(name: '白神のしずく', kana: 'しらかみのしずく', company: c)
Brand.find_or_create_by!(name: '神の座', kana: 'かみのざ', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '八戸酒類 第二工場', kana: 'はちのへしゅるい だいにこうじょう')
address_attrs = { prefecture_code: 2, addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '稲川', kana: 'いながわ', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '八戸酒類 五戸工場', kana: 'はちのへしゅるい ごのへこうじょう')
address_attrs = { prefecture_code: 2, city: '三戸郡', street_address: '五戸町字川原町12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0178-62-2115', fax: '0178-62-3013', website: 'https://hachinohe-syurui.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '五戸のどんべり', kana: 'ごのへのどんべり', company: c)
Brand.find_or_create_by!(name: '五醸', kana: 'ごじょう', company: c)
Brand.find_or_create_by!(name: '酔', kana: 'すい', company: c)
Brand.find_or_create_by!(name: '如空', kana: 'じょくう', company: c)
Brand.find_or_create_by!(name: '菊駒', kana: 'きくこま', company: c)
Brand.find_or_create_by!(name: '十', kana: 'とお', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '菊駒酒造', kana: 'きくこましゅぞう')
address_attrs = { prefecture_code: 2, city: '三戸郡', street_address: '五戸町字川原町12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0178-62-2323', fax: '0178-62-6639', website: 'http://www.kikukoma.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊駒', kana: 'きくこま', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '桃川', kana: 'ももかわ')
address_attrs = { prefecture_code: 2, city: '上北郡', street_address: 'おいらせ町上明堂112', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0178-52-2241', fax: '0178-52-3145', website: 'https://www.momokawa.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ねぶた', kana: 'ねぶた', company: c)
Brand.find_or_create_by!(name: '杉玉', kana: 'すぎだま', company: c)
Brand.find_or_create_by!(name: '斗南の桜', kana: 'となみのさくら', company: c)
Brand.find_or_create_by!(name: '隼風', kana: 'はやかぜ', company: c)
Brand.find_or_create_by!(name: '桃川', kana: 'ももかわ', company: c)

c = Company.in_prefecture(2).find_or_create_by!(name: '盛田庄兵衛', kana: 'もりたしょうべえ')
address_attrs = { prefecture_code: 2, city: '上北郡', street_address: '七戸町字七戸230', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0176-62-2010', fax: '0176-62-2036', website: 'http://www.morishou.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '十和田美人', kana: 'とわだびじん', company: c)
Brand.find_or_create_by!(name: '七力', kana: 'しちりき', company: c)
Brand.find_or_create_by!(name: '駒泉', kana: 'こまいずみ', company: c)
Brand.find_or_create_by!(name: '作田', kana: 'さくた', company: c)
Brand.find_or_create_by!(name: '一の馬', kana: 'いちのうま', company: c)
