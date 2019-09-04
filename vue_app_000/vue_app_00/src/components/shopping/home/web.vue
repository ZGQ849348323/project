<template>
  <div>
	  <search></search>
    <div class="top"></div>
		<swipe></swipe>
    <div class="bg-e6">
      <yuan></yuan>
      <div class="jianianhua"></div>
      <table6></table6>
      <div class="miaosha"><img src="../../../img/sha.png" alt=""><span>今日秒杀</span></div>
      <Tab></Tab>
      <div class="miaosha mt-10"><img src="../../../img/sha.png" alt=""><span>今日推荐</span></div>
      <recommend></recommend>
      <Tab2></Tab2>
      <div class="miaosha mt-10"><img src="../../../img/sha.png" alt=""><span>为你推荐</span></div>
      <list></list>
    </div>   
  </div>
</template>
<script>
import search from './search'
import swipe from './swipe'
import yuan from "./yuan"
import table6 from "./table6"
import Tab from "./Tab"
import recommend from "./recommend"
import Tab2 from "./Tab2"
import list from "./list"
export default {
  data() {
    return {};
  },
  components:{
	  // 顶部搜索栏
	  search:search,
	  //轮播图组件
    swipe:swipe,
    // 圆
    yuan:yuan,
    // table66
    table6:table6,
    // tab
    Tab:Tab,
    recommend:recommend,
    Tab2:Tab2,
    list:list
  }
};
</script>
<style scoped>
.mint-tab-container{
  overflow: visible !important;
}
.top{
	width: 100%;
	height: 160px;
	background-color: #964B00;
}
.bg-e6{
  background: #e6e6e6;
  height: 100%;
}
.jianianhua{
  width: 90%;
  margin:0 auto;
  margin-top: 20px;
  height: 60px;
  border: 1px solid #8B0000;
  border-radius: 30px;
}
.miaosha{
  margin: 0 auto;
  text-align: center;
  width: 90%;
  height: 46px;
  background: #fff;
  
}
.miaosha img{
  padding-right:8px; 
  padding-top: 15px;
}
.miaosha span{
  margin: 0;
  font-size: 16px;
}
.mt-10{
  margin-top: 10px;
}
.van-search {
	width: 100%;
  position: fixed;
  top: 0;
  background-color: #e6e6e6 !important;
  z-index: 9999;
  opacity: 0.9;
}

</style>