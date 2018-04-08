import Vue from 'vue'
import ElementUI from 'element-ui'
import '../dist/index.css'
import App from './App.vue'

Vue.use(ElementUI)

new Vue({
  el: '#app',
  render: h => h(App)
})
