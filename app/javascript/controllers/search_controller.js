import { Controller } from "@hotwired/stimulus"

// 検索フォームの表示/非表示を切り替えるコントローラー
export default class extends Controller {
  static targets = ["container"]

  connect() {
    // ヘッダーの検索アイコンクリックイベントの監視
    const searchLinks = document.querySelectorAll('header a[href*="/brands"]')
    searchLinks.forEach(link => {
      link.addEventListener('click', (e) => {
        // 検索アイコンをクリックした場合のみイベントを処理
        if (e.target.closest('svg') || e.target.closest('header a[href*="/brands"]')) {
          e.preventDefault()
          this.toggleSearch()
        }
      })
    })

    // Escキーでの検索フォーム非表示
    document.addEventListener('keydown', (e) => {
      if (e.key === 'Escape') {
        this.hideSearch()
      }
    })

    // 検索フォーム以外をクリックしたときの処理
    document.addEventListener('click', (e) => {
      // 検索フォームと検索アイコン以外をクリックした場合のみ非表示
      if (!e.target.closest('#search-container') &&
          !e.target.closest('header a[href*="/brands"]') &&
          !e.target.closest('svg')) {
        this.hideSearch()
      }
    })
  }

  toggleSearch() {
    if (this.hasContainerTarget) {
      this.containerTarget.classList.toggle('hidden')

      // 検索フォームが表示されたら、入力欄にフォーカス
      if (!this.containerTarget.classList.contains('hidden')) {
        const input = this.containerTarget.querySelector('input[type="text"]')
        if (input) input.focus()
      }
    }
  }

  hideSearch() {
    if (this.hasContainerTarget && !this.containerTarget.classList.contains('hidden')) {
      this.containerTarget.classList.add('hidden')
    }
  }
}
