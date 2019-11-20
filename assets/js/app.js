// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.scss"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"

// Import Vue and Example Component
import Vue from "vue";
import Example from '@/components/Example';

Vue.config.productionTip = false;
Vue.component(Example.name, Example); // Registrar el componente de forma global

window.Vue = Vue;
new Vue({ el: '#app' });

// Usar render function
/*
import Message from "./components/Message.vue";

// Create Vue instance and mounted in app div.
new Vue({
  render: h => h(Message)
}).$mount("#app")*/

// Cargar recursivamente con webpack
/*const files = require.context('./components/', true, /\.vue$/i);
files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));
document.addEventListener('DOMContentLoaded', function(event) {
  const app = new Vue({
      el: '#app',
  });
});
console.log(files.keys());*/


