import BaseController from "controllers/base_controller"

/**
 * TabsController - タブUI制御コントローラー
 *
 * 機能:
 * - タブの選択状態管理
 * - パネルの表示切り替え
 * - キーボードナビゲーション対応
 * - アクセシビリティ対応
 */
export default class extends BaseController {
  static targets = ["tab", "panel"]

  // タブ用CSS設定
  static TAB_ACTIVE_CLASSES = ["border-blue-500", "text-gray-700", "border-b-2"]
  static TAB_INACTIVE_CLASSES = ["text-gray-500"]

  connect() {
    this.initializeTabs()
    this.setupKeyboardNavigation()
  }

  /**
   * タブ初期化
   */
  initializeTabs() {
    if (this.tabTargets.length > 0) {
      this.selectTab(this.tabTargets[0])
    }
  }

  /**
   * キーボードナビゲーション設定
   */
  setupKeyboardNavigation() {
    this.tabTargets.forEach((tab, index) => {
      this.addEventListenerSafely(tab, 'keydown', (event) => {
        this.handleKeydown(event, index)
      })
    })
  }

  /**
   * タブ選択イベントハンドラー
   * @param {Event} event - クリックイベント
   */
  select(event) {
    event.preventDefault()
    this.selectTab(event.currentTarget)
  }

  /**
   * タブを選択してパネルを表示
   * @param {Element} selectedTab - 選択されたタブ要素
   */
  selectTab(selectedTab) {
    if (!selectedTab) return

    const panelId = this.getDataAttribute(selectedTab, 'panel')
    if (!panelId) {
      this.logError('Tab missing data-panel attribute', selectedTab)
      return
    }

    this.updateTabStates(selectedTab)
    this.updatePanelStates(panelId)
    this.updateAccessibility(selectedTab)
  }

  /**
   * タブの表示状態を更新
   * @param {Element} selectedTab - 選択されたタブ
   */
  updateTabStates(selectedTab) {
    this.tabTargets.forEach(tab => {
      const isSelected = tab === selectedTab

      if (isSelected) {
        this.activateTab(tab)
      } else {
        this.deactivateTab(tab)
      }
    })
  }

  /**
   * タブをアクティブ状態にする
   * @param {Element} tab - タブ要素
   */
  activateTab(tab) {
    // アクティブクラスを追加
    this.constructor.TAB_ACTIVE_CLASSES.forEach(className => {
      tab.classList.add(className)
    })

    // 非アクティブクラスを削除
    this.constructor.TAB_INACTIVE_CLASSES.forEach(className => {
      tab.classList.remove(className)
    })

    tab.setAttribute("tabindex", "0")
  }

  /**
   * タブを非アクティブ状態にする
   * @param {Element} tab - タブ要素
   */
  deactivateTab(tab) {
    // アクティブクラスを削除
    this.constructor.TAB_ACTIVE_CLASSES.forEach(className => {
      tab.classList.remove(className)
    })

    // 非アクティブクラスを追加
    this.constructor.TAB_INACTIVE_CLASSES.forEach(className => {
      tab.classList.add(className)
    })

    tab.setAttribute("tabindex", "-1")
  }

  /**
   * パネルの表示状態を更新
   * @param {string} activePanelId - アクティブにするパネルID
   */
  updatePanelStates(activePanelId) {
    this.panelTargets.forEach(panel => {
      if (panel.id === activePanelId) {
        this.showElement(panel)
        panel.setAttribute("aria-hidden", "false")
      } else {
        this.hideElement(panel)
        panel.setAttribute("aria-hidden", "true")
      }
    })
  }

  /**
   * アクセシビリティ属性を更新
   * @param {Element} selectedTab - 選択されたタブ
   */
  updateAccessibility(selectedTab) {
    this.tabTargets.forEach(tab => {
      const isSelected = tab === selectedTab
      this.setAriaAttributes(tab, {
        selected: isSelected
      })
    })
  }

  /**
   * キーボードイベントハンドラー
   * @param {KeyboardEvent} event - キーボードイベント
   * @param {number} currentIndex - 現在のタブインデックス
   */
  handleKeydown(event, currentIndex) {
    let newIndex = currentIndex

    switch (event.key) {
      case 'ArrowLeft':
        event.preventDefault()
        newIndex = currentIndex > 0 ? currentIndex - 1 : this.tabTargets.length - 1
        break
      case 'ArrowRight':
        event.preventDefault()
        newIndex = currentIndex < this.tabTargets.length - 1 ? currentIndex + 1 : 0
        break
      case 'Home':
        event.preventDefault()
        newIndex = 0
        break
      case 'End':
        event.preventDefault()
        newIndex = this.tabTargets.length - 1
        break
      case 'Enter':
      case ' ':
        event.preventDefault()
        this.selectTab(this.tabTargets[currentIndex])
        return
      default:
        return
    }

    const newTab = this.tabTargets[newIndex]
    if (newTab) {
      this.selectTab(newTab)
      this.focusElement(newTab)
    }
  }

  /**
   * プログラムでタブを選択
   * @param {number|string} indexOrId - タブのインデックスまたはパネルID
   */
  selectTabByIndex(indexOrId) {
    let targetTab = null

    if (typeof indexOrId === 'number') {
      targetTab = this.tabTargets[indexOrId]
    } else {
      targetTab = this.tabTargets.find(tab =>
        this.getDataAttribute(tab, 'panel') === indexOrId
      )
    }

    if (targetTab) {
      this.selectTab(targetTab)
    }
  }
}
