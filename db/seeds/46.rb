c = Company.in_prefecture(46).find_or_create_by!(name: '濱田酒造 薩摩金山蔵', kana: 'はまだしゅぞう さつまきんざんぐら')
address_attrs = { prefecture_code: 46, city: 'いちき串木野市', street_address: '野下13665', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0996-21-2110', fax: '0996-21-2511', website: 'https://www.hamadasyuzou.co.jp/kinzan', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '薩州正宗', kana: 'さっしゅうまさむね', company: c)


c = Company.in_prefecture(46).find_or_create_by!(name: '西酒造', kana: 'にししゅぞう')
address_attrs = { prefecture_code: 46, city: '日置市', street_address: '吹上町与倉4970-17', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '099-296-4627', fax: '099-296-4260', website: 'https://www.nishi-shuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '天賦', kana: 'てんぶ', company: c)
