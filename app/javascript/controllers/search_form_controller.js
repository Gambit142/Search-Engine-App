import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-form"
export default class extends Controller {
  static targets = [ "form", "userInput", "submitButton" ]
  timeout;

  postQuery() {
    const location = window.location.hostname;
    const data = {
      name: this.userInputTarget.value
    }
    try {
      fetch('/queries', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: JSON.stringify(data)
      })
    } catch (error) {
      return error;
    }
  }

  submit() {
    this.postQuery();
    this.formTarget.requestSubmit();
  }

  search() {
    clearTimeout(this.timeout);
    this.timeout = setTimeout(() => {
      this.formTarget.requestSubmit();
    }, 1000);
  }
}
