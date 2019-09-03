<template>
  <div>
    <mt-header fixed title="分类" style="background:#fff;color:#000;" id="top"></mt-header>
    <search></search>
    <div id="bigBox" :style="{height:(screenHeight-152)+'px'}">
      <ul class="left">
        <li v-for="(item,i) of listL" :key="i" :data-index="i" @click="isActive(i)" :class="item.isshow?'destTab active':'destTab'">{{item.txt}}</li>
      </ul>
      <ul class="right" v-show="listR[n].bol" v-for="(item,n) of listR" :key="n">
        <li v-for="(elem,i) of item.list" :key="i">
          <table></table>
          <div class="a">
            <img :src="elem.img" alt="">
            <div>
              <span class="title">{{elem.title}}</span>
              <span class="price">{{elem.price}}</span>
              <p>{{elem.p}}</p>
            </div>
          </div>
        </li>       
      </ul>
    </div>
  </div>
</template>
<script>
import search from "./../home/search";
export default {
  data() {
    return {
      value: "",
      screenHeight: document.documentElement.clientHeight, // 屏幕高度
      listL: [
        { txt: "购虎国际", isshow: true },
        { txt: "水果生鲜", isshow: false },
        { txt: "食品保健", isshow: false },
        { txt: "个护化妆", isshow: false },
        { txt: "家具用品", isshow: false },
        { txt: "鞋包名品", isshow: false },
        { txt: "服装服饰", isshow: false },
        { txt: "运动户外", isshow: false },
        { txt: "母婴用品", isshow: false },
        { txt: "手机数码", isshow: false },
        { txt: "汽车用品", isshow: false },
        { txt: "奢饰品/...", isshow: false }
      ],
      listR: [
        {
          bol: true,
          list: [
            {
              img: require("../../../assets/milk.jpg"),
              title:
                "【乐荷】荷兰进口有机纯牛奶 儿童成长牛奶 学生营养早餐200*24盒",
              price: "¥160",
              p: "赚4.5"
            },
            {
              img: require("../../../assets/milk2.jpg"),
              title:
                "荷兰乳牛全进口牛奶整箱早餐脱脂牛奶网红抖音草莓纯牛奶香蕉24盒",
              price: "¥64",
              p: "赚4.5"
            }
          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/kou1.jpg"),
              title:
                "【乐荷】荷兰进口有机纯牛奶 儿童成长牛奶 学生营养早餐200*24盒",
              price: "¥160",
              p: "赚4.5"
            },
            {
              img: require("../../../assets/list1.jpg"),
              title:
                "完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",
              price: "¥58.8",
              p: "赚3.24"
            }
          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/kou1.jpg"),
              title:
                "迪奥999Dior口红唇膏烈艳蓝金 哑光滋润520/888/999送礼礼品套装 520+999滋润",
              price: "¥59",
              p: "赚2.58"
            },
            {
              img: require("../../../assets/kou2.jpg"),
              title: "圣罗兰（YSL）纯口红1#（正红色）3.8g",
              price: "¥49",
              p: "赚2.28"
            }
          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/milk.jpg"),
              title:
                "【乐荷】荷兰进口有机纯牛奶 儿童成长牛奶 学生营养早餐200*24盒",
              price: "¥160",
              p: "赚4.5"
            },
            {
              img: require("../../../assets/milk2.jpg"),
              title:
                "荷兰乳牛全进口牛奶整箱早餐脱脂牛奶网红抖音草莓纯牛奶香蕉24盒",
              price: "¥64",
              p: "赚4.5"
            }
          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/kou1.jpg"),
              title:
                "【乐荷】荷兰进口有机纯牛奶 儿童成长牛奶 学生营养早餐200*24盒",
              price: "¥160",
              p: "赚4.5"
            },
            {
              img: require("../../../assets/list1.jpg"),
              title:
                "完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",
              price: "¥58.8",
              p: "赚3.24"
            }
          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/kou1.jpg"),
              title:
                "迪奥999Dior口红唇膏烈艳蓝金 哑光滋润520/888/999送礼礼品套装 520+999滋润",
              price: "¥59",
              p: "赚2.58"
            },
            {
              img: require("../../../assets/kou2.jpg"),
              title: "圣罗兰（YSL）纯口红1#（正红色）3.8g",
              price: "¥49",
              p: "赚2.28"
            }
          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/milk.jpg"),
              title:
                "【乐荷】荷兰进口有机纯牛奶 儿童成长牛奶 学生营养早餐200*24盒",
              price: "¥160",
              p: "赚4.5"
            },
            {
              img: require("../../../assets/milk2.jpg"),
              title:
                "荷兰乳牛全进口牛奶整箱早餐脱脂牛奶网红抖音草莓纯牛奶香蕉24盒",
              price: "¥64",
              p: "赚4.5"
            }
          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/kou1.jpg"),
              title:
                "【乐荷】荷兰进口有机纯牛奶 儿童成长牛奶 学生营养早餐200*24盒",
              price: "¥160",
              p: "赚4.5"
            },
            {
              img: require("../../../assets/list1.jpg"),
              title:
                "完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",
              price: "¥58.8",
              p: "赚3.24"
            }
          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/kou1.jpg"),
              title:
                "迪奥999Dior口红唇膏烈艳蓝金 哑光滋润520/888/999送礼礼品套装 520+999滋润",
              price: "¥59",
              p: "赚2.58"
            },
            {
              img: require("../../../assets/kou2.jpg"),
              title: "圣罗兰（YSL）纯口红1#（正红色）3.8g",
              price: "¥49",
              p: "赚2.28"
            }
          ]
        },

        {
          bol: false,
          list: [
            {
              img: require("../../../assets/milk.jpg"),
              title:
                "【乐荷】荷兰进口有机纯牛奶 儿童成长牛奶 学生营养早餐200*24盒",
              price: "¥160",
              p: "赚4.5"
            },
            {
              img: require("../../../assets/milk2.jpg"),
              title:
                "荷兰乳牛全进口牛奶整箱早餐脱脂牛奶网红抖音草莓纯牛奶香蕉24盒",
              price: "¥64",
              p: "赚4.5"
            }
          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/kou1.jpg"),
              title:
                "【乐荷】荷兰进口有机纯牛奶 儿童成长牛奶 学生营养早餐200*24盒",
              price: "¥160",
              p: "赚4.5"
            },
            {
              img: require("../../../assets/list1.jpg"),
              title:
                "完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",
              price: "¥58.8",
              p: "赚3.24"
            }
          ]
        },
        {
          bol: false,
          list: [
            {
              img: require("../../../assets/kou1.jpg"),
              title:
                "迪奥999Dior口红唇膏烈艳蓝金 哑光滋润520/888/999送礼礼品套装 520+999滋润",
              price: "¥59",
              p: "赚2.58"
            },
            {
              img: require("../../../assets/kou2.jpg"),
              title: "圣罗兰（YSL）纯口红1#（正红色）3.8g",
              price: "¥49",
              p: "赚2.28"
            }
          ]
        }
      ]
    };
  },
  methods: {
    onSearch() {
      console.log(this.value);
    },
    isActive(i){
      let dom=i;
     for (var i = 0; i < this.listL.length; i++) {
        this.listL[i].isshow = false;
        this.listR[i].bol = false;
        if (dom == i) {
          this.listL[i].isshow = true;
          this.listR[i].bol = true;
        }
      }
    }
  },
  components: {
    // 顶部搜索栏
    search: search
  }
};
</script>
<style scoped>
*{
  box-sizing: border-box;
}

#bigBox {
  width: 100%;
  display: flex;
  margin-top: 94px;
  margin-bottom: 58px;
}
.left,
.right {
  height: 100%;
  padding: 0 15px;
}
.left {
  width: 28%;
  flex-direction: column;
  overflow: scroll;
}
.right {
  width: 72%;
  overflow: scroll;

}
.left > li {
  height: 60px;
  text-align: center;
  line-height: 60px;
  font-size: 16px;
  border-bottom: 1px solid #d1d1d1;
}

.right>li{
  height: 120px;
  width: 100%;
  border-bottom: 1px solid #d1d1d1;
}
.a{
  display: flex;
  height: 100px;
  width: 90%;
  margin: auto;
  margin-top: 17px;
}
.title{
	width: 100%;
	overflow:hidden;
	text-overflow:ellipsis;
	display:-webkit-box;
	/*控制在3行*/
	-webkit-line-clamp:2;
	-webkit-box-orient:vertical;
}
.a>div>p{
  margin: 0;
  display: inline-block;
}
.a>div>.price{
  margin-top:30px; 
  font-size: 16px;
  margin-right: 5px;
}
.a>div>p{
  margin-top:30px; 
  color: #f00;
  font-size: 8px;
}
.destTab{
  color: #000;
}
.active{
  background-color: #d6d6d6;
  color: #f00;
}
.a>img{
  width: 60px ;
  height: 80px;
}
/* .van-search {
	width: 100%;
  position: fixed;
  top: 40px;
  background-color: #e6e6e6 !important;
  z-index: 9999;
  opacity: 0.9;
} */
</style>