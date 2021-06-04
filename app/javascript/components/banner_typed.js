import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["guitars", "electric guitars", "basses", "drums", "violins"],
    typeSpeed: 75,
    loop: true
  });
}

export { loadDynamicBannerText };