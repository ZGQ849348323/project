<template>
  <div>
    <table></table>
      <div class="bigBox">
          <div class="smallBox" v-for="(item,i) of list" :key="i">
            <div class="yuanBox">
              <div class="yuan"></div>
            </div>
            <p class="title">{{item}}</p>
          </div>
          

      </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: ["新会员", "品牌热卖", "金卡专区", "直通车区", "购虎优选","新品上市", "女神专区", "购虎国际", "家居用品", "零食专区"]
    };
  }
};
</script>
<style scoped>
.bigBox{
  width: 90%;
  height: 200px;
  /* background:#f00; */
  margin: 0 auto;
  margin-top: 45px;
  justify-content: space-around;
}
.smallBox{
  height: 85px;
  width: 20%;
  display: inline-block;
  text-align: center;
  margin:5px auto;
}
.yuanBox{
  width: 100%;
  height: 80%;
}
.yuan {
  width: 90%;
  height: 90%;
  border: 1px solid #fff;
  background: burlywood;
  border-radius: 50%;
  margin: 0 auto;
}
.title{
  display: inline-block;
  margin: 0 auto;
    font-size: 14px;
}

</style>