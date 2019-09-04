import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"



// 自己做的项目
import index from "./components/shopping/index.vue"
import web from "./components/shopping/home/web.vue"
import TreeSelect from "./components/shopping/list/TreeSelect.vue"
import details from "./components/shopping/list/details.vue"


Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    
    // 自己的项目
    {path:"/index",component:index},
    {path:"/web",component:web},
    {path:"/TreeSelect",component:TreeSelect},
    {path:"/details",component:details,props:true}
  ]
})
