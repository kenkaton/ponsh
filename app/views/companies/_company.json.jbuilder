json.extract! company, :id, :public_id, :name, :kana, :name_en, :prefecture_code, :city, :address, :tel, :fax, :website, :detail, :created_at, :updated_at
json.url company_url(company, format: :json)
