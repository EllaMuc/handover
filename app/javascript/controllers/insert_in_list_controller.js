import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ["items", "form"]
  connect() {
    console.log('i am connects to the stimulus controller');
    console.log("my form", this.formTarget)
    console.log("my form", this.itemsTarget)
    console.log('my controller', this.element)
  }
  send(event){
    console.log(event)
  }
}
