import { Controller } from "@hotwired/stimulus"

/**
 * ToggleController - 要素の表示/非表示を制御するStimulusコントローラー
 *
 * 機能:
 * - 基本的なトグル機能（data-toggle-target="element"）
 * - 特定IDを指定したトグル（data-target="element-id"）
 * - モバイル要素の排他制御（検索とメニューの同時表示防止）
 * - 外側クリックでの自動クローズ
 * - 検索要素への自動フォーカス
 *
 * 使用例:
 * <button data-controller="toggle" data-action="click->toggle#toggle" data-target="mobile-search">
 * <div id="mobile-search" class="hidden">...</div>
 */
export default class extends Controller {
  static targets = ["element"]

  // 設定定数
  static MOBILE_ELEMENTS = ["mobile-search", "mobile-menu"]
  static DROPDOWN_ELEMENTS = ["account-menu"]
  static SEARCH_ELEMENT_ID = "mobile-search"
  static FOCUS_DELAY = 100 // ms
  static HIDDEN_CLASS = "hidden"

  connect() {
    this.handleOutsideClick = this.handleOutsideClick.bind(this)
  }

  disconnect() {
    this.removeOutsideClickListener()
  }

  /**
   * メイン要素切り替えメソッド
   * data-target属性で指定された要素またはelement targetを切り替える
   */
  toggle(event) {
    const targetId = this.getTargetId(event)

    if (targetId) {
      this.toggleElementById(targetId)
    } else {
      this.toggleElementTarget()
    }
  }

  /**
   * 要素を表示状態にする
   */
  show() {
    if (this.hasElementTarget) {
      this.showElement(this.elementTarget)
    }
  }

  /**
   * 要素を非表示状態にする
   */
  hide() {
    if (this.hasElementTarget) {
      this.hideElement(this.elementTarget)
    }
  }

  // プライベートメソッド

  /**
   * イベントからターゲットIDを取得
   * @param {Event} event - クリックイベント
   * @returns {string|null} ターゲット要素のID
   */
  getTargetId(event) {
    return event?.currentTarget?.dataset?.target || null
  }

  /**
   * 指定IDの要素をトグル
   * @param {string} targetId - 要素のID
   */
  toggleElementById(targetId) {
    const element = this.findElementById(targetId)
    if (!element) {
      return
    }

    const wasHidden = this.isHidden(element)

    if (wasHidden) {
      this.beforeShow(targetId)
    }

    this.toggleElementVisibility(element)
    this.manageOutsideClickListener(wasHidden)

    if (wasHidden) {
      this.afterShow(targetId, element)
    }
  }

  /**
   * element targetをトグル（従来の動作との互換性）
   */
  toggleElementTarget() {
    if (this.hasElementTarget) {
      const element = this.elementTarget
      const wasHidden = this.isHidden(element)

      if (wasHidden) {
        // element targetの場合、IDがあれば対応する処理を実行
        const elementId = element.id
        if (elementId) {
          this.beforeShow(elementId)
        }
      }

      this.toggleElementVisibility(element)

      // ドロップダウン要素の場合のみ外側クリックリスナーを管理
      if (element.id && this.isDropdownElement(element.id)) {
        this.manageOutsideClickListener(wasHidden)
      }

      if (wasHidden && element.id) {
        this.afterShow(element.id, element)
      }
    }
  }

  /**
   * 要素表示前の処理
   * @param {string} targetId - 表示する要素のID
   */
  beforeShow(targetId) {
    if (this.isMobileElement(targetId)) {
      this.closeOtherMobileElements(targetId)
    } else if (this.isDropdownElement(targetId)) {
      this.closeOtherDropdownElements(targetId)
    }
  }

  /**
   * 要素表示後の処理
   * @param {string} targetId - 表示した要素のID
   * @param {HTMLElement} element - 表示した要素
   */
  afterShow(targetId, element) {
    if (this.isSearchElement(targetId)) {
      this.focusSearchInput(element)
    }
  }

  /**
   * 指定要素以外のモバイル要素を閉じる
   * @param {string} currentTargetId - 現在操作中の要素ID
   */
  closeOtherMobileElements(currentTargetId) {
    this.constructor.MOBILE_ELEMENTS
      .filter(id => id !== currentTargetId)
      .forEach(id => {
        const element = this.findElementById(id)
        if (element && !this.isHidden(element)) {
          this.hideElement(element)
        }
      })
  }

  /**
   * 指定要素以外のドロップダウン要素を閉じる
   * @param {string} currentTargetId - 現在操作中の要素ID
   */
  closeOtherDropdownElements(currentTargetId) {
    this.constructor.DROPDOWN_ELEMENTS
      .filter(id => id !== currentTargetId)
      .forEach(id => {
        const element = this.findElementById(id)
        if (element && !this.isHidden(element)) {
          this.hideElement(element)
        }
      })
  }

  /**
   * ドロップダウン要素の外側クリックで閉じる
   * @param {Event} event - クリックイベント
   * @returns {boolean} 何かの要素が閉じられたかどうか
   */
  closeOutsideDropdownElements(event) {
    let closedAny = false

    this.constructor.DROPDOWN_ELEMENTS.forEach(id => {
      const element = this.findElementById(id)
      if (element && !this.isHidden(element)) {
        // トリガーボタンを見つける
        const triggerButton = this.findTriggerButtonForElement(id)

        // クリックが要素の外側かつトリガーボタンでもない場合のみ閉じる
        if (!element.contains(event.target) &&
            (!triggerButton || !triggerButton.contains(event.target))) {
          this.hideElement(element)
          closedAny = true
        }
      }
    })

    return closedAny
  }

  /**
   * 検索入力欄にフォーカスを設定
   * @param {HTMLElement} element - 検索要素
   */
  focusSearchInput(element) {
    setTimeout(() => {
      const inputField = element.querySelector('input[type="text"]')
      if (inputField) {
        inputField.focus()
      }
    }, this.constructor.FOCUS_DELAY)
  }

  /**
   * 外側クリックハンドラー
   * @param {Event} event - クリックイベント
   */
  handleOutsideClick(event) {
    let closedAny = false

    // モバイル要素のチェック（ヘッダー外クリック）
    const header = document.querySelector('header')
    if (this.isClickOutsideHeader(event, header)) {
      closedAny = this.closeAllMobileElements() || closedAny
    }

    // ドロップダウン要素のチェック（要素外クリック）
    closedAny = this.closeOutsideDropdownElements(event) || closedAny

    if (closedAny) {
      this.removeOutsideClickListener()
    }
  }

  /**
   * 全てのモバイル要素を閉じる
   * @returns {boolean} 何かの要素が閉じられたかどうか
   */
  closeAllMobileElements() {
    let closedAny = false

    this.constructor.MOBILE_ELEMENTS.forEach(id => {
      const element = this.findElementById(id)
      if (element && !this.isHidden(element)) {
        this.hideElement(element)
        closedAny = true
      }
    })

    return closedAny
  }

  /**
   * 外側クリックリスナーの管理
   * @param {boolean} wasHidden - 要素が非表示だったかどうか
   */
  manageOutsideClickListener(wasHidden) {
    if (wasHidden) {
      this.addOutsideClickListener()
    } else {
      this.removeOutsideClickListener()
    }
  }

  /**
   * 外側クリックリスナーを追加
   */
  addOutsideClickListener() {
    document.addEventListener('click', this.handleOutsideClick)
  }

  /**
   * 外側クリックリスナーを削除
   */
  removeOutsideClickListener() {
    document.removeEventListener('click', this.handleOutsideClick)
  }

  // ユーティリティメソッド

  /**
   * IDで要素を検索
   * @param {string} id - 要素のID
   * @returns {HTMLElement|null}
   */
  findElementById(id) {
    return document.getElementById(id)
  }

  /**
   * 要素が非表示かどうかを判定
   * @param {HTMLElement} element - 対象要素
   * @returns {boolean}
   */
  isHidden(element) {
    return element.classList.contains(this.constructor.HIDDEN_CLASS)
  }

  /**
   * 要素の表示/非表示を切り替え
   * @param {HTMLElement} element - 対象要素
   */
  toggleElementVisibility(element) {
    element.classList.toggle(this.constructor.HIDDEN_CLASS)
  }

  /**
   * 要素を表示
   * @param {HTMLElement} element - 対象要素
   */
  showElement(element) {
    element.classList.remove(this.constructor.HIDDEN_CLASS)
  }

  /**
   * 要素を非表示
   * @param {HTMLElement} element - 対象要素
   */
  hideElement(element) {
    element.classList.add(this.constructor.HIDDEN_CLASS)
  }

  /**
   * モバイル要素かどうかを判定
   * @param {string} elementId - 要素ID
   * @returns {boolean}
   */
  isMobileElement(elementId) {
    return this.constructor.MOBILE_ELEMENTS.includes(elementId)
  }

  /**
   * ドロップダウン要素かどうかを判定
   * @param {string} elementId - 要素ID
   * @returns {boolean}
   */
  isDropdownElement(elementId) {
    return this.constructor.DROPDOWN_ELEMENTS.includes(elementId)
  }

  /**
   * 検索要素かどうかを判定
   * @param {string} elementId - 要素ID
   * @returns {boolean}
   */
  isSearchElement(elementId) {
    return elementId === this.constructor.SEARCH_ELEMENT_ID
  }

  /**
   * ヘッダー外のクリックかどうかを判定
   * @param {Event} event - クリックイベント
   * @param {HTMLElement} header - ヘッダー要素
   * @returns {boolean}
   */
  isClickOutsideHeader(event, header) {
    return header && !header.contains(event.target)
  }

  /**
   * 指定した要素のトリガーボタンを見つける
   * @param {string} elementId - 対象要素のID
   * @returns {HTMLElement|null}
   */
  findTriggerButtonForElement(elementId) {
    return document.querySelector(`[data-target="${elementId}"]`)
  }
}
