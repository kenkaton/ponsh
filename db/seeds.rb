#!/usr/bin/env ruby
# frozen_string_literal: true

# 基本的なデータを読み込む
Dir[Rails.root.join('db/seeds/*.rb')].sort.each do |file|
  puts "Loading #{file}..."
  load file
end

# コンテスト関連のデータを読み込む
Dir[Rails.root.join('db/seeds/contests/*.rb')].sort.each do |file|
  puts "Loading contest data from #{file}..."
  load file
end

puts "Finished loading seeds."
