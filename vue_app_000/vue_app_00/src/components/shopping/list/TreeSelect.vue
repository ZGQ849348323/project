<template>
  <div>
    <mt-header fixed title="分类" style="background:#fff;color:#000;" id="top"></mt-header>
    <search id="aa"></search>
    <div id="bigBox" :style="{height:(screenHeight-152)+'px'}">
      <ul class="left">
        <li
          v-for="(item,i) of listL"
          :key="i"
          :data-index="i"
          @click="isActive(i)"
          :class="item.isshow?'destTab active':'destTab'"
        >{{item.txt}}</li>
      </ul>
      <ul class="right" v-show="lists[n].bol" v-for="(item,n) of lists" :key="n">
        <li v-for="(elem,i) of item.list" :key="i" @click="aa(elem.id)" >
          <table></table>
          <div class="a">
            <img :src="'http://127.0.0.1:3000'+elem.imgurl" alt />
            <div>
              <span class="title">{{elem.title}}</span>
              <span class="price">¥{{elem.price}}</span>
              <p>赚{{elem.p1}}</p>
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
      lists: [
        { bol: true,  list: "" },
        { bol: false, list: "" },
        { bol: false, list: "" },
        { bol: false, list: "" },
        { bol: false, list: "" },
        { bol: false, list: "" },
        { bol: false, list: "" },
        { bol: false, list: "" },
        { bol: false, list: "" },
        { bol: false, list: "" },
        { bol: false, list: "" },
        { bol: false, list: "" }
      ],
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
      ]
    };
  },
  methods: {
    onSearch() {
      console.log(this.value);
    },
    isActive(i) {
      let dom = i;
      for (var i = 0; i < this.listL.length; i++) {
        this.listL[i].isshow = false;
        this.lists[i].bol = false;
        if (dom == i) {
          this.listL[i].isshow = true;
          this.lists[i].bol = true;
        }
      }
    },
    one(){   
      this.axios.get("Tree", { params: { id: 0 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[0].list=arr;
      })  
    },
    two(){   
      this.axios.get("Tree", { params: { id: 11 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[1].list=arr;
      })  
    },
    three(){
      this.axios.get("Tree", { params: { id: 21 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[2].list=arr;
      }) 
    },
    four(){
      this.axios.get("Tree", { params: { id: 31 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[3].list=arr;
      }) 
    },
    five(){
      this.axios.get("Tree", { params: { id: 41 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[4].list=arr;
      }) 
    },
    six(){
      this.axios.get("Tree", { params: { id: 51 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[5].list=arr;
      }) 
    },
    seven(){
      this.axios.get("Tree", { params: { id: 61 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[6].list=arr;
      }) 
    },
    eight(){
      this.axios.get("Tree", { params: { id: 71 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[7].list=arr;
      }) 
    },
    nine(){
      this.axios.get("Tree", { params: { id: 81 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[8].list=arr;
      }) 
    },
    ten(){
      this.axios.get("Tree", { params: { id: 91 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[9].list=arr;
      }) 
    },
    eleven(){
      this.axios.get("Tree", { params: { id: 101 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[10].list=arr;
      }) 
    },
    twelve(){
      this.axios.get("Tree", { params: { id: 111 ,ids:10} }).then(res=>{
         var arr = res.data.result;
            this.lists[11].list=arr;
      }) 
    },
    aa(did) {
      // console.log(did)
      this.$router.push("/details/"+did);
    },
  },
  created() {
    this.one();
    this.two();
    this.three();
    this.four();
    this.five();
    this.six();
    this.seven();
    this.eight();
    this.nine();
    this.ten();
    this.eleven();
    this.twelve();
  },
  components: {
    // 顶部搜索栏
    search: search
  }
};
</script>
<style scoped>
* {
  box-sizing: border-box;
}
#aa {
  width: 100%;
  position: fixed;
  top: 40px;
  background-color: #e6e6e6 !important;
  z-index: 9999;
  opacity: 0.9;
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

.right > li {
  height: 120px;
  width: 100%;
  border-bottom: 1px solid #d1d1d1;
}
.a {
  display: flex;
  height: 100px;
  width: 90%;
  margin: auto;
  margin-top: 17px;
}
.title {
  width: 100%;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  /*控制在3行*/
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
.a > div > p {
  margin: 0;
  display: inline-block;
}
.a > div > .price {
  margin-top: 30px;
  font-size: 16px;
  margin-right: 5px;
}
.a > div > p {
  margin-top: 30px;
  color: #f00;
  font-size: 8px;
}
.destTab {
  color: #000;
}
.active {
  background-color: #d6d6d6;
  color: #f00;
}
.a > img {
  width: 60px;
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