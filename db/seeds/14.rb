c = Company.in_prefecture(14).find_or_create_by!(name: '久保田酒造', kana: 'くぼたしゅぞう')
address_attrs = { prefecture_code: 14, city: '相模原市緑区', street_address: '根小屋702', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-784-0045', fax: '042-784-2225', website: 'https://www.tsukui.ne.jp/kubota', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '相模灘', kana: 'さがみなだ', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '清水酒造', kana: 'しみずしゅぞう')
address_attrs = { prefecture_code: 14, city: '相模原市', street_address: '津久井町中野1322', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '042-784-0010', fax: '042-784-0025', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '巌乃泉', kana: 'いわおのいずみ', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '株式会社 旅酒', kana: 'たびさけ')
address_attrs = { prefecture_code: 14, city: '横浜市神奈川区', street_address: '栄町5-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
Brand.find_or_create_by!(name: '旅酒', kana: 'たびさけ', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '黄金井酒造', kana: 'こがねいしゅぞう')
address_attrs = { prefecture_code: 14, city: '厚木市', street_address: '七沢769', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '046-248-0124', fax: '046-247-8089', website: 'http://www.koganeishuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '盛升', kana: 'さかります', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '大矢孝酒造', kana: 'おやたかししゅぞう')
address_attrs = { prefecture_code: 14, city: '愛甲郡', street_address: '愛川町田代521', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '046-281-0028', fax: '046-281-4090', website: 'https://www.facebook.com/zarusohourai', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '昇龍蓬莱', kana: 'しょうりゅうほうらい', company: c)
Brand.find_or_create_by!(name: '残草蓬莱', kana: 'ざるそうほうらい', company: c)
Brand.find_or_create_by!(name: '俊也', kana: 'しゅんなり', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '泉橋酒造', kana: 'いずみばししゅぞう')
address_attrs = { prefecture_code: 14, city: '海老名市', street_address: '下今泉5-5-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '046-231-1338', fax: '046-233-1452', website: 'https://izumibashi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'いづみ橋', kana: 'いづみばし', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '相田酒造店', kana: 'あいだしゅぞうてん')
address_attrs = { prefecture_code: 14, city: '小田原市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '横浜の星', kana: 'よこはまのほし', company: c)
Brand.find_or_create_by!(name: '火牛', kana: 'かぎゅう', company: c)
Brand.find_or_create_by!(name: '早雲', kana: 'そううん', company: c)
Brand.find_or_create_by!(name: 'ちえぶくろ', kana: 'ちえぶくろ', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '舞姿酒造', kana: 'まいすがたしゅぞう')
address_attrs = { prefecture_code: 14, city: '南足柄市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '舞姿', kana: 'まいすがた', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '森山酒造', kana: 'もりやましゅぞう')
address_attrs = { prefecture_code: 14, city: '小田原市', street_address: '鬼柳138-25', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://moriyama-brewery.stores.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蜂龍盃', kana: 'はちりゅうはい', company: c)
Brand.find_or_create_by!(name: 'HINEMOS', kana: 'ひねもす', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '熊澤酒造', kana: 'くまざわしゅぞう')
address_attrs = { prefecture_code: 14, city: '茅ヶ崎市', street_address: '香川7-10-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0467-52-6118', fax: '0467-52-6119', website: 'https://www.kumazawa.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天青', kana: 'てんせい', company: c)
Brand.find_or_create_by!(name: '熊澤', kana: 'くまざわ', company: c)
Brand.find_or_create_by!(name: '鎌倉栞', kana: 'かまくらしおり', company: c)
Brand.find_or_create_by!(name: '湘南', kana: 'しょうなん', company: c)
Brand.find_or_create_by!(name: '曙光', kana: 'しょこう', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '中沢酒造', kana: 'なかざわしゅぞう')
address_attrs = { prefecture_code: 14, city: '足柄上郡', street_address: '松田町松田惣領1875', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0465-82-0024', fax: '0465-83-5332', website: 'https://www.matsumidori.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '四季の箱根', kana: 'しきのはこね', company: c)
Brand.find_or_create_by!(name: '松みどり', kana: 'まつみどり', company: c)
Brand.find_or_create_by!(name: 'S.tokyo', kana: 'エス トーキョー（えすとうきょう）', company: c)
Brand.find_or_create_by!(name: '亮', kana: 'りょう', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '井上酒造', kana: 'いのうえしゅぞう')
address_attrs = { prefecture_code: 14, city: '足柄上郡', street_address: '大井町上大井552', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0465-82-0325', fax: '0465-82-3951', website: 'https://www.hakoneyama.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '箱根七福神', kana: 'はこねしちふくじん', company: c)
Brand.find_or_create_by!(name: '夢高尾', kana: 'ゆめたかお', company: c)
Brand.find_or_create_by!(name: '左岸', kana: 'さがん', company: c)
Brand.find_or_create_by!(name: '箱根山', kana: 'はこねやま', company: c)
Brand.find_or_create_by!(name: '箱根薔薇', kana: 'はこねばら', company: c)
Brand.find_or_create_by!(name: '推譲', kana: 'すいじょう', company: c)
Brand.find_or_create_by!(name: '仙鳴郷', kana: 'せんめいきょう', company: c)
Brand.find_or_create_by!(name: 'SWEET HEART', kana: 'スイート ハート', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '石井醸造', kana: 'いしいじょうぞう')
address_attrs = { prefecture_code: 14, city: '足柄上郡', street_address: '大井町上大井954', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0465-82-3241', fax: '0465-82-3243', website: 'https://www.ishiijozo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '箱根のしずく', kana: 'はこねのしずく', company: c)
Brand.find_or_create_by!(name: '一夜城', kana: 'いちやじょう', company: c)
Brand.find_or_create_by!(name: '曽我の誉', kana: 'そがのほまれ', company: c)
Brand.find_or_create_by!(name: '箱根街道', kana: 'はこねかいどう', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '瀬戸酒造店', kana: 'せとしゅぞうてん')
address_attrs = { prefecture_code: 14, city: '足柄上郡', street_address: '開成町金井島17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0465-82-0055', fax: '0465-82-9685', website: 'https://setosyuzo.ashigarigo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'セトイチ', kana: 'せといち', company: c)
Brand.find_or_create_by!(name: '酒田錦', kana: 'さかたにしき', company: c)
Brand.find_or_create_by!(name: 'あしがり郷', kana: 'あしがりごう', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '川西屋酒造店', kana: 'かわにしやしゅぞうてん')
address_attrs = { prefecture_code: 14, city: '足柄上郡', street_address: '山北町山北250', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0465-75-0009', fax: '0465-75-0588', website: 'https://kawanishiya.wixsite.com/kawanishiya', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '隆', kana: 'りゅう', company: c)
Brand.find_or_create_by!(name: '丹沢山', kana: 'たんざわさん', company: c)
Brand.find_or_create_by!(name: '報徳娘', kana: 'ほうとくむすめ', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '吉川醸造', kana: 'きっかわじょうぞう')
address_attrs = { prefecture_code: 14, city: '伊勢原市', street_address: '神戸681', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0463-95-3071', fax: '0463-95-4903', website: 'https://kikkawa-jozo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '雨降', kana: 'あふり', company: c)
Brand.find_or_create_by!(name: '菊勇', kana: 'きくゆう', company: c)


c = Company.in_prefecture(14).find_or_create_by!(name: '金井酒造店', kana: 'かねいしゅぞうてん')
address_attrs = { prefecture_code: 14, city: '秦野市', street_address: '堀山下182-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0463-88-7521', fax: '0463-87-4219', website: 'https://www.kaneishuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白笹鼓', kana: 'しらささつづみ', company: c)
Brand.find_or_create_by!(name: 'MOZART', kana: 'モーツァルト', company: c)
Brand.find_or_create_by!(name: '鳳泉', kana: 'おおとりいずみ', company: c)
Brand.find_or_create_by!(name: '笹の露', kana: 'ささのつゆ', company: c)
