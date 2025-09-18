import { Controller } from "@hotwired/stimulus"

/**
 * BaseController - 共通機能を提供するベースクラス
 *
 * 提供機能:
 * - DOM要素の安全な操作
 * - CSS クラスの操作ヘルパー
 * - イベントリスナーの管理
 * - デバウンス機能
 * - ログ機能
 */
export default class extends Controller {
  // 共通定数
  static HIDDEN_CLASS = "hidden"
  static VISIBLE_CLASS = "block"
  static ACTIVE_CLASS = "active"
  static DISABLED_CLASS = "disabled"

  /**
   * 安全に要素を取得
   * @param {string} selector - CSSセレクター
   * @param {Element} context - 検索コンテキスト（デフォルト: this.element）
   * @returns {Element|null}
   */
  findElement(selector, context = this.element) {
    try {
      return context.querySelector(selector)
    } catch (error) {
      this.logError(`Invalid selector: ${selector}`, error)
      return null
    }
  }

  /**
   * 安全に複数要素を取得
   * @param {string} selector - CSSセレクター
   * @param {Element} context - 検索コンテキスト（デフォルト: this.element）
   * @returns {NodeList}
   */
  findElements(selector, context = this.element) {
    try {
      return context.querySelectorAll(selector)
    } catch (error) {
      this.logError(`Invalid selector: ${selector}`, error)
      return []
    }
  }

  /**
   * IDで要素を取得
   * @param {string} id - 要素ID
   * @returns {Element|null}
   */
  getElementById(id) {
    return document.getElementById(id)
  }

  /**
   * 要素が存在し、表示されているかチェック
   * @param {Element} element - チェック対象要素
   * @returns {boolean}
   */
  isElementVisible(element) {
    return element && !element.classList.contains(this.constructor.HIDDEN_CLASS)
  }

  /**
   * 要素を表示
   * @param {Element} element - 対象要素
   * @param {string} displayClass - 表示用CSSクラス
   */
  showElement(element, displayClass = this.constructor.VISIBLE_CLASS) {
    if (!element) return

    element.classList.remove(this.constructor.HIDDEN_CLASS)
    if (displayClass) {
      element.classList.add(displayClass)
    }
  }

  /**
   * 要素を非表示
   * @param {Element} element - 対象要素
   * @param {string} displayClass - 表示用CSSクラス
   */
  hideElement(element, displayClass = this.constructor.VISIBLE_CLASS) {
    if (!element) return

    element.classList.add(this.constructor.HIDDEN_CLASS)
    if (displayClass) {
      element.classList.remove(displayClass)
    }
  }

  /**
   * 要素の表示/非表示を切り替え
   * @param {Element} element - 対象要素
   * @param {string} displayClass - 表示用CSSクラス
   * @returns {boolean} 表示状態になったかどうか
   */
  toggleElement(element, displayClass = this.constructor.VISIBLE_CLASS) {
    if (!element) return false

    const isCurrentlyHidden = element.classList.contains(this.constructor.HIDDEN_CLASS)

    if (isCurrentlyHidden) {
      this.showElement(element, displayClass)
    } else {
      this.hideElement(element, displayClass)
    }

    return isCurrentlyHidden
  }

  /**
   * 複数要素のアクティブ状態を管理
   * @param {NodeList|Array} elements - 要素リスト
   * @param {Element} activeElement - アクティブにする要素
   * @param {string} activeClass - アクティブクラス
   * @param {string} inactiveClass - 非アクティブクラス
   */
  setActiveElement(elements, activeElement, activeClass = this.constructor.ACTIVE_CLASS, inactiveClass = null) {
    elements.forEach(element => {
      if (element === activeElement) {
        element.classList.add(activeClass)
        if (inactiveClass) element.classList.remove(inactiveClass)
        element.setAttribute("aria-selected", "true")
      } else {
        element.classList.remove(activeClass)
        if (inactiveClass) element.classList.add(inactiveClass)
        element.setAttribute("aria-selected", "false")
      }
    })
  }

  /**
   * デバウンス機能
   * @param {Function} func - 実行する関数
   * @param {number} delay - 遅延時間（ミリ秒）
   * @returns {Function} デバウンスされた関数
   */
  debounce(func, delay = 300) {
    let timeoutId
    return (...args) => {
      clearTimeout(timeoutId)
      timeoutId = setTimeout(() => func.apply(this, args), delay)
    }
  }

  /**
   * スロットル機能
   * @param {Function} func - 実行する関数
   * @param {number} limit - 実行間隔制限（ミリ秒）
   * @returns {Function} スロットルされた関数
   */
  throttle(func, limit = 100) {
    let inThrottle
    return (...args) => {
      if (!inThrottle) {
        func.apply(this, args)
        inThrottle = true
        setTimeout(() => inThrottle = false, limit)
      }
    }
  }

  /**
   * 配列を安全に操作
   * @param {*} value - チェック対象
   * @returns {Array} 配列またはラップされた値
   */
  ensureArray(value) {
    if (Array.isArray(value)) return value
    if (value === null || value === undefined) return []
    return [value]
  }

  /**
   * データ属性を安全に取得
   * @param {Element} element - 対象要素
   * @param {string} key - データキー
   * @param {*} defaultValue - デフォルト値
   * @returns {string|*} データ値
   */
  getDataAttribute(element, key, defaultValue = null) {
    if (!element || !element.dataset) return defaultValue
    return element.dataset[key] || defaultValue
  }

  /**
   * イベントリスナーを安全に追加
   * @param {Element} element - 対象要素
   * @param {string} eventType - イベントタイプ
   * @param {Function} handler - ハンドラー関数
   * @param {Object|boolean} options - オプション
   */
  addEventListenerSafely(element, eventType, handler, options = {}) {
    if (!element || typeof handler !== 'function') {
      this.logError(`Invalid parameters for addEventListener`, { element, eventType, handler })
      return
    }

    try {
      element.addEventListener(eventType, handler, options)
    } catch (error) {
      this.logError(`Failed to add event listener`, error)
    }
  }

  /**
   * 開発環境でのログ出力（スロットル機能付き）
   * @param {string} message - メッセージ
   * @param {*} data - 追加データ
   */
  logDebug(message, data = null) {
    if (!this.isDevelopment()) return

    // 頻繁なログをスロットル（1秒間隔）
    const throttledLogs = ['Filter results updated', 'Search toggled', 'Items sorted by']
    const isFrequentLog = throttledLogs.some(pattern => message.includes(pattern))

    if (isFrequentLog) {
      if (!this._logThrottleTimers) this._logThrottleTimers = {}
      const logKey = `${this.identifier}-${message}`

      if (this._logThrottleTimers[logKey]) return

      this._logThrottleTimers[logKey] = setTimeout(() => {
        delete this._logThrottleTimers[logKey]
      }, 1000)
    }

    console.log(`[${this.identifier}] ${message}`, data || '')
  }

  /**
   * エラーログ出力
   * @param {string} message - エラーメッセージ
   * @param {Error|*} error - エラーオブジェクト
   */
  logError(message, error = null) {
    console.error(`[${this.identifier}] ${message}`, error)
  }

  /**
   * 開発環境判定
   * @returns {boolean}
   */
  isDevelopment() {
    return !!(window.Rails && window.Rails.env === 'development') ||
           window.location.hostname === 'localhost'
  }

  /**
   * フォーカス管理
   * @param {Element} element - フォーカス対象要素
   * @param {number} delay - 遅延時間（ミリ秒）
   */
  focusElement(element, delay = 0) {
    if (!element) return

    if (delay > 0) {
      setTimeout(() => {
        if (element && typeof element.focus === 'function') {
          element.focus()
        }
      }, delay)
    } else {
      if (typeof element.focus === 'function') {
        element.focus()
      }
    }
  }

  /**
   * アクセシビリティ属性の設定
   * @param {Element} element - 対象要素
   * @param {Object} attributes - 属性オブジェクト
   */
  setAriaAttributes(element, attributes) {
    if (!element) return

    Object.entries(attributes).forEach(([key, value]) => {
      const ariaKey = key.startsWith('aria-') ? key : `aria-${key}`
      element.setAttribute(ariaKey, String(value))
    })
  }
}
