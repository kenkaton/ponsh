c = Company.in_prefecture(16).find_or_create_by!(name: '富山酒造組合', kana: 'とやましゅぞうくみあい')
address_attrs = { prefecture_code: 16, city: '富山市', street_address: '丸の内2-2-10', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-425-1851', fax: '076-425-1857', website: 'http://www.toyama-sake.or.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富山ブレンド', kana: 'とやまぶれんど', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '有澤酒造店', kana: 'ありさわしゅぞうてん')
address_attrs = { prefecture_code: 16, city: '中新川郡', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '白緑', kana: 'しろみどり', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '富美菊酒造', kana: 'ふみぎくしゅぞう')
address_attrs = { prefecture_code: 16, city: '富山市', street_address: '百塚134-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-441-9594', fax: '076-442-6048', website: 'http://www.fumigiku.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '富美菊', kana: 'ふみぎく', company: c)
Brand.find_or_create_by!(name: '羽根屋', kana: 'はねや', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '白岩', kana: 'しらいわ')
address_attrs = { prefecture_code: 16, city: '中新川郡', street_address: '立山町白岩地区', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { website: 'https://iwa-sake.jp/ja', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'IWA', kana: 'いわ', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '桝田酒造店', kana: 'ますだしゅぞうてん')
address_attrs = { prefecture_code: 16, city: '富山市', street_address: '東岩瀬町269', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-437-9916', fax: '076-438-6763', website: 'http://www.masuizumi.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '満寿泉', kana: 'ますいずみ', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '若駒酒造場', kana: 'わかこましゅぞうじょう')
address_attrs = { prefecture_code: 16, city: '南砺市', street_address: '井波3601', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0763-82-7373', fax: '0763-82-7373', website: 'https://wakakoma.bsj.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '八乙女', kana: 'やおとめ', company: c)
Brand.find_or_create_by!(name: '弥久', kana: 'びきゅう', company: c)
Brand.find_or_create_by!(name: '木彫の響', kana: 'きぼりのおと', company: c)
Brand.find_or_create_by!(name: '萌', kana: 'めぐみ', company: c)
Brand.find_or_create_by!(name: '若駒', kana: 'わかこま', company: c)
Brand.find_or_create_by!(name: 'なまず御前', kana: 'なまずごぜん', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '黒田酒造', kana: 'くろだしゅぞう')
address_attrs = { prefecture_code: 16, city: '小矢部市', street_address: '西中323', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0766-67-1803', fax: '0766-67-4818', website: 'http://www.hokuichi.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '萬歳北一', kana: 'ばんざいほくいち', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '日本晴酒造', kana: 'にほんばれしゅぞう')
address_attrs = { prefecture_code: 16, city: '高岡市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '日本晴', kana: 'にほんばれ', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '清都酒造場', kana: 'きよとしゅぞうじょう')
address_attrs = { prefecture_code: 16, city: '高岡市', street_address: '京町12-12', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0766-22-0557', fax: '0766-25-0557', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勝駒', kana: 'かちこま', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '高澤酒造場', kana: 'たかざわしゅぞうじょう')
address_attrs = { prefecture_code: 16, city: '氷見市', street_address: '北大町18-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0766-72-0006', fax: '0766-72-2680', website: 'http://www1.cnh.ne.jp/akebono', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '曙', kana: 'あけぼの', company: c)
Brand.find_or_create_by!(name: '氷見初嵐', kana: 'はつあらし', company: c)
Brand.find_or_create_by!(name: '八代仙', kana: 'はったいせん', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '藤波酒造', kana: 'ふじなみしゅぞう')
address_attrs = { prefecture_code: 16, city: '氷見市', street_address: '', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
CompanyStatusHistory.create!(company: c, event_type: :status_change, business_status: :closed)
Brand.find_or_create_by!(name: '氷の舞', kana: 'こおりのまい', company: c)
Brand.find_or_create_by!(name: '藤波', kana: 'ふじなみ', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '千代鶴酒造', kana: 'ちよづるしゅぞう')
address_attrs = { prefecture_code: 16, city: '滑川市', street_address: '下梅沢360', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-475-0031', fax: '076-475-0040', website: 'http://www.chiyozuru.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '千代鶴', kana: 'ちよづる', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '魚津酒造', kana: 'うおづしゅぞう')
address_attrs = { prefecture_code: 16, city: '魚津市', street_address: '本江新町6-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0765-22-0134', fax: '0765-22-0289', website: 'http://uozushuzo.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '越中懐古', kana: 'えっちゅうかいこ', company: c)
Brand.find_or_create_by!(name: '蜃気楼の見える街', kana: 'しんきろうのみえるまち', company: c)
Brand.find_or_create_by!(name: '帆波', kana: 'ほなみ', company: c)
Brand.find_or_create_by!(name: '北洋', kana: 'ほくよう', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '皇国晴酒造', kana: 'みくにはれしゅぞう')
address_attrs = { prefecture_code: 16, city: '黒部市', street_address: '生地296', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0765-56-8028', fax: '0765-56-8027', website: 'http://www.mabotaki.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '巌瀬', kana: 'いわせ', company: c)
Brand.find_or_create_by!(name: '幻の瀧', kana: 'まぼろしのたき', company: c)
Brand.find_or_create_by!(name: '豪華生一本', kana: 'ごうかきいっぽん', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '銀盤酒造', kana: 'ぎんばんしゅぞう')
address_attrs = { prefecture_code: 16, city: '黒部市', street_address: '荻生4853-3', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0765-54-1181', fax: '0765-54-1183', website: 'http://www.ginban.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '剱岳', kana: 'つるぎたけ', company: c)
Brand.find_or_create_by!(name: '銀盤', kana: 'ぎんばん', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '林酒造場', kana: 'はやししゅぞうじょう')
address_attrs = { prefecture_code: 16, city: '下新川郡', street_address: '朝日町境1608', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0765-82-0384', fax: '0765-82-0717', website: 'http://www.hayashisyuzo.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '入善', kana: 'にゅうぜん', company: c)
Brand.find_or_create_by!(name: '黒部峡', kana: 'くろべきょう', company: c)
Brand.find_or_create_by!(name: '林', kana: 'はやし', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '戸出酒造', kana: 'といでしゅぞう')
address_attrs = { prefecture_code: 16, city: '高岡市', street_address: '戸出町3-8-7', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0766-63-0027', fax: '0766-63-0277', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '勝鬨', kana: 'かちどき', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '若鶴酒造', kana: 'わかつるしゅぞう')
address_attrs = { prefecture_code: 16, city: '砺波市', street_address: '三郎丸208', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0763-32-3032', fax: '0763-32-1251', website: 'http://www.wakatsuru.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '若鶴', kana: 'わかつる', company: c)
Brand.find_or_create_by!(name: '苗加屋', kana: 'のうかや', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '立山酒造', kana: 'たてやましゅぞう')
address_attrs = { prefecture_code: 16, city: '砺波市', street_address: '中野217', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0763-33-3330', fax: '0763-33-3585', website: 'https://www.sake-tateyama.com', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '連峰立山', kana: 'れんぽうたてやま', company: c)
Brand.find_or_create_by!(name: '銀嶺立山', kana: 'ぎんれいたてやま', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '吉江酒造', kana: 'よしえしゅぞう')
address_attrs = { prefecture_code: 16, city: '砺波市', street_address: '若草町5-5', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0763-32-2232', fax: '0763-32-6234', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '太刀山', kana: 'たちやま', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '成政酒造', kana: 'なりまさしゅぞう')
address_attrs = { prefecture_code: 16, city: '南砺市', street_address: '舘418', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0763-52-0204', fax: '0763-52-6485', website: 'https://www.narimasa.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '成政', kana: 'なりまさ', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '三笑楽酒造', kana: 'さんしょうらくしゅぞう')
address_attrs = { prefecture_code: 16, city: '南砺市', street_address: '上梨678', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '0763-66-2010', fax: '0763-66-2934', website: 'http://www.sansyouraku.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '三笑楽', kana: 'さんしょうらく', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '玉旭酒造', kana: 'たまあさひしゅぞう')
address_attrs = { prefecture_code: 16, city: '富山市', street_address: '八尾町東町2111', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-455-1331', fax: '076-455-1333', website: 'http://www.tamaasahi.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '月の密', kana: 'つきのみつ', company: c)
Brand.find_or_create_by!(name: '八男', kana: 'やつお', company: c)
Brand.find_or_create_by!(name: '玉旭', kana: 'たまあさひ', company: c)
Brand.find_or_create_by!(name: '咲いた咲いた', kana: 'さいたさいた', company: c)
Brand.find_or_create_by!(name: 'おわら娘', kana: 'おわらむすめ', company: c)
Brand.find_or_create_by!(name: 'さら宮', kana: 'さらみや', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '福鶴酒造', kana: 'ふくつるしゅぞう')
address_attrs = { prefecture_code: 16, city: '富山市', street_address: '八尾町西町2352', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-455-2727', fax: '076-455-2728', website: 'https://www.kazenobon.co.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: '風の盆', kana: 'かぜのぼん', company: c)
Brand.find_or_create_by!(name: '八王', kana: 'やつおう', company: c)
Brand.find_or_create_by!(name: '福鶴', kana: 'ふくつる', company: c)
Brand.find_or_create_by!(name: '國ノ泉', kana: 'くにいずみ', company: c)
Brand.find_or_create_by!(name: '1901', kana: 'いちきゅうまるいち', company: c)


c = Company.in_prefecture(16).find_or_create_by!(name: '吉乃友酒造', kana: 'よしのともしゅぞう')
address_attrs = { prefecture_code: 16, city: '富山市', street_address: '婦中町下井沢3285-1', addressable_type: 'Company' }
c.address || c.create_address!(address_attrs)
contact_attrs = { tel: '076-466-2308', fax: '076-466-3519', website: 'http://yoshinotomo.jp', contactable_type: 'Company' }
c.contact || c.create_contact!(contact_attrs)
Brand.find_or_create_by!(name: 'よしのとも', kana: 'よしのとも', company: c)
