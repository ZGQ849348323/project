<template>
  <div>
    <div class="box container">
      <div
        v-for="(item,i) of indexList"
        :key="i"
        :data-index="i"
        @click="isActive(i)"
        :class="item.isshow?'destTab active':'destTab'"
        
      >
        <h6>{{item.tet}}</h6>
        <span>{{item.p1}}</span>
      </div>
    </div>
    <!-- <div class="list" v-show="arr[n].bol" v-for="(elem,n) of arr" :key="n"> -->
    <div class="list" v-show="lists[n].bol" v-for="(elem,n) of lists" :key="n">
      <div v-for="(item,i) of elem.list" :key="i">
        <img :src="item.img" alt />
        <div class="listLeft">
         
          <h3>{{item.title}}</h3>
          <div>
            <span>{{item.price}}</span>
            <del>{{item.del}}</del>
            <van-button round type="danger" size="mini">即将开抢</van-button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      
      indexList: [
        { tet: "昨日15:00", p1: "昨日精选", isshow: true },
        { tet: "昨日20:00", p1: "昨日精选", isshow: false },
        { tet: "昨日22:00", p1: "昨日精选", isshow: false },
        { tet: "10:00", p1: "抢购中", isshow: false },
        { tet: "15:00", p1: "即将开抢", isshow: false },
        { tet: "20:00", p1: "即将开抢", isshow: false },
        { tet: "22:00", p1: "即将开抢", isshow: false },
        { tet: "明日10:00", p1: "即将开抢", isshow: false },
        { tet: "明日15:00", p1: "即将开抢", isshow: false },
        { tet: "明日20:00", p1: "即将开抢", isshow: false }
      ],
      lists: [
        {
          bol: true,
          list: [
            {
              img: require("../../../assets/listR.jpg"),
              title: "金稻发帽敢于冒干发巾可爱图二朵女士吸水毛巾速干",
              price: "¥ 29.9",
              del: "¥ 38"
            },
            {
              img: require("../../../assets/listR2.jpg"),
              title:
                "飞利浦（PHILIPS）男士电动剃须刀全身水洗干湿双剃剃胡刀胡须刀刮胡刀S1050/02",
              price: "¥ 45",
              del: "¥ 58"
            },
          {img:require("../../../assets/listR5.jpg"),title:" 展艺 马苏里拉 450g （再制干酪 芝士碎 披萨拉丝奶酪 烘焙材料）",price:"¥ 29.9",del:"¥ 38"},

          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/list3.jpg"),
              title:
                "金稻发帽敢于冒干发巾金号毛巾家纺 提缎纯棉条纹款浴帽 吸水干发帽 蓝色 100g",
              price: "¥ 29.9",
              del: "¥ 38"
            },
            {
              img: require("../../../assets/listR4.jpg"),
              title: "巴布豆婴儿浴巾连帽宝宝浴巾儿童洗澡巾 黄色 140*70cm",
              price: "¥ 45",
              del: "¥ 58"
            },
          {img:require("../../../assets/listR5.jpg"),title:" 展艺 马苏里拉 450g （再制干酪 芝士碎 披萨拉丝奶酪 烘焙材料）",price:"¥ 29.9",del:"¥ 38"},

          ]
        },
        {
          bol: false,
          list:[
          {img:require("../../../assets/listR5.jpg"),title:" 展艺 马苏里拉 450g （再制干酪 芝士碎 披萨拉丝奶酪 烘焙材料）",price:"¥ 29.9",del:"¥ 38"},
           {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            
        ],
        },
        {
          bol: false,
          list:[
          {img:require("../../../assets/listR7.jpg"),title:"澳纽宝 多味披萨套餐 5盒装 约17厘米 成品披萨 含披萨刀",price:"¥ 29.9",del:"¥ 38"},
           {img:require("../../../assets/listR8.jpg"),title:"意大利L'ALPINA袋鼠 双肩包女真皮新款头层牛皮女包韩版休闲百搭背包女 黑色",price:"¥ 45",del:"¥ 58"},
            {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            
        ],
        },
        {
          bol: false,
          list:[
          {img:require("../../../assets/listR5.jpg"),title:" 展艺 马苏里拉 450g （再制干酪 芝士碎 披萨拉丝奶酪 烘焙材料）",price:"¥ 29.9",del:"¥ 38"},
           {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            
        ],
        },
        {
          bol: false,
          list:[
           {img:require("../../../assets/listR7.jpg"),title:"澳纽宝 多味披萨套餐 5盒装 约17厘米 成品披萨 含披萨刀",price:"¥ 29.9",del:"¥ 38"},
           {img:require("../../../assets/listR8.jpg"),title:"意大利L'ALPINA袋鼠 双肩包女真皮新款头层牛皮女包韩版休闲百搭背包女 黑色",price:"¥ 45",del:"¥ 58"},
            {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            
        ],
        },
        {
          bol: false,
          list:[
          {img:require("../../../assets/list3.jpg"),title:"金稻发帽敢于冒干发巾金号毛巾家纺 提缎纯棉条纹款浴帽 吸水干发帽 蓝色 100g",price:"¥ 29.9",del:"¥ 38"},
           {img:require("../../../assets/listR4.jpg"),title:"巴布豆婴儿浴巾连帽宝宝浴巾儿童洗澡巾 黄色 140*70cm",price:"¥ 45",del:"¥ 58"},
            {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            
        ],
        },
        {
          bol: false,
          list:[
           {img:require("../../../assets/listR5.jpg"),title:" 展艺 马苏里拉 450g （再制干酪 芝士碎 披萨拉丝奶酪 烘焙材料）",price:"¥ 29.9",del:"¥ 38"},
           {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            
        ],
        },
        {
          bol: false,
          list:[
          {img:require("../../../assets/listR7.jpg"),title:"澳纽宝 多味披萨套餐 5盒装 约17厘米 成品披萨 含披萨刀",price:"¥ 29.9",del:"¥ 38"},
           {img:require("../../../assets/listR8.jpg"),title:"意大利L'ALPINA袋鼠 双肩包女真皮新款头层牛皮女包韩版休闲百搭背包女 黑色",price:"¥ 45",del:"¥ 58"},
            {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            
        ],
        },
        {
          bol: false,
          list:[
          {img:require("../../../assets/listR5.jpg"),title:" 展艺 马苏里拉 450g （再制干酪 芝士碎 披萨拉丝奶酪 烘焙材料）",price:"¥ 29.9",del:"¥ 38"},
           {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            {img:require("../../../assets/listR6.jpg"),title:" 俏侬 手抓饼 原味 1000g 10片装（2件起售）烘焙食材",price:"¥ 45",del:"¥ 58"},
            
        ],
        },

      ]
    };
  },
  methods: {
    isActive(i) {
      // let dom =dataset.index;
      let dom = i;
      console.log(i);
      for (var i = 0; i < this.indexList.length; i++) {
        this.indexList[i].isshow = false;
        this.lists[i].bol = false;
        if (dom == i) {
          this.indexList[i].isshow = true;
          this.lists[i].bol = true;

        }
      }
    },
  },
  created() {
   
  }
};
</script>
<style scoped>
.list > div {
  width: 90%;
  height: 110px;
  margin: 0 auto;
  background: #fff;
  display: flex;
  /* padding: 10px; */
  position: relative;
}
.list img {
  width: 30%;
  height: 100%;
  /* background: #f00; */
  margin-right: 10px;
}
.listLeft > div {
  position: absolute;
  bottom: 10px;
}
.listLeft > div > del {
  font-size: 8px;
  color: #000;
}
.listLeft > div > span {
  color: #f00;
  margin-right: 6px;
}
.listLeft > div > button {
  position: absolute;
    bottom: 0px;
    left: 118px;
    width: 78px;
    height: 21px;
}
.listLeft > div > button > span {
  font-size: 8px !important;
}
.list .listLeft {
  width: 70%;
  height: 100%;
  /* background: #f0f; */
}
.list .listLeft h3 {
  font-size: 13px;
  margin: 0;
  margin-top: 5px;
}
.list .listLeft span {
  font-size: 16px;
  display: inline;
}
.box {
  display: flex;
  overflow-x: scroll;
  width: 90%;
  margin: 0 auto;
}
.container::-webkit-scrollbar {
  display: none;
}
.box > div {
  flex-shrink: 0;
  width: 100px;
  height: 50px;
  /* background: pink; */
  margin-right: 10px;
}
h6 {
  margin: 0;
  margin-top: 9px;
  margin-bottom: 2px;
  font-size: 14px;
  text-align: center;
}
span {
  margin: 0 auto;
  display: block;
  width: 100%;
  font-size: 8px;
  text-align: center;
}
.active {
  /* color: #23beae;
  border-bottom: 2px solid #23beae; */
  background-color: #f00;
  color: #fff !important;
}
.destTab {
  float: left;
  /* display: inline-block; */
  font-size: 0.4rem;
  width: 25%;
  height: 1.07rem;
  text-align: center;
  line-height: 1.07rem;
  color: #000;
  /* color: #666666; */
}
.van-progress{
  position: relative;
  top: 70px;
}
</style>