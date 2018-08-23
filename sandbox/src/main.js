import Vue from 'vue'
import titleMixin from './mixins/titleMixin'

import Index from './components/Index/Index.vue'

Vue.mixin(titleMixin)

Vue.config.productionTip = false

new Vue({
  render: h => h(Index)
}).$mount('#app')
