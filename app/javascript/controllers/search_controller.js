import BaseController from "controllers/base_controller"

/**
 * SearchController - 検索フォーム制御コントローラー
 *
 * 機能:
 * - 検索フォームの表示/非表示切り替え
 * - キーボードショートカット (Escape)
 * - 外側クリックでの自動クローズ
 * - 自動フォーカス
 *
 * 注意: このコントローラーはToggleControllerと機能が重複する部分があります。
 * 統合を検討してください。
 */
export default class extends BaseController {
  static targets = ["container"]

  // 検索関連セレクター
  static SEARCH_TRIGGER_SELECTOR = 'header a[href*="/brands"]'
  static SEARCH_INPUT_SELECTOR = 'input[type="text"]'
  static SEARCH_CONTAINER_ID = 'search-container'

  connect() {
    this.boundHandlers = {
      keydown: this.handleKeydown.bind(this),
      outsideClick: this.handleOutsideClick.bind(this)
    }

    this.setupSearchTriggers()
    this.setupGlobalEventListeners()
  }

  disconnect() {
    this.removeGlobalEventListeners()
  }

  /**
   * 検索トリガーの設定
   */
  setupSearchTriggers() {
    const searchLinks = this.findElements(this.constructor.SEARCH_TRIGGER_SELECTOR, document)

    searchLinks.forEach(link => {
      this.addEventListenerSafely(link, 'click', (event) => {
        if (this.isSearchTrigger(event.target)) {
          event.preventDefault()
          this.toggleSearch()
        }
      })
    })
  }

  /**
   * グローバルイベントリスナーの設定
   */
  setupGlobalEventListeners() {
    this.addEventListenerSafely(document, 'keydown', this.boundHandlers.keydown)
    this.addEventListenerSafely(document, 'click', this.boundHandlers.outsideClick)
  }

  /**
   * グローバルイベントリスナーの削除
   */
  removeGlobalEventListeners() {
    document.removeEventListener('keydown', this.boundHandlers.keydown)
    document.removeEventListener('click', this.boundHandlers.outsideClick)
  }

  /**
   * 検索フォームの表示/非表示切り替え
   */
  toggleSearch() {
    if (!this.hasContainerTarget) {
      this.logError('Search container target not found')
      return
    }

    const wasHidden = this.toggleElement(this.containerTarget)

    if (wasHidden) {
      this.focusSearchInput()
    }

    this.logDebug(`Search toggled: ${wasHidden ? 'shown' : 'hidden'}`)
  }

  /**
   * 検索フォームを非表示
   */
  hideSearch() {
    if (this.hasContainerTarget && this.isElementVisible(this.containerTarget)) {
      this.hideElement(this.containerTarget)
      this.logDebug('Search hidden')
    }
  }

  /**
   * 検索フォームを表示
   */
  showSearch() {
    if (this.hasContainerTarget && !this.isElementVisible(this.containerTarget)) {
      this.showElement(this.containerTarget)
      this.focusSearchInput()
      this.logDebug('Search shown')
    }
  }

  /**
   * 検索入力欄にフォーカス
   */
  focusSearchInput() {
    if (!this.hasContainerTarget) return

    const input = this.findElement(this.constructor.SEARCH_INPUT_SELECTOR, this.containerTarget)
    if (input) {
      this.focusElement(input, 100)
    }
  }

  /**
   * 検索トリガーかどうかを判定
   * @param {Element} target - チェック対象要素
   * @returns {boolean}
   */
  isSearchTrigger(target) {
    return target.closest('svg') ||
           target.closest(this.constructor.SEARCH_TRIGGER_SELECTOR)
  }

  /**
   * 検索関連要素かどうかを判定
   * @param {Element} target - チェック対象要素
   * @returns {boolean}
   */
  isSearchRelatedElement(target) {
    return target.closest(`#${this.constructor.SEARCH_CONTAINER_ID}`) ||
           target.closest(this.constructor.SEARCH_TRIGGER_SELECTOR) ||
           target.closest('svg')
  }

  /**
   * キーボードイベントハンドラー
   * @param {KeyboardEvent} event - キーボードイベント
   */
  handleKeydown(event) {
    if (event.key === 'Escape') {
      this.hideSearch()
    }
  }

  /**
   * 外側クリックイベントハンドラー
   * @param {MouseEvent} event - クリックイベント
   */
  handleOutsideClick(event) {
    if (!this.isSearchRelatedElement(event.target)) {
      this.hideSearch()
    }
  }

  /**
   * 検索フォームの状態を取得
   * @returns {boolean} 表示状態
   */
  isSearchVisible() {
    return this.hasContainerTarget && this.isElementVisible(this.containerTarget)
  }

  /**
   * 検索クエリを取得
   * @returns {string} 検索クエリ
   */
  getSearchQuery() {
    if (!this.hasContainerTarget) return ''

    const input = this.findElement(this.constructor.SEARCH_INPUT_SELECTOR, this.containerTarget)
    return input ? input.value.trim() : ''
  }

  /**
   * 検索クエリを設定
   * @param {string} query - 検索クエリ
   */
  setSearchQuery(query) {
    if (!this.hasContainerTarget) return

    const input = this.findElement(this.constructor.SEARCH_INPUT_SELECTOR, this.containerTarget)
    if (input) {
      input.value = query
    }
  }
}
