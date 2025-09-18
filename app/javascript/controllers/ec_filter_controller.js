import BaseController from "controllers/base_controller"

/**
 * EcFilterController - ECサイト風フィルタリングシステム
 *
 * 機能:
 * - 複数条件でのアイテムフィルタリング
 * - 価格範囲での絞り込み
 * - ソート機能（価格、評価、更新日時など）
 * - リアルタイム結果数表示
 * - フィルタのクリア機能
 */
export default class extends BaseController {
  static targets = ["filter", "item", "itemContainer", "resultCount", "noResults", "priceRange", "priceDisplay"]

  connect() {
    this.updateResults()
    this.updatePriceDisplay()
    this.logDebug('EcFilter initialized')
  }

  /**
   * フィルタ適用イベントハンドラー
   * @param {Event} event - フィルタイベント
   */
  filter(event) {
    event.preventDefault()
    this.updateResults()
  }

  /**
   * 価格フィルタ適用イベントハンドラー
   * @param {Event} event - 価格変更イベント
   */
  filterByPrice(event) {
    this.updatePriceDisplay()
    this.updateResults()
  }

  /**
   * ソート適用イベントハンドラー
   * @param {Event} event - ソート変更イベント
   */
  sortItems(event) {
    const sortType = event.target.value
    this.sortItemsByType(sortType)
  }

  /**
   * フィルタ結果の更新
   */
  updateResults() {
    const activeFilters = this.getActiveFilters()
    const maxPrice = this.getPriceFilter()
    let visibleCount = 0

    this.itemTargets.forEach((item) => {
      const isVisible = this.shouldShowItem(item, activeFilters, maxPrice)

      if (isVisible) {
        this.showElement(item, this.constructor.VISIBLE_CLASS)
        visibleCount++
      } else {
        this.hideElement(item, this.constructor.VISIBLE_CLASS)
      }
    })

    this.updateResultCount(visibleCount)
    this.updateNoResultsDisplay(visibleCount)

    // ログは結果が変わった時のみ出力
    if (this._lastVisibleCount !== visibleCount) {
      this.logDebug(`Filter results updated: ${visibleCount} items visible`)
      this._lastVisibleCount = visibleCount
    }
  }

  /**
   * アクティブなフィルタを取得
   * @returns {Object} フィルタオブジェクト
   */
  getActiveFilters() {
    const filters = {
      volume: [],
      rice: [],
      platform: [],
      sakeType: []
    }

    this.filterTargets.forEach((filter) => {
      if (filter.checked) {
        const filterType = this.getDataAttribute(filter, 'filterType')
        const filterValue = this.getDataAttribute(filter, 'filterValue')

        if (filters[filterType]) {
          filters[filterType].push(filterValue)
        }
      }
    })

    return filters
  }

  /**
   * アイテムを表示すべきかどうかを判定
   * @param {Element} item - アイテム要素
   * @param {Object} filters - フィルタオブジェクト
   * @param {number} maxPrice - 最大価格
   * @returns {boolean} 表示すべきかどうか
   */
  shouldShowItem(item, filters, maxPrice) {
    // 価格フィルタチェック
    if (!this.checkPriceFilter(item, maxPrice)) {
      return false
    }

    // 各フィルタタイプでAND条件、同一タイプ内でOR条件
    const filterChecks = [
      () => this.checkFilterType(item, filters.volume, 'volume'),
      () => this.checkFilterType(item, filters.rice, 'rice'),
      () => this.checkFilterType(item, filters.platform, 'platform'),
      () => this.checkFilterType(item, filters.sakeType, 'sakeType')
    ]

    return filterChecks.every(check => check())
  }

  /**
   * フィルタカウンターの更新
   */
  updateCounters() {
    if (!this.hasCounterTargets) return

    this.counterTargets.forEach((counter) => {
      const filterType = this.getDataAttribute(counter, 'counterType')
      const filterValue = this.getDataAttribute(counter, 'counterValue')

      const count = this.countVisibleItemsForFilter(filterType, filterValue)
      counter.textContent = `(${count})`
    })
  }

  /**
   * 価格フィルタの値を取得
   * @returns {number|null} 最大価格
   */
  getPriceFilter() {
    if (this.hasPriceRangeTarget) {
      return parseInt(this.priceRangeTarget.value, 10)
    }
    return null
  }

  /**
   * 価格表示の更新
   */
  updatePriceDisplay() {
    if (this.hasPriceRangeTarget && this.hasPriceDisplayTarget) {
      const price = parseInt(this.priceRangeTarget.value, 10)
      this.priceDisplayTarget.textContent = `上限: ¥${price.toLocaleString()}`
    }
  }

  /**
   * 指定されたタイプでアイテムをソート
   * @param {string} sortType - ソートタイプ
   */
  sortItemsByType(sortType) {
    const container = this.hasItemContainerTarget ? this.itemContainerTarget : this.element
    const items = Array.from(this.itemTargets)

    const sortFunctions = {
      'price-asc': (a, b) => this.getNumericData(a, 'price') - this.getNumericData(b, 'price'),
      'price-desc': (a, b) => this.getNumericData(b, 'price') - this.getNumericData(a, 'price'),
      'value': (a, b) => this.getNumericData(b, 'valueScore') - this.getNumericData(a, 'valueScore'),
      'review': (a, b) => this.getFloatData(b, 'reviewAverage') - this.getFloatData(a, 'reviewAverage'),
      'recent': (a, b) => this.getNumericData(b, 'updatedAt') - this.getNumericData(a, 'updatedAt')
    }

    const sortFunction = sortFunctions[sortType] || sortFunctions['recent']
    items.sort(sortFunction)

    items.forEach(item => container.appendChild(item))
    this.logDebug(`Items sorted by: ${sortType}`)
  }

  /**
   * すべてのフィルタをクリア
   * @param {Event} event - クリアイベント
   */
  clearFilters(event) {
    event.preventDefault()

    // チェックボックスフィルタをクリア
    this.filterTargets.forEach((filter) => {
      filter.checked = false
    })

    // 価格範囲をリセット
    this.resetPriceRange()

    // ソートをリセット
    this.resetSortOrder()

    this.updateResults()
    this.logDebug('All filters cleared')
  }

  /**
   * フィルタパネルの表示切り替え
   * @param {Event} event - トグルイベント
   */
  toggleFilterPanel(event) {
    event.preventDefault()
    const panel = this.findElement('.filter-panel')

    if (panel) {
      this.toggleElement(panel)
    }
  }

  // ヘルパーメソッド

  /**
   * 価格フィルタのチェック
   * @param {Element} item - アイテム要素
   * @param {number} maxPrice - 最大価格
   * @returns {boolean} 価格条件を満たすかどうか
   */
  checkPriceFilter(item, maxPrice) {
    if (!maxPrice) return true
    const itemPrice = this.getNumericData(item, 'price')
    return itemPrice <= maxPrice
  }

  /**
   * 特定のフィルタタイプのチェック
   * @param {Element} item - アイテム要素
   * @param {Array} filterValues - フィルタ値の配列
   * @param {string} dataKey - データキー
   * @returns {boolean} フィルタ条件を満たすかどうか
   */
  checkFilterType(item, filterValues, dataKey) {
    if (filterValues.length === 0) return true
    const itemValue = this.getDataAttribute(item, dataKey)
    return itemValue && filterValues.includes(itemValue)
  }

  /**
   * 数値データを安全に取得
   * @param {Element} element - 対象要素
   * @param {string} key - データキー
   * @returns {number} 数値データ
   */
  getNumericData(element, key) {
    return parseInt(this.getDataAttribute(element, key, '0'), 10) || 0
  }

  /**
   * 浮動小数点データを安全に取得
   * @param {Element} element - 対象要素
   * @param {string} key - データキー
   * @returns {number} 浮動小数点データ
   */
  getFloatData(element, key) {
    return parseFloat(this.getDataAttribute(element, key, '0')) || 0
  }

  /**
   * 結果数表示の更新
   * @param {number} count - 表示件数
   */
  updateResultCount(count) {
    if (this.hasResultCountTarget) {
      this.resultCountTarget.textContent = count
    }
  }

  /**
   * 結果なし表示の更新
   * @param {number} count - 表示件数
   */
  updateNoResultsDisplay(count) {
    if (!this.hasNoResultsTarget) return

    if (count === 0) {
      this.showElement(this.noResultsTarget)
    } else {
      this.hideElement(this.noResultsTarget)
    }
  }

  /**
   * 表示中のアイテム数をカウント
   * @param {string} filterType - フィルタタイプ
   * @param {string} filterValue - フィルタ値
   * @returns {number} 該当件数
   */
  countVisibleItemsForFilter(filterType, filterValue) {
    return this.itemTargets.filter(item => {
      if (item.classList.contains(this.constructor.HIDDEN_CLASS)) return false
      return this.getDataAttribute(item, filterType) === filterValue
    }).length
  }

  /**
   * 価格範囲をリセット
   */
  resetPriceRange() {
    if (this.hasPriceRangeTarget) {
      this.priceRangeTarget.value = this.priceRangeTarget.max
      this.updatePriceDisplay()
    }
  }

  /**
   * ソート順をリセット
   */
  resetSortOrder() {
    const sortSelect = this.findElement('select')
    if (sortSelect) {
      sortSelect.value = 'recent'
      this.sortItemsByType('recent')
    }
  }
}
