const btnResults = () => {
  const btn = document.querySelector('.btn-seeresults');
  btn.addEventListener('click', (event) => {
    const div1 = document.querySelector('.winner-loser-waiting');
    const div2 = document.querySelector('.results-category');
    div1.style.display = 'block';
    div2.style.display = "block";
  });
};

export { btnResults };
