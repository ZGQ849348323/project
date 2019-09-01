<template>
  <div>
    <div class="bigbox">
      <div class="top">
        <img src="../../../assets/timg.jpg" alt />
      </div>
      <ul class="bottom">
        <li v-for="(item,n) of list" :key="n">
            <img :src="item.img" alt="">
            <span>{{item.title}}</span>
            <h4>{{item.price}}</h4>
            <p>{{item.p1}}</p>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: [
        {img:require("../../../assets/kou1.jpg"),title:"迪奥999Dior口红唇膏烈艳蓝金 哑光滋润520/888/999送礼礼品套装 520+999滋润",price:"¥59",p1:"赚2.58"},
        {img:require("../../../assets/kou1.jpg"),title:"圣罗兰（YSL）纯口红1#（正红色）3.8g",price:"¥49",p1:"赚2.28"},
        {img:require("../../../assets/kou1.jpg"),title:"迪奥（Dior）烈艳蓝金唇膏-哑光999# 3.5g 传奇红（口红 雾面质地 显色持久 显白 正红色 李佳琦推荐）",price:"¥29.9",p1:"赚0.45"},
        {img:require("../../../assets/kou1.jpg"),title:"月饼 稻香村月饼礼盒中秋大礼包蛋黄莲蓉家团圆780g",price:"¥54",p1:"赚2.58"},
        {img:require("../../../assets/kou1.jpg"),title:"北京稻香村 月饼礼盒 团圆中秋月饼640g",price:"¥32",p1:"赚2.58"    }       
      ]
    }
  }
};
</script>
<style scoped>
.bigbox {
  margin: auto;
  width: 90%;
  height: 300px;
  background: #fff;
  border-radius: 10px;
}
.top {
  height: 100px;
}
.top > img {
  width: 100%;
  height: 100%;
}
.bottom {
  height: 120px;
  display: flex;
  /* overflow-x: scroll; */
}
li{
    width:120px;
    height: 120px;
    
    flex-shrink: 0;
}
li>img{
    width: 90%;
    height: 60px;
    margin: 0 auto;
}
li>span{
    width: 110px;
    margin: 8px auto;

}
li>h4{
    font-size: 12px;
    width:80px;/*要显示文字的宽度*/
    overflow:hidden; /*超出的部分隐藏起来。*/ 
    white-space:nowrap;/*不显示的地方用省略号...代替*/
    text-overflow:ellipsis;
    height: 20px !important;
    display: block;
}
li>p{
    font-size: 8px;
}
</style>