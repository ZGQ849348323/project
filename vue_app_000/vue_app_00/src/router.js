import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Home from "./components/weixin/Home.vue"



// 自己做的项目
import index from "./components/shopping/index.vue"
import web from "./components/shopping/home/web.vue"
import Tab from "./components/shopping/home/Tab.vue"


Vue.use(Router)
export default new Router({
  routes: [
    {path:'/Home',component:Home},
    {path:'/',component:HelloContainer},
    
    // 自己的项目
    {path:"/index",component:index},
    {path:"/web",component:web},
    {path:"/Tab",component:Tab},
  ]
})
