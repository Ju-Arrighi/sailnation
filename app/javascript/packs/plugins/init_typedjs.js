import Typed from 'typed.js';

const initTyped = () => {
  const element = document.querySelector('.typed-js');
  if (element) {
    new Typed('.typed-js', {
      strings: [' Offer a Service ^1000', ' Search For a Service ^1000', ' Find the Right Service For You ^1000'],
      typeSpeed: 100,
      loop: true,
      smartBackspace: true,
      showCursor: false,
    });
  }
};

export { initTyped };