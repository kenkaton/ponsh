import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["mainImage", "thumbnail"]

  switchImage(event) {
    event.preventDefault()

    const imageUrl = event.currentTarget.dataset.imageUrl
    const mainImage = this.mainImageTarget

    // メイン画像を切り替え
    mainImage.src = imageUrl

    // 全サムネイルの選択状態をリセット
    this.thumbnailTargets.forEach(thumbnail => {
      thumbnail.classList.remove("border-blue-500")
      thumbnail.classList.add("border-gray-200")
    })

    // クリックされたサムネイルを選択状態にする
    event.currentTarget.classList.remove("border-gray-200")
    event.currentTarget.classList.add("border-blue-500")
  }
}
