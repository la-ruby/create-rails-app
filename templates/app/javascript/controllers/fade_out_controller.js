import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    let that = this
    setTimeout(function() {
      $(that.element).addClass('d-none')
    }, 2000)
  }
}
