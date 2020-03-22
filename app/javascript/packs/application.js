import Vue from 'vue'

import Vuetify from 'vuetify'
import App from './app.vue'
import 'vuetify/dist/vuetify.min.css'

const vuetifyOptions = { }
Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#app',
    vuetify: new Vuetify(vuetifyOptions),
    render: h => h(App)
  })
})
