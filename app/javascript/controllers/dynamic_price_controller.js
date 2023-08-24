import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dynamic-price"
export default class extends Controller {
  static targets = [ 'startDateInput', 'endDateInput', 'priceHolder' ]
  static values = { price: Number }
  
  connect() {
    console.log("hello le monde");
  }

  updatePrice() {
    const startDate = this.startDateInputTarget.value
    const endDate = this.endDateInputTarget.value
    const days = this.#diffInDays(startDate, endDate)
    const totalValue = this.#totalValue(days)
    this.#setPriceValue(totalValue)
  }

  #setPriceValue(value) {
    this.priceHolderTarget.innerText = value
    }

  #diffInDays(startDate, endDate) {
    if (startDate && endDate) {
      const diffTime = (Date.parse(endDate) - Date.parse(startDate))

      let days = Math.ceil(diffTime / (1000 * 60 * 60 * 24))
    } else {
      let days = 0
    }
      return days + 1
  }

  #totalValue(days) {
    return (days) * this.priceValue
    }

}
