import Vue from 'vue'
import Vuetify from 'vuetify'
import App from './app.vue'
import 'vuetify/dist/vuetify.min.css'
import 'material-design-icons-iconfont/dist/material-design-icons.css'
import router from './routes.js'

const vuetifyOptions = { }
Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#app',
    router,
    vuetify: new Vuetify(vuetifyOptions),
    render: h => h(App)
  })
})
