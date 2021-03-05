// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import 'bootstrap';
// import AOS from 'aos';
import { initAos } from '../aosLib';
// import 'aos/dist/aos.css'; // You can also use <link> for styles
// ..

document.addEventListener('turbolinks:load', () => {
      // e.preventDefault();
    initAos();
});
