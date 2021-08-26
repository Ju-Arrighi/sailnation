import Typed from 'typed.js';

const headerTyped = () => {
  const element = document.querySelector('.typed-header');
  if (element) {
    new Typed('.typed-header', {
      strings: ['For You', 'For Your Boat'],
      typeSpeed: 120,
      loop: true,
      smartBackspace: true,
      showCursor: true,
    });
  }
};

export { headerTyped };