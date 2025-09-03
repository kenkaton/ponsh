import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["filter", "item", "itemContainer", "resultCount", "noResults", "priceRange", "priceDisplay"]

  connect() {
    this.updateResults()
    this.updatePriceDisplay()
  }

  filter(event) {
    event.preventDefault()
    this.updateResults()
  }

  filterByPrice(event) {
    this.updatePriceDisplay()
    this.updateResults()
  }

  sortItems(event) {
    const sortType = event.target.value
    this.sortItemsByType(sortType)
  }

  updateResults() {
    const activeFilters = this.getActiveFilters()
    const maxPrice = this.getPriceFilter()
    let visibleCount = 0

    this.itemTargets.forEach((item) => {
      const isVisible = this.shouldShowItem(item, activeFilters, maxPrice)

      if (isVisible) {
        item.classList.remove("hidden")
        visibleCount++
      } else {
        item.classList.add("hidden")
      }
    })

    // 結果数表示の更新
    if (this.hasResultCountTarget) {
      this.resultCountTarget.textContent = visibleCount
    }

    // 結果なし表示の制御
    if (this.hasNoResultsTarget) {
      if (visibleCount === 0) {
        this.noResultsTarget.classList.remove("hidden")
      } else {
        this.noResultsTarget.classList.add("hidden")
      }
    }
  }

  getActiveFilters() {
    const filters = {
      volume: [],
      rice: [],
      platform: [],
      sakeType: []
    }

    this.filterTargets.forEach((filter) => {
      if (filter.checked) {
        const filterType = filter.dataset.filterType
        const filterValue = filter.dataset.filterValue

        if (filters[filterType]) {
          filters[filterType].push(filterValue)
        }
      }
    })

    return filters
  }

  shouldShowItem(item, filters, maxPrice) {
    // 各フィルタタイプでAND条件、同一タイプ内でOR条件

    // 価格フィルタ
    if (maxPrice) {
      const itemPrice = parseInt(item.dataset.price, 10)
      if (itemPrice > maxPrice) {
        return false
      }
    }

    // 内容量フィルタ
    if (filters.volume.length > 0) {
      const itemVolume = item.dataset.volume
      if (!filters.volume.includes(itemVolume)) {
        return false
      }
    }

    // 原料米フィルタ
    if (filters.rice.length > 0) {
      const itemRice = item.dataset.rice
      if (!itemRice || !filters.rice.includes(itemRice)) {
        return false
      }
    }

    // プラットフォームフィルタ
    if (filters.platform.length > 0) {
      const itemPlatform = item.dataset.platform
      if (!filters.platform.includes(itemPlatform)) {
        return false
      }
    }

    // 酒類分類フィルタ
    if (filters.sakeType.length > 0) {
      const itemSakeType = item.dataset.sakeType
      if (!itemSakeType || !filters.sakeType.includes(itemSakeType)) {
        return false
      }
    }

    return true
  }

  updateCounters() {
    // 各フィルタの該当件数を更新
    this.counterTargets.forEach((counter) => {
      const filterType = counter.dataset.counterType
      const filterValue = counter.dataset.counterValue

      let count = 0
      this.itemTargets.forEach((item) => {
        if (!item.classList.contains("hidden")) {
          if (filterType === "volume" && item.dataset.volume === filterValue) count++
          if (filterType === "rice" && item.dataset.rice === filterValue) count++
          if (filterType === "platform" && item.dataset.platform === filterValue) count++
          if (filterType === "sakeType" && item.dataset.sakeType === filterValue) count++
        }
      })

      counter.textContent = `(${count})`
    })
  }

  getPriceFilter() {
    if (this.hasPriceRangeTarget) {
      return parseInt(this.priceRangeTarget.value, 10)
    }
    return null
  }

  updatePriceDisplay() {
    if (this.hasPriceRangeTarget && this.hasPriceDisplayTarget) {
      const price = parseInt(this.priceRangeTarget.value, 10)
      this.priceDisplayTarget.textContent = `上限: ¥${price.toLocaleString()}`
    }
  }

  sortItemsByType(sortType) {
    const container = this.hasItemContainerTarget ? this.itemContainerTarget : this.element
    const items = Array.from(this.itemTargets)

    items.sort((a, b) => {
      switch (sortType) {
        case 'price-asc':
          return parseInt(a.dataset.price, 10) - parseInt(b.dataset.price, 10)
        case 'price-desc':
          return parseInt(b.dataset.price, 10) - parseInt(a.dataset.price, 10)
        case 'value':
          return (parseInt(b.dataset.valueScore, 10) || 0) - (parseInt(a.dataset.valueScore, 10) || 0)
        case 'review':
          const aReview = parseFloat(a.dataset.reviewAverage) || 0
          const bReview = parseFloat(b.dataset.reviewAverage) || 0
          return bReview - aReview
        case 'recent':
        default:
          const aTime = parseInt(a.dataset.updatedAt, 10) || 0
          const bTime = parseInt(b.dataset.updatedAt, 10) || 0
          return bTime - aTime
      }
    })

    items.forEach(item => container.appendChild(item))
  }

  clearFilters(event) {
    event.preventDefault()

    this.filterTargets.forEach((filter) => {
      filter.checked = false
    })

    // 価格範囲をリセット
    if (this.hasPriceRangeTarget) {
      this.priceRangeTarget.value = this.priceRangeTarget.max
      this.updatePriceDisplay()
    }

    // ソートをリセット
    const sortSelect = this.element.querySelector('select')
    if (sortSelect) {
      sortSelect.value = 'recent'
      this.sortItemsByType('recent')
    }

    this.updateResults()
  }

  toggleFilterPanel(event) {
    event.preventDefault()
    const panel = this.element.querySelector(".filter-panel")

    if (panel) {
      panel.classList.toggle("hidden")
      panel.classList.toggle("block")
    }
  }
}
