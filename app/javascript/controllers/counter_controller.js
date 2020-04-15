import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  connect() {
    setInterval(this.refresh, 5000);
  }

  refresh() {
    fetch('/answers', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
      });
  }
}
