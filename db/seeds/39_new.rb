c = Company.create_or_find_by!(name: '酔鯨酒造', kana: 'すいげいしゅぞう')
address_attrs = { prefecture_code: 39, city: '高知市', street_address: '長浜566-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-841-4080', fax: '088-856-8818', website: 'https://suigei.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酔鯨', kana: 'すいげい', company: c)
Brand.find_or_create_by!(name: 'DAITO', kana: 'ダイト', company: c)


c = Company.create_or_find_by!(name: '亀泉酒造', kana: 'かめいずみしゅぞう')
address_attrs = { prefecture_code: 39, city: '土佐市', street_address: '出間2123-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-854-0811', fax: '088-854-0813', website: 'http://www.kameizumi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '亀泉', kana: 'かめいずみ', company: c)


c = Company.create_or_find_by!(name: '高知酒造', kana: 'こうちしゅぞう')
address_attrs = { prefecture_code: 39, city: '吾川郡', street_address: 'いの町勝賀瀬780-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-897-0314', fax: '088-897-0315', website: 'http://kochi-sake.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '瀧嵐', kana: 'たきあらし', company: c)


c = Company.create_or_find_by!(name: '土佐酒造', kana: 'とさしゅぞう')
address_attrs = { prefecture_code: 39, city: '土佐郡', street_address: '土佐町田井418', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0887-82-0504', fax: '0887-82-1984', website: 'http://www.keigetsu.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桂月', kana: 'けいげつ', company: c)


c = Company.create_or_find_by!(name: '高木酒造', kana: 'たかぎしゅぞう')
address_attrs = { prefecture_code: 39, city: '香南市', street_address: '赤岡町443', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0887-55-1800', fax: '0887-55-2605', website: 'https://www.toyonoume.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '空と海', kana: 'そらとうみ', company: c)
Brand.find_or_create_by!(name: '土佐金蔵', kana: 'とさきんぞう', company: c)
Brand.find_or_create_by!(name: '豊の梅', kana: 'とよのうめ', company: c)
Brand.find_or_create_by!(name: 'ALIENS', kana: 'エイリアンズ', company: c)


c = Company.create_or_find_by!(name: '仙頭酒造場', kana: 'せんとうしゅぞうじょう')
address_attrs = { prefecture_code: 39, city: '安芸郡', street_address: '芸西村和食甲1551', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0887-33-2611', fax: '0887-33-2612', website: 'https://www.tosashiragiku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '土佐しらぎく', kana: 'とさしらぎく', company: c)
Brand.find_or_create_by!(name: '美潮', kana: 'みしお', company: c)
Brand.find_or_create_by!(name: '土佐深海', kana: 'とさしんかい', company: c)


c = Company.create_or_find_by!(name: '浜川商店', kana: 'はまかわしょうてん')
address_attrs = { prefecture_code: 39, city: '安芸郡', street_address: '田野町2150', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0887-38-2004', fax: '0887-38-8284', website: 'http://bijofu.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '濱乃鶴', kana: 'はまのつる', company: c)
Brand.find_or_create_by!(name: '美丈夫', kana: 'びじょうふ', company: c)
Brand.find_or_create_by!(name: '慎太郎 SHINTARO', kana: 'しんたろう', company: c)


c = Company.create_or_find_by!(name: '南酒造場', kana: 'みなみしゅぞうじょう')
address_attrs = { prefecture_code: 39, city: '安芸郡', street_address: '安田町安田1875', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0887-38-6811', fax: '0887-38-6812', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '玉の井', kana: 'たまのい', company: c)
Brand.find_or_create_by!(name: '南', kana: 'みなみ', company: c)


c = Company.create_or_find_by!(name: '土佐鶴酒造', kana: 'とさつるしゅぞう')
address_attrs = { prefecture_code: 39, city: '安芸郡', street_address: '安田町安田1586', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0887-38-6511', fax: '0887-38-3787', website: 'https://tosatsuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'azure', kana: 'アジュール', company: c)
Brand.find_or_create_by!(name: '土佐鶴', kana: 'とさつる', company: c)


c = Company.create_or_find_by!(name: 'アリサワ', kana: 'ありさわ')
address_attrs = { prefecture_code: 39, city: '香美市', street_address: '土佐山田町西本町1-4-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0887-52-3177', fax: '0887-52-4415', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鳴子舞', kana: 'なるこまい', company: c)
Brand.find_or_create_by!(name: '糀おしろい', kana: 'はなおしろい', company: c)
Brand.find_or_create_by!(name: '四万十旅情', kana: 'しまんとりょじょう', company: c)
Brand.find_or_create_by!(name: '鏡野', kana: 'かがみの', company: c)
Brand.find_or_create_by!(name: '土州魂', kana: 'どしゅうだましい', company: c)
Brand.find_or_create_by!(name: 'たいら', kana: 'たいら', company: c)
Brand.find_or_create_by!(name: '文佳人', kana: 'ぶんかじん', company: c)


c = Company.create_or_find_by!(name: '松尾酒造', kana: 'まつおしゅぞう')
address_attrs = { prefecture_code: 39, city: '香美市', street_address: '土佐山田町西本町5-1-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0887-53-2273', fax: '0887-53-3990', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山田太鼓', kana: 'やまだだいこ', company: c)
Brand.find_or_create_by!(name: '松翁', kana: 'まつおきな', company: c)


c = Company.create_or_find_by!(name: '菊水酒造', kana: 'きくすいしゅぞう')
address_attrs = { prefecture_code: 39, city: '安芸市', street_address: '本町4-6-25', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0887-35-3501', fax: '0887-35-3503', website: 'http://www.tosa-kikusui.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '土佐菊水', kana: 'とさきくすい', company: c)
Brand.find_or_create_by!(name: '四万十川', kana: 'しまんとがわ', company: c)


c = Company.create_or_find_by!(name: '有光酒造場', kana: 'ありみつしゅぞうじょう')
address_attrs = { prefecture_code: 39, city: '安芸市', street_address: '赤野甲38-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0887-33-2117', fax: '0887-33-4477', website: 'http://ww8.tiki.ne.jp/~akano', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '玉川', kana: 'たまがわ', company: c)
Brand.find_or_create_by!(name: '赤野', kana: 'あかの', company: c)
Brand.find_or_create_by!(name: '安芸虎', kana: 'あきとら', company: c)


c = Company.create_or_find_by!(name: '文本酒造', kana: 'ふみもとしゅぞう')
address_attrs = { prefecture_code: 39, city: '高岡郡', street_address: '四万十町本町4-23', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0880-22-0039', fax: '0880-22-2670', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桃太郎', kana: 'ももたろう', company: c)
Brand.find_or_create_by!(name: '入駒', kana: 'いりこま', company: c)
Brand.find_or_create_by!(name: '四万十ノ', kana: 'しまんとの', company: c)
Brand.find_or_create_by!(name: '霧の里', kana: 'きりのさと', company: c)


c = Company.create_or_find_by!(name: '無手無冠', kana: 'むてむか')
address_attrs = { prefecture_code: 39, city: '高岡郡', street_address: '四万十町大正452', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0880-27-0316', fax: '0880-27-0380', website: 'http://www.mutemuka.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '無手無冠', kana: 'むてむか', company: c)
Brand.find_or_create_by!(name: '千代登', kana: 'ちよのぼり', company: c)


c = Company.create_or_find_by!(name: '藤娘酒造', kana: 'ふじむすめしゅぞう')
address_attrs = { prefecture_code: 39, city: '四万十市', street_address: '中村新町4-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0880-34-4131', fax: '0880-34-4132', website: 'http://shimanto-fujimusume.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'とみやま', kana: 'とみやま', company: c)
Brand.find_or_create_by!(name: '宇宙の夢', kana: 'うちゅうのゆめ', company: c)
Brand.find_or_create_by!(name: '藤娘', kana: 'ふじむすめ', company: c)


c = Company.create_or_find_by!(name: '司牡丹酒造', kana: 'つかさぼたんしゅぞう')
address_attrs = { prefecture_code: 39, city: '高岡郡', street_address: '佐川町甲1299', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0889-22-1211', fax: '0889-22-4116', website: 'https://www.tsukasabotan.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花と恋して', kana: 'はなとこいして', company: c)
Brand.find_or_create_by!(name: '日土人', kana: 'ひとびと', company: c)
Brand.find_or_create_by!(name: '櫻朶', kana: 'さくらだ', company: c)
Brand.find_or_create_by!(name: '船中八策', kana: 'せんちゅうはっさく', company: c)
Brand.find_or_create_by!(name: '司牡丹', kana: 'つかさぼたん', company: c)
Brand.find_or_create_by!(name: 'かまわぬ', kana: 'かまわぬ', company: c)


c = Company.create_or_find_by!(name: '西岡酒造店', kana: 'にしおかしゅぞうてん')
address_attrs = { prefecture_code: 39, city: '高岡郡', street_address: '中土佐町久礼6154', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0889-52-2018', fax: '0889-52-4526', website: 'http://www.jyunpei.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '雪柳', kana: 'ゆきやなぎ', company: c)
Brand.find_or_create_by!(name: 'てっぺん四万十', kana: 'てっぺんしまんと', company: c)
Brand.find_or_create_by!(name: '雲の上の雫', kana: 'くものうえのしずく', company: c)
Brand.find_or_create_by!(name: '久礼', kana: 'くれ', company: c)
Brand.find_or_create_by!(name: '純平', kana: 'じゅんぺい', company: c)
Brand.find_or_create_by!(name: '須崎', kana: 'すさき', company: c)
