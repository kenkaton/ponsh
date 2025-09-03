class RefreshEcListingsJob < ApplicationJob
  queue_as :default

  def perform(listables)
    # 単一オブジェクトの場合は配列化
    listables = Array(listables)

    # N+1問題を解決するために、Brandsの場合はcompanyを含めて一括取得
    if listables.first.is_a?(Brand)
      brand_ids = listables.map(&:id)
      listables = Brand.includes(:company).where(id: brand_ids).to_a
    end

    listables.each_with_index do |listable, index|
      # 更新が必要ないものはスキップ（Brandの場合）
      if listable.is_a?(Brand) && !listable.should_refresh_ec_listings?
        Rails.logger.info "Skipping EC listings refresh for Brand ##{listable.id} (not needed)"
        next
      end

      # 最初の要素以外は1秒待機（API制限対応）
      sleep(1) if index > 0

      begin
        Rails.logger.info "Refreshing EC listings for #{listable.class} ##{listable.id} (#{index + 1}/#{listables.size})"
        EcSiteService.search_and_update(listable)
      rescue => e
        Rails.logger.error "Failed to refresh EC listings for #{listable.class} ##{listable.id}: #{e.message}"
        # エラーが発生しても次の要素の処理を続行
      end
    end

    Rails.logger.info "Completed refreshing EC listings for #{listables.size} items"
  end
end
