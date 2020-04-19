import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  connect() {
    setInterval(this.refresh, 1000);
  }

  refresh = () => {
    const idCategory = document.querySelector('.category-title').dataset.jobCategory;
    const nbUsers = document.querySelector('.category-title').dataset.jobUsers;
    fetch(`/categories/${idCategory}/answers/`, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        const status = (data.length / nbUsers) * 100;
        const progressBar = document.querySelector('#progress-bar').firstElementChild;
        const percentDiv = document.querySelector('.percent');
        progressBar.setAttribute("style", `width: ${status}%`);
        percentDiv.innerHTML = `${Math.round(status)}% ont voté`;
        if (status === 100){
          const btn = document.querySelector('.btn-seeresults');
          btn.removeAttribute("disabled");
        }
      });
  }
}
