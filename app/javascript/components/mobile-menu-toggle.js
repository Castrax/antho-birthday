const classToggle = () => {
  const nav = document.querySelector('.Navbar__Items');
  nav.classList.toggle('Navbar__ToggleShow');
  document.querySelector('.Navbar__Link-toggle').addEventListener('click', classToggle);
};

export { classToggle };
