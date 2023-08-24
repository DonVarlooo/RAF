import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="categories"
export default class extends Controller {
  static targets = ["cards"]


  connect() {
  }

  filter(event){
    event.preventDefault();
    const catogoryFilter = event.currentTarget.value;
    this.cardsTargets.forEach(card => {
      if (!card.innerText.includes(catogoryFilter)) {
        card.closest("#cards").classList.add("d-none")
      } else {
        card.closest("#cards").classList.remove("d-none")
      }
    });
  }

}
