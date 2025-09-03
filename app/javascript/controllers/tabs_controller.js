import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["tab", "panel"]

  connect() {
    this.showPanel(this.tabTargets[0])
  }

  select(event) {
    event.preventDefault()
    this.showPanel(event.currentTarget)
  }

  showPanel(selectedTab) {
    const panelId = selectedTab.dataset.panel

    this.tabTargets.forEach((tab) => {
      if (tab === selectedTab) {
        tab.classList.add("border-blue-500", "text-gray-700")
        tab.classList.remove("text-gray-500")
        tab.setAttribute("aria-selected", "true")
      } else {
        tab.classList.remove("border-blue-500", "text-gray-700")
        tab.classList.add("text-gray-500")
        tab.setAttribute("aria-selected", "false")
      }
      tab.classList.remove("border-b-2")
      if (tab === selectedTab) {
        tab.classList.add("border-b-2")
      }
    })

    this.panelTargets.forEach((panel) => {
      if (panel.id === panelId) {
        panel.classList.remove("hidden")
        panel.classList.add("block")
      } else {
        panel.classList.add("hidden")
        panel.classList.remove("block")
      }
    })
  }
}