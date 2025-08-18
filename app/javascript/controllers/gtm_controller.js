import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    event: String,
    category: String,
    action: String,
    label: String,
    value: Number,
    custom: Object
  }

  connect() {
    if (!window.dataLayer) {
      window.dataLayer = []
    }
  }

  track(event) {
    event.preventDefault()

    if (!window.dataLayer) {
      console.warn('GTM dataLayer not found')
      return
    }

    const eventData = {
      event: this.eventValue || 'custom_event',
      event_category: this.categoryValue,
      event_action: this.actionValue,
      event_label: this.labelValue,
      value: this.valueValue,
      ...this.customValue
    }

    // Remove undefined values
    Object.keys(eventData).forEach(key =>
      eventData[key] === undefined && delete eventData[key]
    )

    console.log('GTM Event:', eventData)
    window.dataLayer.push(eventData)

    // Continue with default action after tracking
    if (event.target.href) {
      setTimeout(() => {
        window.location.href = event.target.href
      }, 100)
    }
  }

  pageView() {
    if (!window.dataLayer) {
      console.warn('GTM dataLayer not found')
      return
    }

    const pageData = {
      event: 'page_view',
      page_path: window.location.pathname,
      page_title: document.title,
      page_location: window.location.href
    }

    console.log('GTM Page View:', pageData)
    window.dataLayer.push(pageData)
  }

  search(query) {
    if (!window.dataLayer) {
      console.warn('GTM dataLayer not found')
      return
    }

    const searchData = {
      event: 'search',
      search_term: query || this.element.querySelector('input[type="search"]')?.value
    }

    console.log('GTM Search:', searchData)
    window.dataLayer.push(searchData)
  }

  viewItem(itemData) {
    if (!window.dataLayer) {
      console.warn('GTM dataLayer not found')
      return
    }

    const viewData = {
      event: 'view_item',
      item_name: itemData.name || this.element.dataset.itemName,
      item_id: itemData.id || this.element.dataset.itemId,
      item_category: itemData.category || this.element.dataset.itemCategory,
      ...this.customValue
    }

    console.log('GTM View Item:', viewData)
    window.dataLayer.push(viewData)
  }
}
