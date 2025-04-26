c = Company.create_or_find_by!(name: '太冠酒造', kana: 'たいかんしゅぞう')
address_attrs = { prefecture_code: 19, city: '南アルプス市', street_address: '上宮地57', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '055-282-1116', fax: '055-283-8821', website: 'http://www.taikan-y.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '太冠', kana: 'たいかん', company: c)


c = Company.create_or_find_by!(name: '横内酒造店', kana: 'よこうちしゅぞうてん')
address_attrs = { prefecture_code: 19, city: '南アルプス市', street_address: '上宮地57', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '055-282-0038', fax: '055-282-7444', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '榊正宗', kana: 'さかきまさむね', company: c)


c = Company.create_or_find_by!(name: '萬屋醸造店', kana: 'よろずやじょうぞうてん')
address_attrs = { prefecture_code: 19, city: '南巨摩郡', street_address: '富士川町青柳町1202-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0556-22-2103', fax: '0556-22-4245', website: 'https://www.shunnoten.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '春鶯囀', kana: 'しゅんのうてん', company: c)
Brand.find_or_create_by!(name: '本菱', kana: 'ほんびし', company: c)


c = Company.create_or_find_by!(name: '大久保酒造店', kana: 'おおくぼしゅぞうてん')
address_attrs = { prefecture_code: 19, city: '南巨摩郡', street_address: '富士川町大久保341', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0556-22-0227', fax: '0556-22-0240', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '梅が枝', kana: 'うめがえ', company: c)


c = Company.create_or_find_by!(name: '笹一酒造', kana: 'ささいちしゅぞう')
address_attrs = { prefecture_code: 19, city: '大月市', street_address: '笹子町吉久保26', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0554-25-2111', fax: '0554-25-2620', website: 'http://www.sasaichi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '拳王', kana: 'けんおう', company: c)
Brand.find_or_create_by!(name: '笹一', kana: 'ささいち', company: c)
Brand.find_or_create_by!(name: '旦', kana: 'だん', company: c)
Brand.find_or_create_by!(name: '木火土金水', kana: 'もっかどこんすい', company: c)


c = Company.create_or_find_by!(name: '井出醸造店', kana: 'いでじょうぞうてん')
address_attrs = { prefecture_code: 19, city: '南都留郡', street_address: '富士河口湖町船津8', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0555-72-0006', fax: '0555-72-6636', website: 'http://www.kainokaiun.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '與五右衛門', kana: 'よごえもん', company: c)
Brand.find_or_create_by!(name: '甲斐の開運', kana: 'かいのかいうん', company: c)


c = Company.create_or_find_by!(name: '養老酒造', kana: 'ようろうしゅぞう')
address_attrs = { prefecture_code: 19, city: '山梨市', street_address: '北567', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0553-22-0047', fax: '0553-22-9039', website: 'https://www.sakagura-kai.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '櫂', kana: 'かい', company: c)
Brand.find_or_create_by!(name: '養老', kana: 'ようろう', company: c)
Brand.find_or_create_by!(name: '玉笹', kana: 'たまささ', company: c)


c = Company.create_or_find_by!(name: '腕相撲酒造', kana: 'うでずもうしゅぞう')
address_attrs = { prefecture_code: 19, city: '笛吹市', street_address: '御坂町夏目原1374', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '055-262-3010', fax: '055-262-3175', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '御坂路', kana: 'みさかみち', company: c)
Brand.find_or_create_by!(name: '美和乃帝', kana: 'みわのみかど', company: c)
Brand.find_or_create_by!(name: '黒駒の勝蔵', kana: 'くろこまのかつぞう', company: c)
Brand.find_or_create_by!(name: '腕相撲', kana: 'うでずもう', company: c)


c = Company.create_or_find_by!(name: '武の井酒造', kana: 'たけのいしゅぞう')
address_attrs = { prefecture_code: 19, city: '北杜市', street_address: '高根町箕輪1450', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0551-47-2277', fax: '0551-47-2278', website: 'http://takenoishuzo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '青煌', kana: 'せいこう', company: c)
Brand.find_or_create_by!(name: '武の井', kana: 'たけのい', company: c)


c = Company.create_or_find_by!(name: '八巻酒造店', kana: 'やまきしゅぞうてん')
address_attrs = { prefecture_code: 19, city: '北杜市', street_address: '高根町下黒澤950', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0551-47-3130', fax: '0551-47-6130', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '甲斐男山', kana: 'かいおとこやま', company: c)


c = Company.create_or_find_by!(name: '山梨銘醸', kana: 'やまなしめいじょう')
address_attrs = { prefecture_code: 19, city: '北杜市', street_address: '白州町台ヶ原2283', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0551-35-2236', fax: '0551-35-2282', website: 'https://www.sake-shichiken.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '七賢人シリーズ', kana: 'しちけんじんシリーズ', company: c)
Brand.find_or_create_by!(name: '七賢 スパークリング', kana: 'しちけん すぱーくりんぐ', company: c)
Brand.find_or_create_by!(name: '七賢', kana: 'しちけん', company: c)


c = Company.create_or_find_by!(name: '谷櫻酒造', kana: 'たにざくらしゅぞう')
address_attrs = { prefecture_code: 19, city: '北杜市', street_address: '大泉町谷戸2037', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0551-38-2008', fax: '0551-38-2199', website: 'https://www.tanizakura.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '谷桜', kana: 'たにざくら', company: c)
Brand.find_or_create_by!(name: '北の杜', kana: 'きたのもり', company: c)
Brand.find_or_create_by!(name: '八ツのからっ風', kana: 'やつのからっかぜ', company: c)


c = Company.create_or_find_by!(name: '横山酒造店', kana: 'よこやましゅぞうてん')
address_attrs = { prefecture_code: 19, city: '南巨摩郡', street_address: '南部町南部8255', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0556-64-3211', fax: '0556-64-3790', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '日の出菊', kana: 'ひのでぎく', company: c)


c = Company.create_or_find_by!(name: '二葉屋酒造店', kana: 'ふたばやしゅぞうてん')
address_attrs = { prefecture_code: 19, city: '西八代郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '栴檀', kana: 'せんだん', company: c)
