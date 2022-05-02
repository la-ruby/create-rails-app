import * as Vue from 'vue'

document.addEventListener('turbo:load', () => {
  const element = document.getElementById('hello-vue-mount-point');
  if (element != null) {
    const app = Vue.createApp({
      data() {
        return { count: 1 }
      },
      created() {
        alert(`count is: ${this.count}`)
      }
    })
    const vm = app.mount(element)
  }
})
