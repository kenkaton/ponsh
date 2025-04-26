#!/usr/bin/env ruby
require 'fileutils'

# db/ex_seeds/ ディレクトリを作成
FileUtils.mkdir_p('db/ex_seeds')

# db/seeds/ 配下のファイルを処理
Dir.glob('db/seeds/*.rb').each do |file|
  # _new.rb で終わらないファイルのみを処理
  next if file.end_with?('_new.rb')

  # 移動先のパスを生成
  destination = file.gsub('db/seeds/', 'db/ex_seeds/')

  # ファイルを移動
  FileUtils.mv(file, destination)
  puts "Moved #{file} to #{destination}"
end
