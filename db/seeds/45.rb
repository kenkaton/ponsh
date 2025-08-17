c = Company.in_prefecture(45).find_or_create_by!(name: '雲海酒造', kana: 'うんかいしゅぞう')
address_attrs = { prefecture_code: 45, city: '宮崎市', street_address: '昭栄町45-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0985-23-7890', website: 'http://www.unkai.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '登喜一', kana: 'ときいち', company: c)
Brand.find_or_create_by!(name: '綾錦', kana: 'あやにしき', company: c)
Brand.find_or_create_by!(name: '我楽', kana: 'がらく', company: c)
Brand.find_or_create_by!(name: '初御代', kana: 'はつみよ', company: c)
Brand.find_or_create_by!(name: '菊初御代', kana: 'きくはつみよ', company: c)


c = Company.in_prefecture(45).find_or_create_by!(name: '千徳酒造', kana: 'せんとくしゅぞう')
address_attrs = { prefecture_code: 45, city: '延岡市', street_address: '大瀬町2-1-8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0982-32-2024', fax: '0982-32-2169', website: 'http://www.sentoku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千徳', kana: 'せんとく', company: c)
Brand.find_or_create_by!(name: '夢の中まで', kana: 'ゆめのなかまで', company: c)
