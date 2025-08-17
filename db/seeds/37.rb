c = Company.in_prefecture(37).find_or_create_by!(name: '池田酒造', kana: 'いけだしゅぞう')
address_attrs = { prefecture_code: 37, city: '高松市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '楽心', kana: 'らくしん', company: c)


c = Company.in_prefecture(37).find_or_create_by!(name: '綾菊酒造', kana: 'あやきくしゅぞう')
address_attrs = { prefecture_code: 37, city: '綾歌郡', street_address: '綾川町山田下3393-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '087-878-2222', fax: '087-878-1655', website: 'https://www.ayakiku.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '国重', kana: 'くにしげ', company: c)
Brand.find_or_create_by!(name: '綾菊', kana: 'あやきく', company: c)


c = Company.in_prefecture(37).find_or_create_by!(name: '勇心酒造', kana: 'ゆうしんしゅぞう')
address_attrs = { prefecture_code: 37, city: '綾歌郡', street_address: '綾川町小野2088-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '087-876-4111', fax: '087-876-4188', website: 'http://www.yushin-brewer.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'リセノワール', kana: 'りせのわーる', company: c)
Brand.find_or_create_by!(name: '勇心', kana: 'ゆうしん', company: c)


c = Company.in_prefecture(37).find_or_create_by!(name: '岡田酒造', kana: 'おかだしゅぞう')
address_attrs = { prefecture_code: 37, city: '丸亀市', street_address: '綾歌町岡田下499-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0877-86-3012', fax: '0877-86-3012', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '国粋', kana: 'こくすい', company: c)
Brand.find_or_create_by!(name: '讃岐路', kana: 'さぬきじ', company: c)


c = Company.in_prefecture(37).find_or_create_by!(name: '小豆島酒造', kana: 'しょうどしましゅぞう')
address_attrs = { prefecture_code: 37, city: '小豆郡', street_address: '小豆島町馬木甲1010-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0879-61-2077', fax: '0879-61-2113', website: 'https://www.morikuni.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'ふふふ。', kana: 'ふふふ', company: c)
Brand.find_or_create_by!(name: '森', kana: 'もり', company: c)
Brand.find_or_create_by!(name: '島', kana: 'しま', company: c)
Brand.find_or_create_by!(name: '磯松', kana: 'いそまつ', company: c)
Brand.find_or_create_by!(name: '酒翁', kana: 'しゅおう', company: c)
Brand.find_or_create_by!(name: 'ふわふわ。', kana: 'ふわふわ', company: c)
Brand.find_or_create_by!(name: 'うとうと。', kana: 'うとうと', company: c)
Brand.find_or_create_by!(name: 'びびび。', kana: 'びびび', company: c)
Brand.find_or_create_by!(name: '小豆島の輝', kana: 'しょうどしまのかがやき', company: c)
Brand.find_or_create_by!(name: 'ホシガジョウノソラ', kana: 'ほしがじょうのそら', company: c)
Brand.find_or_create_by!(name: 'はちはち', kana: 'はちはち', company: c)


c = Company.in_prefecture(37).find_or_create_by!(name: '西野金陵', kana: 'にしのきんりょう')
address_attrs = { prefecture_code: 37, city: '仲多度郡', street_address: '琴平町623', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0877-73-4133', fax: '0877-33-4139', website: 'https://www.nishino-kinryo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '契', kana: 'ちぎり', company: c)
Brand.find_or_create_by!(name: '月中天', kana: 'げっちゅうてん', company: c)
Brand.find_or_create_by!(name: '金陵', kana: 'きんりょう', company: c)
Brand.find_or_create_by!(name: '金戎', kana: 'きんえびす', company: c)


c = Company.in_prefecture(37).find_or_create_by!(name: '丸尾本店', kana: 'まるおほんてん')
address_attrs = { prefecture_code: 37, city: '仲多度郡', street_address: '琴平町榎井93', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0877-75-2045', fax: '0877-75-2116', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '誉凱陣', kana: 'ほまれがいじん', company: c)
Brand.find_or_create_by!(name: '悦凱陣', kana: 'よろこびがいじん', company: c)
Brand.find_or_create_by!(name: '凱陣', kana: 'がいじん', company: c)


c = Company.in_prefecture(37).find_or_create_by!(name: '川鶴酒造', kana: 'かわつるしゅぞう')
address_attrs = { prefecture_code: 37, city: '観音寺市', street_address: '本大町836', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0875-25-0001', fax: '0875-25-2487', website: 'https://kawatsuru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '琴弾正宗', kana: 'ことひきまさむね', company: c)
Brand.find_or_create_by!(name: '讃美', kana: 'さんび', company: c)
Brand.find_or_create_by!(name: '美酒和楽', kana: 'びしゅわらく', company: c)
Brand.find_or_create_by!(name: '大瀬戸', kana: 'おおせと', company: c)
Brand.find_or_create_by!(name: '川鶴', kana: 'かわつる', company: c)


c = Company.in_prefecture(37).find_or_create_by!(name: '木村中田酒造', kana: 'きむらなかたしゅぞう')
address_attrs = { prefecture_code: 37, city: 'さぬき市', street_address: '津田町津田1049-2', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0879-42-3323', fax: '0879-42-4007', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '悦の司', kana: 'よろこびのつかさ', company: c)
