import BaseController from "controllers/base_controller"

/**
 * GTMController - Google Tag Manager統合コントローラー
 *
 * 機能:
 * - イベント追跡（クリック、ページビュー、検索）
 * - カスタムイベントデータの送信
 * - アイテム表示の追跡
 * - GTM dataLayerの管理
 */
export default class extends BaseController {
  static values = {
    event: String,
    category: String,
    action: String,
    label: String,
    value: Number,
    custom: Object
  }

  connect() {
    this.initializeDataLayer()
    this.logDebug('GTM controller initialized')
  }

  /**
   * カスタムイベントを追跡
   */
  track() {
    if (!this.isDataLayerAvailable()) return

    const eventData = this.buildEventData({
      event: this.eventValue || 'custom_event',
      event_category: this.categoryValue,
      event_action: this.actionValue,
      event_label: this.labelValue,
      value: this.valueValue,
      ...this.customValue
    })

    this.pushToDataLayer(eventData, 'GTM Event')
  }

  /**
   * ページビューイベントを追跡
   */
  pageView() {
    if (!this.isDataLayerAvailable()) return

    const pageData = {
      event: 'page_view',
      page_path: window.location.pathname,
      page_title: document.title,
      page_location: window.location.href
    }

    this.pushToDataLayer(pageData, 'GTM Page View')
  }

  /**
   * 検索イベントを追跡
   * @param {string} query - 検索クエリ
   */
  search(query) {
    if (!this.isDataLayerAvailable()) return

    const searchInput = this.findElement('input[type="search"]')
    const searchData = {
      event: 'search',
      search_term: query || (searchInput && searchInput.value)
    }

    this.pushToDataLayer(searchData, 'GTM Search')
  }

  /**
   * アイテム表示イベントを追跡
   * @param {Object} itemData - アイテムデータ
   */
  viewItem(itemData = {}) {
    if (!this.isDataLayerAvailable()) return

    const viewData = this.buildEventData({
      event: 'view_item',
      item_name: itemData.name || this.getDataAttribute(this.element, 'itemName'),
      item_id: itemData.id || this.getDataAttribute(this.element, 'itemId'),
      item_category: itemData.category || this.getDataAttribute(this.element, 'itemCategory'),
      ...this.customValue
    })

    this.pushToDataLayer(viewData, 'GTM View Item')
  }

  // ヘルパーメソッド

  /**
   * dataLayerを初期化
   */
  initializeDataLayer() {
    if (!window.dataLayer) {
      window.dataLayer = []
    }
  }

  /**
   * dataLayerが利用可能かチェック
   * @returns {boolean} 利用可能かどうか
   */
  isDataLayerAvailable() {
    if (!window.dataLayer) {
      this.logError('GTM dataLayer not found')
      return false
    }
    return true
  }

  /**
   * イベントデータを構築（未定義値を除去）
   * @param {Object} data - 元データ
   * @returns {Object} クリーンなデータ
   */
  buildEventData(data) {
    const cleanData = { ...data }
    Object.keys(cleanData).forEach(key => {
      if (cleanData[key] === undefined) {
        delete cleanData[key]
      }
    })
    return cleanData
  }

  /**
   * dataLayerにデータをプッシュ
   * @param {Object} data - 送信データ
   * @param {string} eventType - イベントタイプ（ログ用）
   */
  pushToDataLayer(data, eventType) {
    this.logDebug(`${eventType}:`, data)
    window.dataLayer.push(data)
  }
}
