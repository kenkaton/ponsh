import BaseController from "controllers/base_controller"

/**
 * ImageGalleryController - 画像ギャラリーコントローラー
 *
 * 機能:
 * - メイン画像の切り替え
 * - サムネイルの選択状態管理
 * - クリックイベント処理
 */
export default class extends BaseController {
  static targets = ["mainImage", "thumbnail"]

  /**
   * 画像切り替えイベントハンドラー
   * @param {Event} event - クリックイベント
   */
  switchImage(event) {
    event.preventDefault()

    const imageUrl = this.getDataAttribute(event.currentTarget, 'imageUrl')
    if (!imageUrl) {
      this.logError('Image URL not found in data attributes')
      return
    }

    const mainImage = this.mainImageTarget
    if (!mainImage) {
      this.logError('Main image target not found')
      return
    }

    // メイン画像を切り替え
    this.updateMainImage(mainImage, imageUrl)

    // サムネイルの選択状態を更新
    this.updateThumbnailSelection(event.currentTarget)

    this.logDebug('Image switched to:', imageUrl)
  }

  // ヘルパーメソッド

  /**
   * メイン画像を更新
   * @param {Element} mainImage - メイン画像要素
   * @param {string} imageUrl - 新しい画像URL
   */
  updateMainImage(mainImage, imageUrl) {
    mainImage.src = imageUrl
  }

  /**
   * サムネイルの選択状態を更新
   * @param {Element} selectedThumbnail - 選択されたサムネイル
   */
  updateThumbnailSelection(selectedThumbnail) {
    // 全サムネイルの選択状態をリセット
    this.thumbnailTargets.forEach(thumbnail => {
      thumbnail.classList.remove('border-blue-500')
      thumbnail.classList.add('border-gray-200')
    })

    // 選択されたサムネイルをアクティブ状態に
    selectedThumbnail.classList.remove('border-gray-200')
    selectedThumbnail.classList.add('border-blue-500')
  }
}
