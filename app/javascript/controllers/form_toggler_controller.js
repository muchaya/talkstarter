import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-toggler"
export default class extends Controller {
  static targets = ["form"]

  toggle(event) {
    event.preventDefault()

  
  }
}
