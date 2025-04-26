c = Company.create_or_find_by!(name: '泰石酒造', kana: 'たいこくしゅぞう', prefecture_code: 47, city: 'うるま市', address: '平良川90', tel: '098-973-3211', fax: '098-974-1857', website: 'https://www.taikokushuzo.com')
Brand.find_or_create_by!(name: '黎明', kana: 'れいめい', company: c)
Brand.find_or_create_by!(name: '美ら酒', kana: 'ちゅらさき', company: c)
