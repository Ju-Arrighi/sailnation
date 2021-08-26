import Typed from 'typed.js';

const initTyped = () => {
  const element = document.querySelector('.typed-js');
  if (element) {
    new Typed('.typed-js', {
      strings: [' Offer a Service', ' Search For a Service', ' Find the Right Service For You'],
      typeSpeed: 100,
      loop: true,
      smartBackspace: true,
      showCursor: false,
    });
  }
};

export { initTyped };