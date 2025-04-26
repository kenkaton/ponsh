#!/usr/bin/env ruby

def convert_company_data(line)
  return line unless line.start_with?('c = Company.create_or_find_by!')

  # 既存の属性を抽出
  attrs = line.match(/name: '([^']*)', kana: '([^']*)'(?:, prefecture_code: (\d+))?(?:, city: '([^']*)')?(?:, address: '([^']*)')?(?:, street_address: '([^']*)')?(?:, tel: '([^']*)')?(?:, fax: '([^']*)')?(?:, website: '([^']*)')?/)
  return line unless attrs

  name = attrs[1]
  kana = attrs[2]
  prefecture_code = attrs[3]
  city = attrs[4]
  address = attrs[5]
  street_address = attrs[6]
  tel = attrs[7]
  fax = attrs[8]
  website = attrs[9]

  # 新しいフォーマットで出力
  output = []
  output << "c = Company.create_or_find_by!(name: '#{name}', kana: '#{kana}')"

  # address_attrsを生成
  address_parts = []
  address_parts << "prefecture_code: #{prefecture_code}" if prefecture_code
  address_parts << "city: '#{city}'" if city
  address_parts << "street_address: '#{address}'" if address
  address_parts << "street_address: '#{street_address}'" if street_address
  address_parts << "addressable_type: 'Company'"

  if address_parts.size > 1  # addressable_type以外の属性がある場合のみ出力
    output << "address_attrs = { #{address_parts.join(', ')} }"
    output << "c.address || c.create_address!(address_attrs)"
  end

  # contact_attrsを生成
  contact_parts = []
  contact_parts << "tel: '#{tel}'" if tel && tel != ''
  contact_parts << "fax: '#{fax}'" if fax && fax != ''
  contact_parts << "website: '#{website}'" if website && website != ''
  contact_parts << "contactable_type: 'Company'"

  if contact_parts.size > 1  # contactable_type以外の属性がある場合のみ出力
    output << "contact_attrs = { #{contact_parts.join(', ')} }"
    output << "c.contact || c.create_contact!(contact_attrs)"
  end

  output.join("\n")
end

def process_file(input_file, output_file)
  return unless File.exist?(input_file)

  # ファイルを処理
  content = File.read(input_file)
  new_content = ""
  previous_was_company = false

  content.lines.each do |line|
    line = line.strip
    next if line.empty?

    if line.start_with?('c = Company.create_or_find_by!')
      new_content << "\n\n" if !new_content.empty?
      converted = convert_company_data(line)
      new_content << converted << "\n"
      previous_was_company = true
    elsif line.start_with?('CompanyStatusHistory.create!') || line.start_with?('Brand.find_or_create_by!')
      new_content << line << "\n"
      previous_was_company = false
    end
  end

  # 結果を新しいファイルに書き出し
  File.write(output_file, new_content.strip + "\n")
  puts "Conversion completed. New file created at #{output_file}"
end

# 07から47までのファイルを処理
(5..47).each do |num|
  input_file = "db/ex_seeds/%02d.rb" % num
  output_file = "db/seeds/%02d_new.rb" % num

  if File.exist?(input_file)
    puts "Processing #{input_file}..."
    process_file(input_file, output_file)
  else
    puts "Skipping #{input_file} (file not found)"
  end
end
