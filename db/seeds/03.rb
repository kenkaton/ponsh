c = Company.create_or_find_by!(name: '菊の司酒造', kana: 'きくのつかさしゅぞう')
address_attrs = { prefecture_code: 3, city: '岩手郡', street_address: '雫石町長山狼沢11-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '019-693-3330', fax: '019-693-3335', website: 'https://www.kikunotsukasa.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '七福神', kana: 'しちふくじん', company: c)
Brand.find_or_create_by!(name: 'RondoIwate', kana: 'ロンドイワテ', company: c)
Brand.find_or_create_by!(name: '菊の司', kana: 'きくのつかさ', company: c)
Brand.find_or_create_by!(name: 'すごい!!アル添', kana: 'すごいあるてん', company: c)
Brand.find_or_create_by!(name: 'にごり酒杜の白菊', kana: 'にごりざけもりのしらぎく', company: c)
Brand.find_or_create_by!(name: '平井六右衛門', kana: 'ひらいろくえもん', company: c)

c = Company.create_or_find_by!(name: '桜顔酒造', kana: 'さくらがおしゅぞう')
address_attrs = { prefecture_code: 3, city: '盛岡市', street_address: '川目町23-18', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '019-622-6800', fax: '019-622-6825', website: 'https://sakuragao.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '姫のかくし酒', kana: 'ひめのかくしざけ', company: c)
Brand.find_or_create_by!(name: '銀河鉄道の夜', kana: 'ぎんがてつどうのよる', company: c)
Brand.find_or_create_by!(name: '桜顔', kana: 'さくらがお', company: c)
Brand.find_or_create_by!(name: '大地の一献', kana: 'だいちのいっこん', company: c)
Brand.find_or_create_by!(name: '北国の恋人', kana: 'きたぐにのこいびと', company: c)
Brand.find_or_create_by!(name: 'もりおか SAKE すぱぁくりんぐ', kana: 'もりおか さけ すぱぁくりんぐ', company: c)

c = Company.create_or_find_by!(name: 'あさ開', kana: 'あさびらき')
address_attrs = { prefecture_code: 3, city: '盛岡市', street_address: '大慈寺町10-34', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '019-652-3111', fax: '019-624-4303', website: 'http://www.asabiraki-net.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あさ開', kana: 'あさびらき', company: c)

c = Company.create_or_find_by!(name: '赤武酒造', kana: 'あかぶしゅぞう')
address_attrs = { prefecture_code: 3, city: '盛岡市', street_address: '北飯岡1-8-60', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '019-681-8895', fax: '019-681-8897', website: 'https://www.akabu1.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '赤武', kana: 'あかぶ', company: c)
Brand.find_or_create_by!(name: '海龍', kana: 'かいりゅう', company: c)
Brand.find_or_create_by!(name: '浜娘', kana: 'はまむすめ', company: c)

c = Company.create_or_find_by!(name: '岩手川', kana: 'いわてがわ')
address_attrs = { prefecture_code: 3, addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '岩手川', kana: 'いわてがわ', company: c)

c = Company.create_or_find_by!(name: '両磐酒造', kana: 'りょうばんしゅぞう')
address_attrs = { prefecture_code: 3, city: '一関市', street_address: '末広1-8-23', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0191-23-3392', fax: '0191-23-3391', website: 'http://www.seisyu-kanzan.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '関山', kana: 'かんざん', company: c)
Brand.find_or_create_by!(name: '奥州のおっほー', kana: 'おうしゅうおっほー', company: c)

c = Company.create_or_find_by!(name: '世嬉の一酒造', kana: 'せきのいちしゅぞう')
address_attrs = { prefecture_code: 3, city: '一関市', street_address: '田村町5-42', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0191-21-1144', fax: '0191-21-1143', website: 'http://www.sekinoichi.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '世嬉の一', kana: 'せきのいち', company: c)

c = Company.create_or_find_by!(name: '天瓢', kana: 'てんぴょう')
address_attrs = { prefecture_code: 3, addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '蒼天', kana: 'そうてん', company: c)

c = Company.create_or_find_by!(name: '喜久盛酒造', kana: 'きくざかりしゅぞう')
address_attrs = { prefecture_code: 3, city: '北上市', street_address: '更木3-54', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0197-66-2625', fax: '0197-66-2922', website: 'http://kikuzakari.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'シャムロック', kana: 'しゃむろっく', company: c)
Brand.find_or_create_by!(name: 'リゾビーノ', kana: 'りぞびーの', company: c)
Brand.find_or_create_by!(name: '電氣菩薩', kana: 'でんきぼさつ', company: c)
Brand.find_or_create_by!(name: 'タクシードライバー', kana: 'たくしーどらいばー', company: c)
Brand.find_or_create_by!(name: '喜久盛', kana: 'きくざかり', company: c)
Brand.find_or_create_by!(name: '鬼剣舞', kana: 'おにけんばい', company: c)

c = Company.create_or_find_by!(name: '白雲', kana: 'はくうん')
address_attrs = { prefecture_code: 3, addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '風の又三郎', kana: 'かぜのまたさぶろう', company: c)
Brand.find_or_create_by!(name: '白雲', kana: 'はくうん', company: c)

c = Company.create_or_find_by!(name: '浜千鳥', kana: 'はまちどり')
address_attrs = { prefecture_code: 3, city: '釜石市', street_address: '小川町3-8-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0193-23-5613', fax: '0193-23-0510', website: 'https://hamachidori.net' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '浜千鳥', kana: 'はまちどり', company: c)
Brand.find_or_create_by!(name: '仙人郷', kana: 'せんにんきょう', company: c)

c = Company.create_or_find_by!(name: '菱屋酒造店', kana: 'ひしやしゅぞうてん')
address_attrs = { prefecture_code: 3, city: '宮古市', street_address: '鍬ヶ崎下町5-24', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0193-62-3128', fax: '0193-63-8524', website: 'http://homepage3.nifty.com/hisiya' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千両男山', kana: 'せんりょうおとこやま', company: c)

c = Company.create_or_find_by!(name: '泉金酒造', kana: 'せんきんしゅぞう')
address_attrs = { prefecture_code: 3, city: '下閉伊郡', street_address: '岩泉町岩泉太田30', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0194-22-3211', fax: '0194-22-3210', website: 'http://www.ginga.or.jp/~senkin' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '龍泉八重桜', kana: 'りゅうせんやえざくら', company: c)

c = Company.create_or_find_by!(name: '上閉伊酒造', kana: 'かみへいしゅぞう')
address_attrs = { prefecture_code: 3, city: '遠野市', street_address: '青笹町糠前31-19-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0198-62-2002', fax: '0198-62-2003', website: 'http://www.v-toono.jp/kamihei' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '国華の薫', kana: 'こっかのかおり', company: c)
Brand.find_or_create_by!(name: 'たえの酒', kana: 'たえのさけ', company: c)
Brand.find_or_create_by!(name: '遠野河童の盗み酒', kana: 'とうのかっぱのぬすみざけ', company: c)

c = Company.create_or_find_by!(name: '民宿とおの', kana: 'とおの')
address_attrs = { prefecture_code: 3, city: '遠野市', street_address: '材木町2-17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0198-62-4395', fax: '0198-62-4365', website: 'http://www.minshuku-tono.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'とおの どぶろく', kana: 'とおの どぶろく', company: c)
Brand.find_or_create_by!(name: '振郷農贅', kana: 'しんこうのうぜい', company: c)

c = Company.create_or_find_by!(name: '宝峰', kana: 'たからみね')
address_attrs = { prefecture_code: 3, addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '宝峰', kana: 'たからみね', company: c)

c = Company.create_or_find_by!(name: '川村酒造店', kana: 'かわむらしゅぞうてん')
address_attrs = { prefecture_code: 3, city: '花巻市', street_address: '石鳥谷町好地12-132', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0198-45-2226', fax: '0198-45-6005' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔右衛門', kana: 'よえもん', company: c)
Brand.find_or_create_by!(name: '南部関', kana: 'なんぶぜき', company: c)

c = Company.create_or_find_by!(name: '月の輪酒造店', kana: 'つきのわしゅぞうてん')
address_attrs = { prefecture_code: 3, city: '紫波郡', street_address: '紫波町高水寺向畑101', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '019-672-1133', fax: '019-676-5011', website: 'https://www.tsukinowa-iwate.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月の輪', kana: 'つきのわ', company: c)
Brand.find_or_create_by!(name: '若狭屋徳市', kana: 'わかさやとくいち', company: c)
Brand.find_or_create_by!(name: '徳丹城', kana: 'とくたんじょう', company: c)
Brand.find_or_create_by!(name: '宵の月', kana: 'よいのつき', company: c)

c = Company.create_or_find_by!(name: '廣田酒造店', kana: 'ひろたしゅぞうてん')
address_attrs = { prefecture_code: 3, city: '紫波郡', street_address: '紫波町宮手泉屋敷2-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '019-673-7706', fax: '019-673-7570', website: 'http://hirotashuzoten.net' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '丹頂正宗', kana: 'たんちょうまさむね', company: c)
Brand.find_or_create_by!(name: '春てきてき', kana: 'はるてきてき', company: c)
Brand.find_or_create_by!(name: '関泉', kana: 'せきいずみ', company: c)
Brand.find_or_create_by!(name: '廣喜', kana: 'ひろき', company: c)
Brand.find_or_create_by!(name: '喜平治', kana: 'きへいじ', company: c)
Brand.find_or_create_by!(name: '荒蝦夷', kana: 'あらえびす', company: c)

c = Company.create_or_find_by!(name: '高橋酒造店', kana: 'たかはししゅぞうてん')
address_attrs = { prefecture_code: 3, city: '紫波郡', street_address: '紫波町片寄堀米36', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '019-673-7308', fax: '019-673-8343' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '紫波の匠', kana: 'しわのたくみ', company: c)
Brand.find_or_create_by!(name: '堀米', kana: 'ほりごめ', company: c)
Brand.find_or_create_by!(name: '堀の井', kana: 'ほりのい', company: c)

c = Company.create_or_find_by!(name: '吾妻嶺酒造店', kana: 'あづまみねしゅぞうてん')
address_attrs = { prefecture_code: 3, city: '紫波郡', street_address: '紫波町土舘内川5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '019-673-7221', fax: '019-673-7222', website: 'http://www.azumamine.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '悠楽', kana: 'ゆうらく', company: c)
Brand.find_or_create_by!(name: 'あづまみね', kana: 'あづまみね', company: c)
Brand.find_or_create_by!(name: '鸛', kana: 'こうのとり', company: c)
Brand.find_or_create_by!(name: '吾妻嶺', kana: 'あづまみね', company: c)
Brand.find_or_create_by!(name: '我が家の春', kana: 'わがやのはる', company: c)

c = Company.create_or_find_by!(name: '南部美人', kana: 'なんぶびじん')
address_attrs = { prefecture_code: 3, city: '二戸市', street_address: '福岡上町13', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0195-23-3133', fax: '0195-23-4713', website: 'https://www.nanbubijin.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '南部美人', kana: 'なんぶびじん', company: c)
Brand.find_or_create_by!(name: '芳梅', kana: 'ほうばい', company: c)

c = Company.create_or_find_by!(name: 'わしの尾', kana: 'わしのお')
address_attrs = { prefecture_code: 3, city: '八幡平市', street_address: '大更第22地割158', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0195-76-3211', fax: '0195-76-3212', website: 'http://www.washinoo.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鷲の尾', kana: 'わしのお', company: c)

c = Company.create_or_find_by!(name: '鈴蘭酒造', kana: 'すずらんしゅぞう')
address_attrs = { prefecture_code: 3, addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '北リアスからの風', kana: 'きたりあすからのかぜ', company: c)
Brand.find_or_create_by!(name: '銀嶺すずらん', kana: 'ぎんれいすずらん', company: c)

c = Company.create_or_find_by!(name: '福来', kana: 'ふくらい')
address_attrs = { prefecture_code: 3, city: '久慈市', street_address: '宇部町5-31', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0194-56-2221', fax: '0194-56-2222', website: 'http://www.maroon.dti.ne.jp/fukurai' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鐵の道', kana: 'てつのみち', company: c)
Brand.find_or_create_by!(name: '久慈川', kana: 'くじがわ', company: c)
Brand.find_or_create_by!(name: '北限の海女', kana: 'ほくげんのあま', company: c)
Brand.find_or_create_by!(name: '福来', kana: 'ふくらい', company: c)
Brand.find_or_create_by!(name: '白樺凛', kana: 'しらかばりん', company: c)
Brand.find_or_create_by!(name: '涼霞', kana: 'すずかすみ', company: c)

c = Company.create_or_find_by!(name: '酔仙酒造', kana: 'すいせんしゅぞう')
address_attrs = { prefecture_code: 3, city: '陸前高田市', street_address: '高田町字大石1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0192-47-4130', website: 'https://suisenshuzo.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔仙', kana: 'すいせん', company: c)
Brand.find_or_create_by!(name: '雪ゆめ', kana: 'ゆきゆめ', company: c)
Brand.find_or_create_by!(name: '雪っこ', kana: 'ゆきっこ', company: c)
Brand.find_or_create_by!(name: '岩手の地酒', kana: 'いわてのじざけ', company: c)
Brand.find_or_create_by!(name: '奇跡の一本松', kana: 'きせきのいっぽんまつ', company: c)

c = Company.create_or_find_by!(name: '磐乃井酒造', kana: 'いわのいしゅぞう')
address_attrs = { prefecture_code: 3, city: '一関市', street_address: '花泉町涌津舘72', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0191-82-2100', fax: '0191-82-2101', website: 'http://www.iwanoi.co.jp' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'こでられね', kana: 'こでられね', company: c)
Brand.find_or_create_by!(name: '百磐', kana: 'ひゃくばん', company: c)
Brand.find_or_create_by!(name: '磐', kana: 'ばん', company: c)
Brand.find_or_create_by!(name: '玄会', kana: 'くろえ', company: c)
Brand.find_or_create_by!(name: '磐乃井', kana: 'いわのい', company: c)

c = Company.create_or_find_by!(name: '岩手銘醸', kana: 'いわてめいじょう')
address_attrs = { prefecture_code: 3, city: '奥州市前沢区', street_address: '新町13', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0197-56-3131', fax: '0197-56-3142', website: 'http://www.iwate-meijo.com' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '岩手誉', kana: 'いわてほまれ', company: c)
Brand.find_or_create_by!(name: '地主町', kana: 'じしゅうまち', company: c)
Brand.find_or_create_by!(name: '玉の春', kana: 'たまのはる', company: c)
Brand.find_or_create_by!(name: '阿弖流爲', kana: 'あてるい', company: c)
Brand.find_or_create_by!(name: '天瓢', kana: 'てんぴょう', company: c)
