import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-to"
export default class extends Controller {
  connect() {
  }
}
const application = application.start()
application.register('scroll-to', ScrollTo)
