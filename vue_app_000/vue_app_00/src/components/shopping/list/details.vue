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
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: ""
    };
  },
  props: ["id"],
  methods: {
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
    }
  },
  mounted() {
    let deid = this.$route.params.did;
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
</style>