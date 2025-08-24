module ApplicationHelper
  def gtm_enabled?
    Rails.env.production? || ENV["ENABLE_GTM_IN_DEVELOPMENT"].present?
  end

  def gtm_container_id
    ENV.fetch("GTM_CONTAINER_ID", Rails.application.credentials.dig(:google, :gtm_container_id))
  end

  def ga4_measurement_id
    ENV.fetch("GA4_MEASUREMENT_ID", Rails.application.credentials.dig(:google, :ga4_measurement_id))
  end

  def render_gtm_head
    return unless gtm_enabled? && gtm_container_id.present?

    javascript_tag(nonce: true) do
      raw <<~JS
        (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','#{gtm_container_id}');
      JS
    end
  end

  def render_gtm_body
    return unless gtm_enabled? && gtm_container_id.present?

    content_tag(:noscript) do
      content_tag(:iframe, "",
        src: "https://www.googletagmanager.com/ns.html?id=#{gtm_container_id}",
        height: "0",
        width: "0",
        style: "display:none;visibility:hidden"
      )
    end
  end

  def safe_website_link(website, options = {})
    return "" if website.blank?

    # URI バリデーション
    begin
      uri = URI.parse(website)
      return "" unless %w[http https].include?(uri.scheme)
    rescue URI::InvalidURIError
      return ""
    end

    text = options[:text] || truncate(website, length: options[:length] || 50)
    link_to text, website,
           target: "_blank",
           rel: "noopener noreferrer",
           class: options[:class] || "text-blue-600 hover:underline"
  end
end
