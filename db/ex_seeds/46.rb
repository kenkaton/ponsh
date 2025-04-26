c = Company.create_or_find_by!(name: '濱田酒造 薩摩金山蔵', kana: 'はまだしゅぞう さつまきんざんぐら', prefecture_code: 46, city: 'いちき串木野市', address: '野下13665', tel: '0996-21-2110', fax: '0996-21-2511', website: 'https://www.hamadasyuzou.co.jp/kinzan')
Brand.find_or_create_by!(name: '薩州正宗', kana: 'さっしゅうまさむね', company: c)
c = Company.create_or_find_by!(name: '西酒造', kana: 'にししゅぞう', prefecture_code: 46, city: '日置市', address: '吹上町与倉4970-17', tel: '099-296-4627', fax: '099-296-4260', website: 'https://www.nishi-shuzo.co.jp')
Brand.find_or_create_by!(name: '天賦', kana: 'てんぶ', company: c)
