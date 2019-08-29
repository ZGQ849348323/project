<template>
  <div>
    
    <van-swipe :autoplay="3000" indicator-color="white" id="box">
      <van-swipe-item>
        <img src="../../../assets/avator.jpeg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../../../assets/9398110c36184482.jpg.webp" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../../../assets/avator.jpeg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../../../assets/9398110c36184482.jpg.webp" alt />
      </van-swipe-item>
    </van-swipe>
  </div>
</template>
<script>
export default {
  methods: {}
};
</script>
<style scoped>
#box {
  width: 90%;
  height: 140px;
  margin: 0 auto;
  z-index: 2;
  position: absolute;
  top: 54px;
  left: 17px;
}
img {
  width: 100%;
  height: 100%;
}
/* .smallbox{
    height: 140px;
  } */
</style>