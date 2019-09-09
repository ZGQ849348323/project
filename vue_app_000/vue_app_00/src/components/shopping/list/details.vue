<template>
  <div style="background-color:#e6e6e6;">
    <van-nav-bar
      title="商品详情"
      left-text="返回"
      right-text="分享"
      left-arrow
      @click-left="onClickLeft"
      @click-right="onClickRight"
    />
    <div v-for="(item,i) of list" :key="i">
      <van-swipe :autoplay="3000" indicator-color="#f00">
        <van-swipe-item>
          <img :src="'http://127.0.0.1:3000'+item.img1" alt />
        </van-swipe-item>
        <van-swipe-item>
          <img :src="'http://127.0.0.1:3000'+item.img2" alt />
        </van-swipe-item>
        <van-swipe-item>
          <img :src="'http://127.0.0.1:3000'+item.img3" alt />
        </van-swipe-item>
      </van-swipe>
      <div class="box">
        <table></table>
        <p class="title">{{item.title}}</p>
        <p class="price">¥{{item.price}}</p>
        <p class="p1">赚{{item.p1}}</p>
        <div class="shark">
          <img src="../../../assets/share.png" alt />
          <br />
          <span style="margin:0">分享</span>
        </div>
      </div>
      <div>
        <van-button type="primary" @click="showPopup">请选择款式</van-button>
        <van-popup v-model="show" round position="bottom" :style="{ height: '50%' }">
          <div class="smallBox">
            <div class="smallTop">
              <img :src="'http://127.0.0.1:3000'+item.img1" alt />
              <p class="smallPrice">¥{{item.price}}</p>
            </div>
            <div class="middleBox">
              <p class="middleTxt">购买数量</p>
              <mt-button size="small" @click="jian">-</mt-button>
              <input v-model="value" disabled />
              <mt-button size="small" @click="jia">+</mt-button>
            </div>
            <div class="smallB">
              <mt-button size="large" @click="addShopping">加入购物车</mt-button>
              <mt-button size="large" type="danger">立即购买</mt-button>
            </div>
          </div>
        </van-popup>
      </div>
      <div class="boxBottom">
        <van-tabs type="card">
          <van-tab title="图片详情">
            <img :src="'http://127.0.0.1:3000'+item.img1" alt />
            <img :src="'http://127.0.0.1:3000'+item.img2" alt />
            <img :src="'http://127.0.0.1:3000'+item.img3" alt />
          </van-tab>
          <van-tab title="评价信息">内容 2</van-tab>
          <van-tab title="贴心售后">
            <img src="../../../assets/baoxiu.png" alt />
          </van-tab>
        </van-tabs>
      </div>
      <div class="bottom">
          <div class="one" @click="jumpBag">
            <img src="../../../assets/shoppingCar.png" alt />
            <p>购物车</p>
          </div>
        <div class="one">
          <img src="../../../assets/service.png" alt />
          <p>联系客服</p>
        </div>
        <mt-button size="large" type="danger" @click="showPopup">立即购买</mt-button>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: "",
      show: false,
      value: 1,
      id:"",
    };
  },
  // props: ["id"],
  methods: {
    jia() {
      this.value++;
    },
    jian() {
      if (this.value > 1) {
        this.value--;
      } else {
        this.value = 1;
      }
    },
    onClickLeft() {
      this.$router.push("/index");
    },
    onClickRight() {
      console.log(1);
    },
    loadAjax(deid) {
      // let deid = this.$route.params.did;
      // console.log(deid)
      this.axios.get("details", { params: { id: deid } }).then(res => {
        var arr = res.data.result;
        this.list = arr;
      });
    },
    showPopup() {
      this.show = true;
    },
    jumpBag(){
      this.$router.push("/index")
    },
    addShopping(){
      this.axios.get("car",{params:{id:this.id,count:this.value}})
      .then(res=>{
          console.log(res)
      })
    }
  },
  mounted() {
    let deid = this.$route.params.did;
    this.id = deid;
    this.loadAjax(deid);
  }
};
</script>
<style scoped>
body {
  background: #e6e6e6;
}
.van-swipe {
  width: 100%;
  height: 220px;
  margin: 0 auto;
}
.van-swipe-item > img {
  height: 100%;
  width: 100%;
}
.box {
  height: 90px;
  background-color: #fff;
  margin-bottom: 5px;
  position: relative;
  padding-left: 10px;
}
.title {
  margin: 10px 0;
  margin-bottom: 15px;
  font-size: 15px;
  padding-right: 32%;
}
.price {
  margin: 0;
  color: #000;
  display: inline-block;
  padding-right: 10px;
}
.p1 {
  margin: 0;
  color: #f00;
  font-size: 8px;
  display: inline-block;
}
.shark {
  position: absolute;
  top: 20px;
  right: 20px;
}
.van-button {
  width: 100%;
  background-color: #fff;
  border-color: #fff;
  margin-bottom: 5px;
}
.van-button__text {
  float: left;
  color: #6e6b6b80;
}
.smallBox {
  width: 100%;
  height: 100%;
}
.smallTop {
  width: 100%;
  height: 130px;
  position: relative;
  border-bottom: 1px solid #000;
}
.smallTop > img {
  width: 100px;
  height: 100px;
  margin: 0 20px;
  margin-top: 13px;
}
.smallPrice {
  color: #f00;
  position: absolute;
  top: 7px;
  left: 167px;
}
.middleBox {
  width: 100%;
  height: 50px;
  border-bottom: 1px solid #000;
  padding: 0 10px;
}
.middleBox > p {
  display: inline-block;
  margin-right: 50%;
}
.middleBox > input {
  width: 33px;
  height: 33px;
  margin: 0 5px;
  text-align: center;
}
.smallB {
  width: 100%;
  height: 50px;
  position: absolute;
  bottom: 0px;
  display: flex;
}
.boxBottom {
  width: 100%;
  box-sizing: border-box;
  height: 300px;
  background: #fff;
  padding: 10px 10px;
}

.van-tab__pane,
.van-tab__pane-wrapper {
  -webkit-flex-shrink: 0;
  flex-shrink: 0;
  box-sizing: border-box;
  width: 92%;
  margin: 0 auto;
}
.van-tab__pane > img {
  width: 100%;
}
.bottom {
  position: fixed;
  bottom: 0;
  width: 100%;
  height: 46px;
  background: #fff;
  display: flex;
}
.one {
  width: 80px;
  height: 100%;
  display: flex;
  flex-direction: column;
}
.one > img {
  width: 24px;
  height: 24px;
  margin: 0 auto;
}
.one > p {
  margin: 0;
  font-size: 12px;
  margin: 3px auto;
}
</style>
<style>
.van-tab > .van-ellipsis {
  margin: 0 !important;
}
</style>