class RefreshEcListingsJob < ApplicationJob
  queue_as :default

  def perform(listable)
    EcSiteService.search_and_update(listable)
  rescue => e
    Rails.logger.error "Failed to refresh EC listings for #{listable.class} ##{listable.id}: #{e.message}"
  end
end
