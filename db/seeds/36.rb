c = Company.in_prefecture(36).find_or_create_by!(name: '斎藤酒造場', kana: 'さいとうしゅぞうじょう')
address_attrs = { prefecture_code: 36, city: '徳島市', street_address: '佐古七番町7-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-652-8340', fax: '088-655-0637', website: 'https://www.facebook.com/gotensakura', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御殿桜', kana: 'ごてんざくら', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '吉本醸造', kana: 'よしもとじょうぞう')
address_attrs = { prefecture_code: 36, city: '徳島市', street_address: '鮎喰町1-125', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-631-7591', fax: '088-631-7283', website: 'http://www.awa-yoshimoto.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '眉山', kana: 'びざん', company: c)
Brand.find_or_create_by!(name: '南国一', kana: 'なんごくいち', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '勢玉酒造', kana: 'せいぎょくしゅぞう')
address_attrs = { prefecture_code: 36, city: '徳島市', street_address: '福島1-4-9', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-623-2777', fax: '088-623-2837', website: 'http://seigyokushuzo-sakagura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勢玉', kana: 'せいぎょく', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '吉田酒造', kana: 'よしだしゅぞう')
address_attrs = { prefecture_code: 36, city: '徳島市', street_address: '川内町大松424-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-665-1201', fax: '088-665-0305', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '蘭玉', kana: 'らんぎょく', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '木内本店', kana: 'きのうちほんてん')
address_attrs = { prefecture_code: 36, city: '板野郡', street_address: '藍住町富吉字須崎95-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-692-2307', fax: '088-692-2307', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '雲井橘', kana: 'くもいたちばな', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '日新酒類 太閤酒造場', kana: 'にっしんしゅるい たいこうしゅぞうじょう')
address_attrs = { prefecture_code: 36, city: '阿波市', street_address: '土成町郡176', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-695-3238', fax: '088-695-2922', website: 'http://www.nissin-shurui.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '我流', kana: 'がりゅう', company: c)
Brand.find_or_create_by!(name: '桜美人', kana: 'さくらびじん', company: c)
Brand.find_or_create_by!(name: '瓢太閤', kana: 'ひさごたいこう', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '司菊酒造', kana: 'つかさぎくしゅぞう')
address_attrs = { prefecture_code: 36, city: '美馬市', street_address: '美馬町字妙見93', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0883-63-6061', fax: '0883-63-4930', website: 'http://www.tsukasagiku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '司菊', kana: 'つかさぎく', company: c)
Brand.find_or_create_by!(name: '桜眉山', kana: 'さくらびざん', company: c)
Brand.find_or_create_by!(name: '喜来', kana: 'きらい', company: c)
Brand.find_or_create_by!(name: 'きらい', kana: 'きらい', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '明星酒造', kana: 'みょうじょうしゅぞう')
address_attrs = { prefecture_code: 36, city: '美馬市', street_address: '美馬町字喜来市71-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0883-63-4663', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '阿波鶴', kana: 'あわづる', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '名西酒造', kana: 'みょうざいしゅぞう')
address_attrs = { prefecture_code: 36, city: '名西郡', street_address: '神山町神領字西上角212-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-676-0502', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '白妙', kana: 'しろたえ', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '定作酒類醸造場', kana: 'じょうつくりしゅるいじょうぞうじょう')
address_attrs = { prefecture_code: 36, city: '勝浦郡', street_address: '勝浦町三渓定岡102-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '08854-2-2052', fax: '08854-2-4597', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桂華', kana: 'けいか', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '那賀酒造', kana: 'なかしゅぞう')
address_attrs = { prefecture_code: 36, city: '那賀郡', street_address: '那賀町和食字町35', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0884-62-2003', fax: '0884-62-2762', website: 'http://wwwd.pikara.ne.jp/asahiwakamatu', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭若松', kana: 'あさひわかまつ', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '花乃春酒造', kana: 'はなのはるしゅぞう')
address_attrs = { prefecture_code: 36, city: '鳴門市', street_address: '撫養町斉田浜端西105-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-686-2008', fax: '088-685-9651', website: 'http://www.hananoharu.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '花乃春', kana: 'はなのはる', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '三拍子酒造', kana: 'さんびょうししゅぞう')
address_attrs = { prefecture_code: 36, city: '鳴門市', street_address: '撫養町南浜字蛭子前西99', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-686-3111', fax: '088-686-3112', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三拍子', kana: 'さんびょうし', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '鳴門酒造', kana: 'なるとしゅぞう')
address_attrs = { prefecture_code: 36, city: '鳴門市', street_address: '撫養町大桑島字濘岩11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-686-2002', fax: '088-686-0002', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '円滑', kana: 'えんかつ', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '津乃峰酒造', kana: 'つのみねしゅぞう')
address_attrs = { prefecture_code: 36, city: '阿南市', street_address: '長生町諏訪ノ端11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0884-22-0606', fax: '0884-22-0606', website: 'http://www.tsunomine.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '津乃峰', kana: 'つのみね', company: c)
Brand.find_or_create_by!(name: '阿波美人', kana: 'あわびじん', company: c)
Brand.find_or_create_by!(name: '出世毘沙門天王', kana: 'しゅっせびしゃもんてんのう', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '真野武酒造', kana: 'まのたけしゅぞう')
address_attrs = { prefecture_code: 36, city: '三好市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '阿波踊', kana: 'あわおどり', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '三芳菊酒造', kana: 'みよしきくしゅぞう')
address_attrs = { prefecture_code: 36, city: '三好市', street_address: '池田町サラダ1661', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0883-72-0053', fax: '0883-72-1158', website: 'https://miyoshikiku.shop', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '胡春', kana: 'こはる', company: c)
Brand.find_or_create_by!(name: '三芳菊', kana: 'みよしきく', company: c)
Brand.find_or_create_by!(name: '綾音', kana: 'あやね', company: c)
Brand.find_or_create_by!(name: '織絵', kana: 'おりえ', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '中和商店', kana: 'なかわしょうてん')
address_attrs = { prefecture_code: 36, city: '三好市', street_address: '池田町サラダ1756-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0883-72-0126', fax: '0883-72-5768', website: 'http://www.niji.or.jp/komachi', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'お殿田', kana: 'おでんでん', company: c)
Brand.find_or_create_by!(name: '穣', kana: 'ゆたか', company: c)
Brand.find_or_create_by!(name: '今小町', kana: 'いまこまち', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '矢川酒造', kana: 'やがわしゅぞう')
address_attrs = { prefecture_code: 36, city: '三好市', street_address: '池田町白地字井ノ久保386-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0883-74-0611', fax: '0883-74-0612', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '笹緑', kana: 'ささみどり', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '本家松浦酒造場', kana: 'ほんけまつうらしゅぞうじょう')
address_attrs = { prefecture_code: 36, city: '鳴門市', street_address: '大麻町池谷字柳の本19', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-689-1110', fax: '088-689-1109', website: 'https://narutotai.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鳴門鯛', kana: 'なるとたい', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '近清酒造', kana: 'ちかきよしゅぞう')
address_attrs = { prefecture_code: 36, city: '阿南市', street_address: '山口町森国103-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0884-26-0053', fax: '0884-26-1395', website: 'http://www9.ocn.ne.jp/~irizuru', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '入鶴', kana: 'いりづる', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '近藤松太郎商店', kana: 'こんどうまつたろうしょうてん')
address_attrs = { prefecture_code: 36, city: '徳島市', street_address: '国府町中297-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '088-642-0001', fax: '088-642-7118', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '旭牡丹', kana: 'あさひぼたん', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '阿川酒造', kana: 'あがわしゅぞう')
address_attrs = { prefecture_code: 36, city: '美馬郡', street_address: 'つるぎ町貞光字町11', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0883-62-2011', fax: '0883-62-2678', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '齢の友', kana: 'よわいのとも', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '可楽智酒造', kana: 'からくちしゅぞう')
address_attrs = { prefecture_code: 36, city: '三好郡', street_address: '東みよし町加茂2987-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0883-82-2008', fax: '0883-82-2026', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '可楽智', kana: 'からくち', company: c)


c = Company.in_prefecture(36).find_or_create_by!(name: '芳水酒造', kana: 'ほうすいしゅぞう')
address_attrs = { prefecture_code: 36, city: '三好市', street_address: '井川町辻231-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0883-78-2014', fax: '0883-78-4198', website: 'http://www.housui.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '芳水', kana: 'ほうすい', company: c)
Brand.find_or_create_by!(name: '高柿木', kana: 'たかがき', company: c)
