<template>
  <div>
    <div class="bigBox" >
      <div class="top">
        <img src="../../../assets/timg.jpg" alt />
      </div>
      <ul class="bottom container">
        <li v-for="(item,i) of list" :key="i">
            <img :src="item.img" alt="">
            <span>{{item.title}}</span>
            <h4>{{item.price}}</h4>
            <p>{{item.p}}</p>
        </li>  
      </ul>
    </div>
    <div class="bigBox" >
      <div class="top">
        <img src="../../../assets/timg.jpg" alt />
      </div>
      <ul class="bottom container">
        <li v-for="(item,i) of list2" :key="i">
            <img :src="item.img" alt="">
            <span>{{item.title}}</span>
            <h4>{{item.price}}</h4>
            <p>{{item.p}}</p>
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
        {img:require("../../../assets/kou1.jpg"),title:"迪奥999Dior口红唇膏烈艳蓝金 哑光滋润520/888/999送礼礼品套装 520+999滋润",price:"¥59",p:"赚2.58"},
        {img:require("../../../assets/kou2.jpg"),title:"圣罗兰（YSL）纯口红1#（正红色）3.8g",price:"¥49",p:"赚2.28"},
        {img:require("../../../assets/kou3.jpg"),title:"迪奥（Dior）烈艳蓝金唇膏-哑光999# 3.5g 传奇红（口红 雾面质地 显色持久 显白 正红色 李佳琦推荐）",price:"¥29.9",p:"赚0.45"},
        {img:require("../../../assets/kou2.jpg"),title:"月饼 稻香村月饼礼盒中秋大礼包蛋黄莲蓉家团圆780g",price:"¥54",p:"赚2.58"},
        {img:require("../../../assets/kou1.jpg"),title:"北京稻香村 月饼礼盒 团圆中秋月饼640g",price:"¥32",p:"赚2.58" }              
      ],
      list2:[       
        {img:require("../../../assets/wawa.jpg"),title:"喜迪奇（XIDIQ）会说话的智能晴雪芭比娃娃洋娃娃套装仿真女孩公主",price:"¥59",p:"赚2.58"},
        {img:require("../../../assets/wawa2.jpg"),title:"圣罗兰（YSL）纯口红1#（正红色）3.8g",price:"¥49",p:"赚2.28"},
        {img:require("../../../assets/wawa3.jpg"),title:"0厘米晴雪芭比娃娃套装大礼盒公主单个大号婚纱换装女孩玩具公主",price:"¥29.9",p:"赚0.45"},
        {img:require("../../../assets/kou2.jpg"),title:"月饼 稻香村月饼礼盒中秋大礼包蛋黄莲蓉家团圆780g",price:"¥54",p:"赚2.58"},
        {img:require("../../../assets/kou1.jpg"),title:"北京稻香村 月饼礼盒 团圆中秋月饼640g",price:"¥32",p:"赚2.58" }           
      ]
    }
  }
};
</script>
<style scoped>
.bigBox{
  width: 90%;
  height: 270px;
  background-color: #fff;
  margin: 10px auto;
}
.top{
  width: 100%;
  height: 140px;
}
.top>img{
  width: 100%;
  height: 100%;
  margin: 0 auto;
}
.bottom{
  width: 100%;
  display: flex;
  overflow: scroll;
}
.container::-webkit-scrollbar {
  display: none;
}
.bottom>li{
  height: 130px;
  width: 100px;
  flex-shrink: 0;
  margin-left: 5px;
  padding:5px;
}
.bottom>li>img{
  width: 100%;
  height: 60px;
}
.bottom>li>span{
  width: 100px;
  overflow:hidden;
  text-overflow:ellipsis;
  display:-webkit-box;
  /*控制在3行*/
  -webkit-line-clamp:2;
  -webkit-box-orient:vertical;
  margin: 0;
  font-size: 1px;
}
.bottom>li>h4{
  margin: 0;
  font-size: 10px;
  font-weight: 100;
  margin-top: 5px;
}
.bottom>li>p{
  margin: 0;
  font-size: 6px;
  color: #f00;
}
</style>