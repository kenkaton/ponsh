c = Company.in_prefecture(38).find_or_create_by!(name: '岡酒造', kana: 'おかしゅぞう')
address_attrs = { prefecture_code: 38, city: '松山市', street_address: '萱町5-10-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-925-3841', fax: '089-925-7034', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'かちとき', kana: 'かちとき', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '愛媛県酒造共同組合', kana: 'えひめけんしゅぞうきょうどうくみあい')
address_attrs = { prefecture_code: 38, city: '松山市', street_address: '道後湯之町10-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-913-8030', fax: '089-913-1371', website: 'http://www.ehime-syuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '媛の愛', kana: 'ひめのあい', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '水口酒造', kana: 'みなくちしゅぞう')
address_attrs = { prefecture_code: 38, city: '松山市', street_address: '道後喜多町3-23', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-924-6616', fax: '089-924-3707', website: 'https://www.dogobeer.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '仁喜多津', kana: 'にきたつ', company: c)
Brand.find_or_create_by!(name: '道後蔵酒', kana: 'どうごくらざけ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '後藤酒造', kana: 'ごとうしゅぞう')
address_attrs = { prefecture_code: 38, city: '松山市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '久米の井', kana: 'くめのい', company: c)
Brand.find_or_create_by!(name: '十五万石', kana: 'じゅうごまんごく', company: c)
Brand.find_or_create_by!(name: '眞十郎', kana: 'しんじゅうろう', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '栄光酒造', kana: 'えいこうしゅぞう')
address_attrs = { prefecture_code: 38, city: '松山市', street_address: '溝辺町甲443', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-977-0964', fax: '089-977-5413', website: 'http://www.eikoo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酒仙栄光', kana: 'しゅせんえいこう', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '横河酒造', kana: 'よこかわしゅぞう')
address_attrs = { prefecture_code: 38, city: '東温市', street_address: '横河原1304-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-964-2116', fax: '089-964-2116', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '男花', kana: 'おとこはな', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '島田酒造', kana: 'しまだしゅぞう')
address_attrs = { prefecture_code: 38, city: '東温市', street_address: '志津川1445', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-964-2111', fax: '089-964-2129', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '小富士', kana: 'こふじ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: 'お茂ご酒造', kana: 'おもごしゅぞう')
address_attrs = { prefecture_code: 38, city: '上浮穴郡', street_address: '久万高原町久万137', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0892-21-0025', fax: '0892-21-1525', website: 'http://www.omogo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'お茂ご', kana: 'おもご', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '雪娘酒造', kana: 'ゆきむすめしゅぞう')
address_attrs = { prefecture_code: 38, city: '上浮穴郡', street_address: '久万高原町久万327', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0892-21-0007', fax: '0892-21-0747', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '雪娘', kana: 'ゆきむすめ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: 'かち鶴酒造', kana: 'かちづるしゅぞう')
address_attrs = { prefecture_code: 38, city: '伊予郡', street_address: '砥部町宮内542', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-962-2017', fax: '089-962-7591', website: 'http://www.kachizuru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'かち鶴', kana: 'かちづる', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '協和酒造', kana: 'きょうわしゅぞう')
address_attrs = { prefecture_code: 38, city: '伊予郡', street_address: '砥部町大南400', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-962-2717', fax: '089-962-7788', website: 'https://www.hatsuyukihai.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初雪盃', kana: 'はつゆきはい', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '佐々木酒造', kana: 'ささきしゅぞう')
address_attrs = { prefecture_code: 38, city: '伊予郡', street_address: '砥部町総津785', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-969-2005', fax: '089-969-2605', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八重菊', kana: 'やえぎく', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '武智酒店', kana: 'たけちさけみせ')
address_attrs = { prefecture_code: 38, city: '伊予郡', street_address: '松前町北黒田816', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-984-1037', fax: '089-984-1037', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '武士心', kana: 'ぶしごころ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '酒六酒造', kana: 'さかろくしゅぞう')
address_attrs = { prefecture_code: 38, city: '喜多郡', street_address: '内子町内子3279-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0893-44-3054', fax: '0893-44-3140', website: 'http://www.sakaroku-syuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '内子座', kana: 'うちこざ', company: c)
Brand.find_or_create_by!(name: '一刀両断', kana: 'いっとうりょうだん', company: c)
Brand.find_or_create_by!(name: '七星剣', kana: 'しちせいけん', company: c)
Brand.find_or_create_by!(name: '京ひな', kana: 'きょうひな', company: c)
Brand.find_or_create_by!(name: '隠し剣', kana: 'かくしけん', company: c)
Brand.find_or_create_by!(name: '吹毛剣', kana: 'すいもうけん', company: c)
Brand.find_or_create_by!(name: 'mar 京ひな', kana: 'まーる', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '近藤酒造', kana: 'こんどうしゅぞう')
address_attrs = { prefecture_code: 38, city: '新居浜市', street_address: '新須賀町1-11-46', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0897-33-1177', fax: '0897-37-3351', website: 'http://www.kondousyuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '群青', kana: 'ぐんじょう', company: c)
Brand.find_or_create_by!(name: '銅山こそあなた', kana: 'たからこそあなた', company: c)
Brand.find_or_create_by!(name: '華姫桜', kana: 'はなひめさくら', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '蔵本屋本店', kana: 'くらもとやほんてん')
address_attrs = { prefecture_code: 38, city: '西条市', street_address: '氷見乙1785', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0897-57-9900', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '行光', kana: 'ゆきみつ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '石鎚酒造', kana: 'いしづちしゅぞう')
address_attrs = { prefecture_code: 38, city: '西条市', street_address: '氷見丙402-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0897-57-8000', fax: '0897-57-8811', website: 'https://www.ishizuchi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '石鎚', kana: 'いしづち', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '八木酒造部', kana: 'やぎしゅぞうぶ')
address_attrs = { prefecture_code: 38, city: '今治市', street_address: '旭町3-3-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0898-22-6700', fax: '0898-33-0276', website: 'http://www.yamatan.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山丹正宗', kana: 'やまたんまさむね', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '後藤酒造', kana: 'ごとうしゅぞう')
address_attrs = { prefecture_code: 38, city: '大洲市', street_address: '八多喜町100', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0893-26-0009', fax: '0893-26-1155', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'きた美人', kana: 'きたびじん', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '千代の亀酒造', kana: 'ちよのかめしゅぞう')
address_attrs = { prefecture_code: 38, city: '喜多郡', street_address: '内子町平岡甲1294番地', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0893-44-2201', fax: '0893-43-1036', website: 'http://www.chiyonokame.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千代の亀', kana: 'ちよのかめ', company: c)
Brand.find_or_create_by!(name: '媛人 A/END', kana: 'えんど', company: c)
Brand.find_or_create_by!(name: 'mar 千代の亀', kana: 'まーる', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '梅美人酒造', kana: 'うめびじんしゅぞう')
address_attrs = { prefecture_code: 38, city: '八幡浜市', street_address: '1557-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0894-22-0312', fax: '0894-22-0712', website: 'https://umebijin.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '梅美人', kana: 'うめびじん', company: c)
Brand.find_or_create_by!(name: '鷹雄', kana: 'たかお', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '桐万長酒造', kana: 'きりまんちょうしゅぞう')
address_attrs = { prefecture_code: 38, city: '八幡浜市', street_address: '保内町川之石3-11-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0894-36-0146', fax: '0894-36-1231', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桐万長', kana: 'きりまんちょう', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '松田酒造', kana: 'まつだしゅぞう')
address_attrs = { prefecture_code: 38, city: '西宇和郡', street_address: '伊方町湊浦1003-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0894-38-1111', fax: '0894-38-1110', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '佐田岬', kana: 'さだみさき', company: c)
Brand.find_or_create_by!(name: '宮乃舞', kana: 'みやのまい', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '小泉酒造', kana: 'こいずみしゅぞう')
address_attrs = { prefecture_code: 38, city: '八幡浜市', street_address: '広瀬2-4-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0894-22-0170', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '鯉の勢', kana: 'こいのせ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '川亀酒造', kana: 'かわかめしゅぞう')
address_attrs = { prefecture_code: 38, city: '八幡浜市', street_address: '五反田2-4-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0894-22-0315', fax: '0894-22-0953', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '川亀', kana: 'かわかめ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '元見屋酒店', kana: 'もとみやさけてん')
address_attrs = { prefecture_code: 38, city: '西予市', street_address: '宇和町卯之町3-88', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0894-62-0036', fax: '0894-62-5656', website: 'http://www.motomiya.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '開明', kana: 'かいめい', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '宇都宮酒造', kana: 'うつのみやしゅぞう')
address_attrs = { prefecture_code: 38, city: '西予市', street_address: '宇和町卯之町4-254', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0894-62-0117', fax: '0894-62-0117', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千鳥', kana: 'ちどり', company: c)
Brand.find_or_create_by!(name: '花神', kana: 'かしん', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '最進酒造', kana: 'さいしんしゅぞう')
address_attrs = { prefecture_code: 38, city: '西予市', street_address: '宇和町卯之町4-332', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0894-62-0223', fax: '0894-62-0396', website: 'http://www9.ocn.ne.jp/~ikedaya', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '玉川', kana: 'たまがわ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '緒方酒造', kana: 'おがたしゅぞう')
address_attrs = { prefecture_code: 38, city: '西予市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '緒方洪庵', kana: 'おがたこうあん', company: c)
Brand.find_or_create_by!(name: '児島惟謙', kana: 'こじまこれかた', company: c)
Brand.find_or_create_by!(name: '緒方惟貞', kana: 'おがたこれさだ', company: c)
Brand.find_or_create_by!(name: '東洋', kana: 'とうよう', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '養老酒造', kana: 'ようろうしゅぞう')
address_attrs = { prefecture_code: 38, city: '大洲市', street_address: '肱川町山鳥坂49', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0893-34-2352', fax: '0893-34-2390', website: 'https://yoroshuzo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '風の里', kana: 'かぜのさと', company: c)
Brand.find_or_create_by!(name: '共', kana: 'とも', company: c)
Brand.find_or_create_by!(name: '歌麿', kana: 'うたまろ', company: c)
Brand.find_or_create_by!(name: '鵜洲', kana: 'うしゅう', company: c)
Brand.find_or_create_by!(name: '叶川', kana: 'かのがわ', company: c)
Brand.find_or_create_by!(name: '養老', kana: 'ようろう', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '中城本家酒造', kana: 'なかしろほんけしゅぞう')
address_attrs = { prefecture_code: 38, city: '西予市', street_address: '城川町嘉喜尾1319', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0894-82-0146', fax: '0894-82-0074', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '城川郷', kana: 'しろかわごう', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '名門サカイ', kana: 'めいもんさかい')
address_attrs = { prefecture_code: 38, city: '宇和島市', street_address: '高串2-1045', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0895-25-5533', fax: '0895-25-5535', website: 'http://www.meimon.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '名門', kana: 'めいもん', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '西本酒造', kana: 'にしもとしゅぞう')
address_attrs = { prefecture_code: 38, city: '宇和島市', street_address: '三間町宮野下855', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0895-58-2008', fax: '0895-58-2018', website: 'http://toranoo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '虎の尾', kana: 'とらのお', company: c)
Brand.find_or_create_by!(name: '大番', kana: 'おおばん', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '正木正光酒造場', kana: 'まさきまさみつしゅぞうじょう')
address_attrs = { prefecture_code: 38, city: '北宇和郡', street_address: '松野町松丸178', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0895-42-1128', fax: '0895-42-1129', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '野武士', kana: 'のぶし', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '赤松本家酒造', kana: 'あかまつほんけしゅぞう')
address_attrs = { prefecture_code: 38, city: '宇和島市', street_address: '津島町上畑地甲1502', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0895-32-2727', fax: '0895-32-6216', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '泰山', kana: 'たいざん', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '小西酒造場', kana: 'こにししゅぞうじょう')
address_attrs = { prefecture_code: 38, city: '南宇和郡', street_address: '愛南町蓮乗寺3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0895-72-0019', fax: '0895-72-0019', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '誠心', kana: 'せいしん', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '今村酒造', kana: 'いまむらしゅぞう')
address_attrs = { prefecture_code: 38, city: '四国中央市', street_address: '上分町742-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0896-58-3011', fax: '0896-58-1939', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '豊稔', kana: 'ほうねん', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '梅錦山川', kana: 'うめにしきやまかわ')
address_attrs = { prefecture_code: 38, city: '四国中央市', street_address: '金田町金川14', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0896-58-1211', fax: '0896-58-3171', website: 'https://www.umenishiki.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '山川流', kana: 'やまかわりゅう', company: c)
Brand.find_or_create_by!(name: '酒屋の女房の盗み酒', kana: 'さかやのにょうぼうのぬすみざけ', company: c)
Brand.find_or_create_by!(name: '梅錦', kana: 'うめにしき', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '篠永酒造', kana: 'しのながしゅぞう')
address_attrs = { prefecture_code: 38, city: '四国中央市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '森の翠', kana: 'もりのみどり', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '首藤酒造', kana: 'すとうしゅぞう')
address_attrs = { prefecture_code: 38, city: '西条市', street_address: '小松町大頭甲312-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0898-72-2720', fax: '0898-72-3918', website: 'http://sukigokoro.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '寿喜心', kana: 'すきごころ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '武田酒造', kana: 'たけだしゅぞう')
address_attrs = { prefecture_code: 38, city: '西条市', street_address: '三芳1507', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0898-66-5002', fax: '0898-66-2577', website: 'http://www.yamatogokoro.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '媛一会', kana: 'ひめいちえ', company: c)
Brand.find_or_create_by!(name: '日本心', kana: 'やまとごころ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '秋川酒造', kana: 'あきかわしゅぞう')
address_attrs = { prefecture_code: 38, city: '西条市', street_address: '大野150', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0898-66-5014', fax: '0898-66-6470', website: 'http://www5b.biglobe.ne.jp/~sake', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御国鶴', kana: 'みくにつる', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '成龍酒造', kana: 'せいりょうしゅぞう')
address_attrs = { prefecture_code: 38, city: '西条市', street_address: '周布1301-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0898-68-8566', fax: '0898-68-7103', website: 'http://www.seiryosyuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '賀儀屋', kana: 'かぎや', company: c)
Brand.find_or_create_by!(name: '御代栄', kana: 'みよさかえ', company: c)
Brand.find_or_create_by!(name: '成龍然', kana: 'せいりょうぜん', company: c)
Brand.find_or_create_by!(name: '宵待媛', kana: 'よいまちひめ', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '森松酒造場', kana: 'もりまつしゅぞうじょう')
address_attrs = { prefecture_code: 38, city: '今治市', street_address: '菊間町浜890-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0898-54-2020', fax: '0898-54-2020', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '菊間美人', kana: 'きくまびじん', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '桜うづまき酒造', kana: 'さくらうづまきしゅぞう')
address_attrs = { prefecture_code: 38, city: '松山市', street_address: '八反地71', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-992-1011', website: 'http://www.sakurauzumaki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '桜うづまき', kana: 'さくらうづまき', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '雪雀酒造', kana: 'ゆきすずめしゅぞう')
address_attrs = { prefecture_code: 38, city: '松山市', street_address: '柳原123', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-992-0025', fax: '089-993-0052', website: 'https://yukisuzume.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'mar 雪雀', kana: 'まーる', company: c)
Brand.find_or_create_by!(name: '雪雀', kana: 'ゆきすずめ', company: c)
Brand.find_or_create_by!(name: '雀正宗', kana: 'すずめまさむね', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '徳本酒造', kana: 'とくもとしゅぞう')
address_attrs = { prefecture_code: 38, city: '伊予市', street_address: '灘町12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-982-0030', fax: '089-982-0975', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '初鷹', kana: 'はつたか', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '奥嶋酒造', kana: 'おくしましゅぞう')
address_attrs = { prefecture_code: 38, city: '伊予市', street_address: '双海町上灘5711', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '089-986-0028', fax: '089-986-0064', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '島錦', kana: 'しまにしき', company: c)


c = Company.in_prefecture(38).find_or_create_by!(name: '濱田酒造', kana: 'はまだしゅぞう')
address_attrs = { prefecture_code: 38, city: '宇和島市', street_address: '吉田町法花津2-156', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0895-52-1002', fax: '0895-52-1002', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '寿', kana: 'ことぶき', company: c)
