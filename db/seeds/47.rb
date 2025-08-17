c = Company.in_prefecture(47).find_or_create_by!(name: '泰石酒造', kana: 'たいこくしゅぞう')
address_attrs = { prefecture_code: 47, city: 'うるま市', street_address: '平良川90', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '098-973-3211', fax: '098-974-1857', website: 'https://www.taikokushuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '黎明', kana: 'れいめい', company: c)
Brand.find_or_create_by!(name: '美ら酒', kana: 'ちゅらさき', company: c)
