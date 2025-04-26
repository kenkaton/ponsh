#!/usr/bin/env ruby
require 'open3'

# db/seeds/ 配下のファイルを取得し、数字順にソート
seed_files = Dir.glob('db/seeds/*.rb').sort_by { |f| f.scan(/\d+/).first.to_i }

seed_files.each do |file|
  puts "\n=== Running #{file} ==="
  command = "bin/rails runner #{file}"

  # コマンドを実行し、リアルタイムで出力を表示
  Open3.popen2e(command) do |stdin, stdout_and_stderr, wait_thread|
    while line = stdout_and_stderr.gets
      puts line
    end

    # 終了ステータスをチェック
    exit_status = wait_thread.value
    if exit_status.success?
      puts "=== Successfully completed #{file} ==="
    else
      puts "=== Failed to run #{file} with status #{exit_status.exitstatus} ==="
      exit exit_status.exitstatus
    end
  end
end

puts "\nAll seed files have been processed successfully!"
