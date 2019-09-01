<template>
  <div>
    <div v-for="(item,i) of list" :key="i" class="bigbox mt-10">
      <div class="top">
        <img :src="item.imgs" alt />
      </div>
      <div class="bottom">
        <h2>{{item.price}}</h2>
        <span style="padding-right: 40px;">{{item.p1}}</span>
        <div class="button2">
            <van-button round type="danger" size="mini">分享赚钱</van-button>
            <van-button round type="danger" size="mini">立即购买</van-button>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: [
        {
          imgs: require("../../../assets/timg.jpg"),
          price: "¥118",
          p1: "赚8.1"
        },
        {
          imgs: require("../../../assets/timg.jpg"),
          price: "¥17.52",
          p1: "赚8.1"
        },
        {
          imgs: require("../../../assets/timg.jpg"),
          price: "¥142.67",
          p1: "赚11.67"
        }
      ]
    };
  }
};
</script>
<style  scoped>
.bigbox {
  margin: auto;
  width: 90%;
  height: 200px;
  background: #fff;
  border-radius: 10px;
}
.top {
  height: 75%;
}
.top > img {
  width: 100%;
  height: 100%;
}
.bottom {
  height: 25%;
  display: flex;
  position: relative;
}
.bottom > h2 {
  font-size: 18px;
  margin: auto 8px;
}
.bottom > span {
  font-size: 10px;
  color: #f00;
  margin: 20px 0;
}
.button > span {
  margin-right: 20px;
  width: 20px;
  display: block;
}
.van-button {
  width: 78px;
  height: 21px;
  margin: auto 0;
  padding-right: 8px;
}
.mt-10{
  margin-top: 10px;
}
.button2{
    width: 200px;
    height: 20px;
    position: absolute;
        top: 16px;
    left: 162px;
}
</style>
