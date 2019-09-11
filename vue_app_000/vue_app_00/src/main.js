import Vue from 'vue'
import App from './App.vue'
import router from './router'
import Vuex  from 'vuex';

// 引用第三方组件vant
import Vant from 'vant';
import 'vant/lib/index.css';
Vue.use(Vant);

// 进度条
import { Progress } from 'vant';

Vue.use(Progress);
// 引入第三方组件库 mint-ui
// 1：完整引入mint-ui组件库中所有组件
import MintUI from "mint-ui"
// 2：单独引入mint-ui组件库中的样式文件
import "mint-ui/lib/style.css"
// 3：将mint-ui注册到Vue实例中
Vue.use(MintUI)
// 4:将字体图标引入到当前项目中
import "./font/iconfont.css"
// 5:引入axios 第三方ajax模块
import axios from "axios"
// 6:配置axios 基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/"
// 7:配置axios 保存session信息
axios.defaults.withCredentials=true
// 8:将axios 注册vue 实例中
// 由于axios不支持 use 将实例添加vue原型
Vue.prototype.axios =axios

Vue.config.productionTip = false

// Vuex
Vue.use(Vuex)

const store = new Vuex.Store({
  state: {
    // count: 0
    selected:'home'
  },
  mutations: {
    // increment (state) {
    //   state.count++
    // }
  },
  getters: {
    getSelected(state) {
      return state.selected; 
    }
  },
  mutations: {
    changeSelected (state,val) {
      state.selected=val
    }
  },
  // getters: {
  //   doneTodos: state => {
  //     return state.todos.filter(todo => todo.done)
  //   }
  // }

})

// Vue.prototype.store = store;


new Vue({
  store,
  router,
  render: h => h(App)
}).$mount('#app')
