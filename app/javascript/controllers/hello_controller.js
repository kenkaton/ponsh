import { Controller } from "@hotwired/stimulus"

/**
 * HelloController - 開発用サンプルコントローラー
 *
 * 注意: このコントローラーは開発・テスト用のサンプルです。
 * 本番環境では削除することを推奨します。
 */
export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}
