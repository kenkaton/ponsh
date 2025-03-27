import { Controller } from "@hotwired/stimulus"

// Toggles elements visibility by adding/removing the 'hidden' class
export default class extends Controller {
  static targets = ["element"]

  connect() {
  }

  toggle() {
    if (this.hasElementTarget) {
      this.elementTarget.classList.toggle("hidden")
    } else {
    }
  }

  show() {
    if (this.hasElementTarget) {
      this.elementTarget.classList.remove("hidden")
    }
  }

  hide() {
    if (this.hasElementTarget) {
      this.elementTarget.classList.add("hidden")
    }
  }
}
