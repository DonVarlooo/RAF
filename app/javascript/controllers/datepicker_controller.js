import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()


export default class extends Controller {
  static targets = ['startDateInput', 'endDateInput']

  connect() {
    flatpickr(this.startDateInputTarget, {
      altInput:        true,
      minDate:         "today",
      altFormat:       "F j, Y",
      dateFormat:      "Y-m-d",
    })
    flatpickr(this.endDateInputTarget, {
      altInput:        true,
      minDate:         'today',
      altFormat:       "F j, Y",
      dateFormat:      "Y-m-d",
    })
  }

  endDate() {
    flatpickr(this.endDateInputTarget, {
      altInput:        true,
      minDate:         this.startDateInputTarget.value,
      altFormat:       "F j, Y",
      dateFormat:      "Y-m-d",
    })
  }
}
