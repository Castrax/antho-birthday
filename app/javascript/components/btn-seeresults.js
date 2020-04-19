const btnResults = () => {
  const btn = document.querySelector('.btn-seeresults');
  const percent = document.querySelector('.percent');
  const div1 = document.querySelector('.winner-loser-waiting');
  const div2 = document.querySelector('.results-category');
  if (btn) {
    btn.addEventListener('click', (event) => {
      div1.style.display = 'block';
      div2.style.display = 'block';
    });
  }
  if (percent) {
    percent.addEventListener('click', (event) => {
      div1.style.display = 'block';
      div2.style.display = 'block';
    });
  }
};

export { btnResults };
