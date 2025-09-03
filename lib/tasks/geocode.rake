require "csv"

namespace :geocode do
  desc "既存の住所データに対してGeocoding処理を実行"
  task existing_addresses: :environment do
    puts "Geocoding処理を開始します..."

    total_count = 0
    success_count = 0
    error_count = 0

    # GoogleMapモデルでaddressがあるが緯度経度が未設定のレコードを取得
    google_maps = GoogleMap.where(latitude: nil, longitude: nil)
                          .where.not(address: [ nil, "" ])

    puts "処理対象: #{google_maps.count}件"

    google_maps.find_each do |google_map|
      total_count += 1

      print "#{total_count}/#{google_maps.count}: #{google_map.address} ... "

      begin
        if google_map.geocode
          success_count += 1
          puts "成功 (#{google_map.latitude}, #{google_map.longitude})"
        else
          error_count += 1
          puts "失敗"
        end

        # レート制限を考慮して少し待機
        sleep(0.1)

      rescue => e
        error_count += 1
        puts "エラー: #{e.message}"
      end
    end

    puts "\n処理完了"
    puts "総数: #{total_count}件"
    puts "成功: #{success_count}件"
    puts "失敗: #{error_count}件"
    puts "成功率: #{total_count > 0 ? (success_count.to_f / total_count * 100).round(1) : 0}%"
  end

  desc "特定のAddressableオブジェクトのGeocoding処理を実行"
  task :addressable, [ :model, :id ] => :environment do |task, args|
    unless args[:model] && args[:id]
      puts "使用方法: bin/rails geocode:addressable[Company,1] または bin/rails geocode:addressable[Brand,1]"
      exit
    end

    model_class = args[:model].constantize
    record = model_class.find(args[:id])

    if record.address.present?
      puts "#{model_class.name} ID:#{args[:id]} の住所をGeocoding処理中..."
      puts "住所: #{record.address.full_address}"

      if record.google_map.present?
        if record.google_map.geocode
          puts "成功: (#{record.google_map.latitude}, #{record.google_map.longitude})"
        else
          puts "Geocoding処理に失敗しました"
        end
      else
        puts "GoogleMapレコードが見つかりません"
      end
    else
      puts "住所情報が見つかりません"
    end
  end

  desc "全ての住所データの統計情報を表示"
  task stats: :environment do
    puts "Google Maps統計情報"
    puts "=" * 50

    total_google_maps = GoogleMap.count
    geocoded_maps = GoogleMap.where.not(latitude: nil, longitude: nil).count
    not_geocoded_maps = total_google_maps - geocoded_maps

    puts "総Google Mapレコード数: #{total_google_maps}"
    puts "Geocoding済み: #{geocoded_maps}件"
    puts "未処理: #{not_geocoded_maps}件"
    puts "処理率: #{total_google_maps > 0 ? (geocoded_maps.to_f / total_google_maps * 100).round(1) : 0}%"

    if not_geocoded_maps > 0
      puts "\n未処理の住所一覧（最初の10件）:"
      GoogleMap.where(latitude: nil, longitude: nil)
               .where.not(address: [ nil, "" ])
               .limit(10)
               .each_with_index do |gm, index|
        puts "#{index + 1}. #{gm.address}"
      end
    end
  end

  desc "開発環境でGeocoding処理を実行し、結果をCSVでエクスポート"
  task development_geocode_and_export: :environment do
    unless Rails.env.development?
      puts "このタスクは開発環境でのみ実行できます"
      exit(1)
    end

    puts "【開発環境専用】Geocoding処理とCSVエクスポートを開始します..."

    export_filename = "tmp/geocoding_results_#{Time.current.strftime('%Y%m%d_%H%M%S')}.csv"
    total_count = 0
    success_count = 0
    error_count = 0

    # 結果を保存するCSVファイルを準備
    CSV.open(export_filename, "w", headers: true) do |csv|
      csv << %w[google_map_id gmappable_type gmappable_id address latitude longitude processed_at status error_message]

      # GoogleMapモデルでaddressがあるが緯度経度が未設定のレコードを取得
      google_maps = GoogleMap.where(latitude: nil, longitude: nil)
                            .where.not(address: [ nil, "" ])

      puts "処理対象: #{google_maps.count}件"
      puts "エクスポート先: #{export_filename}"

      google_maps.find_each do |google_map|
        total_count += 1
        print "#{total_count}/#{google_maps.count}: #{google_map.address} ... "

        begin
          if google_map.geocode
            success_count += 1
            puts "成功 (#{google_map.latitude}, #{google_map.longitude})"
            csv << [
              google_map.id,
              google_map.gmappable_type,
              google_map.gmappable_id,
              google_map.address,
              google_map.latitude,
              google_map.longitude,
              Time.current.iso8601,
              "success",
              nil
            ]
          else
            error_count += 1
            puts "失敗"
            csv << [
              google_map.id,
              google_map.gmappable_type,
              google_map.gmappable_id,
              google_map.address,
              nil,
              nil,
              Time.current.iso8601,
              "failed",
              "Geocoding failed"
            ]
          end

          # レート制限を考慮して少し待機
          sleep(0.1)

        rescue => e
          error_count += 1
          puts "エラー: #{e.message}"
          csv << [
            google_map.id,
            google_map.gmappable_type,
            google_map.gmappable_id,
            google_map.address,
            nil,
            nil,
            Time.current.iso8601,
            "error",
            e.message
          ]
        end
      end
    end

    puts "\n処理完了"
    puts "総数: #{total_count}件"
    puts "成功: #{success_count}件"
    puts "失敗: #{error_count}件"
    puts "成功率: #{total_count > 0 ? (success_count.to_f / total_count * 100).round(1) : 0}%"
    puts "CSVファイル: #{export_filename}"
    puts "本番環境では以下のコマンドでインポートしてください:"
    puts "bin/rails geocode:import_from_csv[#{File.basename(export_filename)}]"
  end

  desc "CSVファイルからGeocoding結果をインポート"
  task :import_from_csv, [ :filename ] => :environment do |task, args|
    unless args[:filename]
      puts "使用方法: bin/rails geocode:import_from_csv[filename.csv]"
      exit(1)
    end

    csv_path = args[:filename].start_with?("tmp/") ? args[:filename] : "tmp/#{args[:filename]}"

    unless File.exist?(csv_path)
      puts "CSVファイルが見つかりません: #{csv_path}"
      exit(1)
    end

    puts "CSVファイルからGeocoding結果をインポートします: #{csv_path}"

    total_count = 0
    success_count = 0
    error_count = 0
    skip_count = 0

    CSV.foreach(csv_path, headers: true) do |row|
      total_count += 1

      next unless row["status"] == "success"
      next if row["latitude"].blank? || row["longitude"].blank?

      # GoogleMapレコードを住所で検索してマッチング
      google_maps = GoogleMap.where(
        gmappable_type: row["gmappable_type"],
        gmappable_id: row["gmappable_id"],
        address: row["address"]
      ).where(latitude: nil, longitude: nil)

      if google_maps.empty?
        skip_count += 1
        puts "スキップ: 対象レコードが見つかりません - #{row['address']}"
        next
      end

      google_maps.each do |google_map|
        begin
          google_map.update!(
            latitude: row["latitude"].to_f,
            longitude: row["longitude"].to_f
          )
          success_count += 1
          puts "更新成功: #{google_map.address} (#{row['latitude']}, #{row['longitude']})"
        rescue => e
          error_count += 1
          puts "更新失敗: #{google_map.address} - #{e.message}"
        end
      end
    end

    puts "\nインポート完了"
    puts "処理した行数: #{total_count}件"
    puts "更新成功: #{success_count}件"
    puts "エラー: #{error_count}件"
    puts "スキップ: #{skip_count}件"
  end

  desc "Geocoding同期状況の確認"
  task sync_status: :environment do
    puts "Geocoding同期状況レポート"
    puts "=" * 60

    total_maps = GoogleMap.count
    geocoded_maps = GoogleMap.where.not(latitude: nil, longitude: nil).count
    non_geocoded_maps = total_maps - geocoded_maps

    puts "環境: #{Rails.env}"
    puts "現在時刻: #{Time.current}"
    puts ""
    puts "【全体統計】"
    puts "総GoogleMapレコード数: #{total_maps}"
    puts "Geocoding済み: #{geocoded_maps}件 (#{total_maps > 0 ? (geocoded_maps.to_f / total_maps * 100).round(1) : 0}%)"
    puts "未処理: #{non_geocoded_maps}件 (#{total_maps > 0 ? (non_geocoded_maps.to_f / total_maps * 100).round(1) : 0}%)"

    # 関連モデル別統計
    puts "\n【関連モデル別統計】"
    [ "Company", "Brand" ].each do |model_type|
      total_for_model = GoogleMap.where(gmappable_type: model_type).count
      geocoded_for_model = GoogleMap.where(gmappable_type: model_type)
                                   .where.not(latitude: nil, longitude: nil).count

      puts "#{model_type}: #{geocoded_for_model}/#{total_for_model}件 geocoded"
    end

    # 最近の更新状況
    puts "\n【更新履歴】"
    recent_updates = GoogleMap.where.not(latitude: nil, longitude: nil)
                              .where("updated_at > ?", 1.day.ago)
                              .count
    puts "過去24時間の更新: #{recent_updates}件"

    # CSVファイル一覧
    puts "\n【利用可能なCSVファイル】"
    csv_files = Dir.glob("tmp/geocoding_*.csv").sort.reverse
    if csv_files.empty?
      puts "CSVファイルなし"
    else
      csv_files.first(5).each do |file|
        file_stat = File.stat(file)
        puts "#{File.basename(file)} (#{file_stat.size}bytes, #{file_stat.mtime.strftime('%Y-%m-%d %H:%M')})"
      end
    end
  end

  desc "バックアップ作成 - 現在のGeocoding結果をCSVでエクスポート"
  task create_backup: :environment do
    timestamp = Time.current.strftime("%Y%m%d_%H%M%S")
    export_filename = "tmp/geocoding_backup_#{timestamp}.csv"

    puts "Geocoding結果のバックアップを作成します..."
    puts "エクスポート先: #{export_filename}"

    CSV.open(export_filename, "w", headers: true) do |csv|
      csv << %w[google_map_id gmappable_type gmappable_id address latitude longitude created_at updated_at backup_created_at]

      GoogleMap.where.not(latitude: nil, longitude: nil).find_each do |google_map|
        csv << [
          google_map.id,
          google_map.gmappable_type,
          google_map.gmappable_id,
          google_map.address,
          google_map.latitude,
          google_map.longitude,
          google_map.created_at.iso8601,
          google_map.updated_at.iso8601,
          Time.current.iso8601
        ]
      end
    end

    geocoded_count = GoogleMap.where.not(latitude: nil, longitude: nil).count
    puts "バックアップ完了: #{geocoded_count}件のレコードを出力しました"
    puts "ファイル: #{export_filename}"

    # 古いバックアップファイルの整理（7日以上古いものを削除）
    old_backups = Dir.glob("tmp/geocoding_backup_*.csv").select do |file|
      File.mtime(file) < 7.days.ago
    end

    unless old_backups.empty?
      puts "\n古いバックアップファイルを削除します:"
      old_backups.each do |file|
        File.delete(file)
        puts "削除: #{File.basename(file)}"
      end
    end
  end

  desc "差分チェック - CSVファイルと現在のデータベースの差分を確認"
  task :check_diff, [ :filename ] => :environment do |task, args|
    unless args[:filename]
      puts "使用方法: bin/rails geocode:check_diff[filename.csv]"
      exit(1)
    end

    csv_path = args[:filename].start_with?("tmp/") ? args[:filename] : "tmp/#{args[:filename]}"

    unless File.exist?(csv_path)
      puts "CSVファイルが見つかりません: #{csv_path}"
      exit(1)
    end

    puts "差分チェック: #{csv_path} vs 現在のデータベース"
    puts "=" * 60

    csv_records = {}
    csv_successful_count = 0

    # CSVの成功レコードを読み込み
    CSV.foreach(csv_path, headers: true) do |row|
      if row["status"] == "success" && row["latitude"].present? && row["longitude"].present?
        key = "#{row['gmappable_type']}_#{row['gmappable_id']}_#{row['address']}"
        csv_records[key] = {
          latitude: row["latitude"].to_f,
          longitude: row["longitude"].to_f
        }
        csv_successful_count += 1
      end
    end

    puts "CSVファイル内の成功レコード: #{csv_successful_count}件"

    # データベースとの比較
    missing_in_db = 0
    different_coordinates = 0
    matching_records = 0

    csv_records.each do |key, csv_data|
      parts = key.split("_", 3)
      gmappable_type = parts[0]
      gmappable_id = parts[1]
      address = parts[2]

      db_record = GoogleMap.find_by(
        gmappable_type: gmappable_type,
        gmappable_id: gmappable_id,
        address: address
      )

      if db_record.nil?
        missing_in_db += 1
        puts "DB未登録: #{key}"
      elsif db_record.latitude.nil? || db_record.longitude.nil?
        missing_in_db += 1
        puts "DB未処理: #{key}"
      elsif (db_record.latitude.to_f - csv_data[:latitude]).abs > 0.0001 ||
            (db_record.longitude.to_f - csv_data[:longitude]).abs > 0.0001
        different_coordinates += 1
        puts "座標差異: #{key}"
        puts "  CSV: (#{csv_data[:latitude]}, #{csv_data[:longitude]})"
        puts "  DB:  (#{db_record.latitude}, #{db_record.longitude})"
      else
        matching_records += 1
      end
    end

    puts "\n【差分チェック結果】"
    puts "CSVの成功レコード: #{csv_successful_count}件"
    puts "DB内完全一致: #{matching_records}件"
    puts "DB未処理・未登録: #{missing_in_db}件"
    puts "座標差異: #{different_coordinates}件"
  end

  desc "Geocoding結果をCSVでエクスポート（既存データ）"
  task export_existing_data: :environment do
    export_filename = "tmp/geocoding_current_#{Time.current.strftime('%Y%m%d_%H%M%S')}.csv"

    puts "既存のGeocoding結果をエクスポートします..."
    puts "エクスポート先: #{export_filename}"

    CSV.open(export_filename, "w", headers: true) do |csv|
      csv << %w[google_map_id gmappable_type gmappable_id address latitude longitude created_at updated_at]

      GoogleMap.where.not(latitude: nil, longitude: nil).find_each do |google_map|
        csv << [
          google_map.id,
          google_map.gmappable_type,
          google_map.gmappable_id,
          google_map.address,
          google_map.latitude,
          google_map.longitude,
          google_map.created_at.iso8601,
          google_map.updated_at.iso8601
        ]
      end
    end

    geocoded_count = GoogleMap.where.not(latitude: nil, longitude: nil).count
    puts "エクスポート完了: #{geocoded_count}件のレコードを出力しました"
    puts "ファイル: #{export_filename}"
  end

  desc "利用可能なGeocoding関連タスクの一覧を表示"
  task help: :environment do
    puts "Geocoding関連タスク一覧"
    puts "=" * 60
    puts ""
    puts "【基本操作】"
    puts "bin/rails geocode:stats"
    puts "  → 現在のGeocoding統計情報を表示"
    puts ""
    puts "bin/rails geocode:sync_status"
    puts "  → 詳細な同期状況レポートを表示"
    puts ""
    puts "【開発環境（Geocoding処理）】"
    puts "bin/rails geocode:development_geocode_and_export"
    puts "  → 開発環境でGeocoding実行＆CSVエクスポート"
    puts ""
    puts "bin/rails geocode:existing_addresses"
    puts "  → 従来の方法でGeocoding処理（両環境対応）"
    puts ""
    puts "【本番環境（データ同期）】"
    puts "bin/rails geocode:import_from_csv[filename.csv]"
    puts "  → CSVファイルからGeocoding結果をインポート"
    puts ""
    puts "bin/rails geocode:check_diff[filename.csv]"
    puts "  → CSVファイルとDBの差分を確認"
    puts ""
    puts "【データ管理】"
    puts "bin/rails geocode:create_backup"
    puts "  → 現在のGeocoding結果をバックアップ"
    puts ""
    puts "bin/rails geocode:export_existing_data"
    puts "  → 既存データをCSVエクスポート"
    puts ""
    puts "【推奨ワークフロー】"
    puts "1. 開発環境: bin/rails geocode:development_geocode_and_export"
    puts "2. CSVファイルを本番環境に転送"
    puts "3. 本番環境: bin/rails geocode:check_diff[filename.csv]"
    puts "4. 本番環境: bin/rails geocode:import_from_csv[filename.csv]"
    puts "5. 本番環境: bin/rails geocode:sync_status"
  end
end
