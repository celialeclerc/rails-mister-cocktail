import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Have a drink", "A Gin Tonic ?", "A Sex On The Beach ?"],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };
