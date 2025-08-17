c = Company.in_prefecture(43).find_or_create_by!(name: '山都酒造', kana: 'やまとしゅぞう')
address_attrs = { prefecture_code: 43, city: '上益城郡', street_address: '山都町浜町60-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0967-72-0003', fax: '0967-72-0501', website: 'https://www.morinosakagura.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '酒一番', kana: 'さけいちばん', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '熊本県酒造研究所', kana: 'くまもとけんしゅぞうけんきゅうしょ')
address_attrs = { prefecture_code: 43, city: '熊本市', street_address: '島崎1-7-20', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '096-352-4921', fax: '096-352-4949', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '香露', kana: 'こうろ', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '千代の園酒造', kana: 'ちよのそのしゅぞう')
address_attrs = { prefecture_code: 43, city: '山鹿市', street_address: '山鹿1782', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0968-43-2161', fax: '0968-44-7300', website: 'https://www.chiyonosono.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '熊本神力', kana: 'くまもとしんりき', company: c)
Brand.find_or_create_by!(name: '泰斗', kana: 'たいと', company: c)
Brand.find_or_create_by!(name: '産山村', kana: 'うぶやまむら', company: c)
Brand.find_or_create_by!(name: '朱盃', kana: 'しゅはい', company: c)
Brand.find_or_create_by!(name: '黒森峰', kana: 'くろもりみね', company: c)
Brand.find_or_create_by!(name: '千代の園', kana: 'ちよのその', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '花の香酒造', kana: 'はなのかしゅぞう')
address_attrs = { prefecture_code: 43, city: '玉名郡', street_address: '和水町西吉地2226-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0968-34-2055', fax: '0968-34-2644', website: 'https://www.hananoka.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '神田', kana: 'じんでん', company: c)
Brand.find_or_create_by!(name: '花の香', kana: 'はなのか', company: c)
Brand.find_or_create_by!(name: '雪花', kana: 'せっか', company: c)
Brand.find_or_create_by!(name: '産土', kana: 'うぶすな', company: c)
Brand.find_or_create_by!(name: '穂増', kana: 'ほませ', company: c)
Brand.find_or_create_by!(name: '香子', kana: 'かばしこ', company: c)
Brand.find_or_create_by!(name: '花火', kana: 'はなび', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '菊の城本舗', kana: 'きくのしろほんぽ')
address_attrs = { prefecture_code: 43, city: '菊池市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '菊の城', kana: 'きくのしろ', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '美少年', kana: 'びしょうねん')
address_attrs = { prefecture_code: 43, city: '菊池市', street_address: '四町分免兎原1030', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0968-27-3131', fax: '0968-27-3133', website: 'https://bishonen.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '学び舎', kana: 'まなびや', company: c)
Brand.find_or_create_by!(name: '菊池', kana: 'きくち', company: c)
Brand.find_or_create_by!(name: '青天井', kana: 'あおてんじょう', company: c)
Brand.find_or_create_by!(name: '宵美人', kana: 'よいびじん', company: c)
Brand.find_or_create_by!(name: '杢左衛門', kana: 'もくざえもん', company: c)
Brand.find_or_create_by!(name: '美少年', kana: 'びしょうねん', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '通潤酒造', kana: 'つうじゅんしゅぞう')
address_attrs = { prefecture_code: 43, city: '上益城郡', street_address: '山都町浜町54', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0967-72-1177', fax: '0967-72-0421', website: 'http://tuzyun.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '通潤', kana: 'つうじゅん', company: c)
Brand.find_or_create_by!(name: '蝉', kana: 'せみ', company: c)
Brand.find_or_create_by!(name: '雲雀', kana: 'ひばり', company: c)
Brand.find_or_create_by!(name: '蛍丸', kana: 'ほたるまる', company: c)
Brand.find_or_create_by!(name: 'Soigner', kana: 'そわにえ', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '瑞鷹酒造', kana: 'ずいようしゅぞう')
address_attrs = { prefecture_code: 43, city: '熊本市', street_address: '川尻4-6-67', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '096-357-9671', fax: '096-357-8963', website: 'https://www.zuiyo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '無印良酒', kana: 'むじるしりょうしゅ', company: c)
Brand.find_or_create_by!(name: '瑞鷹', kana: 'ずいよう', company: c)
Brand.find_or_create_by!(name: '熊本城', kana: 'くまもとじょう', company: c)
Brand.find_or_create_by!(name: '菜々', kana: 'さいさい', company: c)
Brand.find_or_create_by!(name: '寒吹雪', kana: 'かんふぶき', company: c)
Brand.find_or_create_by!(name: '崇薫', kana: 'すうくん', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '堤酒造', kana: 'つつみしゅぞう')
address_attrs = { prefecture_code: 43, city: '球磨郡', street_address: 'あさぎり町岡原南390-4', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0966-45-0264', website: 'https://tsutsumi-syuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'サケベルムース', kana: 'さけべるむーす', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '山村酒造', kana: 'やまむらしゅぞう')
address_attrs = { prefecture_code: 43, city: '阿蘇郡', street_address: '高森町高森1645', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0967-62-0001', fax: '0967-62-1820', website: 'http://shop.reizan.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あその', kana: 'あその', company: c)
Brand.find_or_create_by!(name: 'れいざん', kana: 'れいざん', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '室原酒造', kana: 'むろはらしゅぞう')
address_attrs = { prefecture_code: 43, city: '阿蘇郡', street_address: '南小国町赤馬場1862', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0967-42-0030', fax: '0967-42-1373', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '和田志ら露', kana: 'わだしらつゆ', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '河津酒造', kana: 'かわづしゅぞう')
address_attrs = { prefecture_code: 43, city: '阿蘇郡', street_address: '小国町宮原1734-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0967-46-2311', fax: '0967-46-2313', website: 'https://www.kawazu-syuzou.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'あきげしき', kana: 'あきげしき', company: c)
Brand.find_or_create_by!(name: '蓬莱', kana: 'ほうらい', company: c)
Brand.find_or_create_by!(name: '玉滴', kana: 'たましずく', company: c)
Brand.find_or_create_by!(name: '原', kana: 'げん', company: c)
Brand.find_or_create_by!(name: '花雪', kana: 'はなゆき', company: c)
Brand.find_or_create_by!(name: '七歩蛇', kana: 'しちほだ', company: c)
Brand.find_or_create_by!(name: '秋水', kana: 'しゅうすい', company: c)


c = Company.in_prefecture(43).find_or_create_by!(name: '亀萬酒造', kana: 'かめまんしゅぞう')
address_attrs = { prefecture_code: 43, city: '葦北郡', street_address: '津奈木町津奈木1192', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0966-78-2001', fax: '0966-78-3877', website: 'https://www.kameman.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萬坊', kana: 'まんぼう', company: c)
Brand.find_or_create_by!(name: '今茲', kana: 'こんじ', company: c)
Brand.find_or_create_by!(name: 'しゅわり', kana: 'しゅわり', company: c)
Brand.find_or_create_by!(name: '緋穂', kana: 'ひすい', company: c)
Brand.find_or_create_by!(name: '亀萬', kana: 'かめまん', company: c)
