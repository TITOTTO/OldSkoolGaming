import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() { console.log("test")}
    toggleForm(event) {
        const div = document.getElementsByClassName("test")[0]
        div.classList.toggle("d-none")
        event.preventDefault()
        event.stopPropagation()
    }
}
