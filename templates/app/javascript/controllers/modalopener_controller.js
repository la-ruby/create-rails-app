import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    if ( $(this.element).children().length > 0) {
      let myModal = new bootstrap.Modal(this.element)
      myModal.show()
    }
  }
}
