import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log('Hello connected');
    this.element.textContent = "Hello World!"
  }
}
