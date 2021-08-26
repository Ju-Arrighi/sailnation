import Typed from 'typed.js';

const headerTyped = () => {
  const element = document.querySelector('.typed-header');
  if (element) {
    new Typed('.typed-header', {
      strings: ['For You ^600', 'For Your Boat &#x2693; ^800'],
      typeSpeed: 120,
      loop: true,
      smartBackspace: true,
      showCursor: true,
    });
  }
};

export { headerTyped };