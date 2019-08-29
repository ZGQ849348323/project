<template>
  <div>
    <table></table>
    <div id="bigyuan">
      <div class="yuan"></div>
      <div class="yuan"></div>
      <div class="yuan"></div>
      <div class="yuan"></div>
      <div class="yuan"></div>
      <span v-for="(item,i) of list" :key="i">{{item}}</span>
    </div>
	<div id="bigyuan2">
      <div class="yuan"></div>
      <div class="yuan"></div>
      <div class="yuan"></div>
      <div class="yuan"></div>
      <div class="yuan"></div>
      <span v-for="(item,i) of list2" :key="i">{{item}}</span>
    </div>
  </div>
</template>
<style>
.yuan {
  width: 58px;
  height: 58px;
  border: 1px solid #fff;
  background: burlywood;
  border-radius: 50%;
  margin: 0 6px;
}
#bigyuan {
  width: 96%;
  margin: 0 auto;
  margin-top: 45px;
  display: flex;
  flex-wrap: wrap;
  align-content: space-between;
}
#bigyuan2 {
  width: 96%;
  margin: 0 auto;
  display: flex;
  flex-wrap: wrap;
  align-content: space-between;
}
span {
      margin: 0 auto;
    font-size: 14px;
    margin-left: 12px;
}
</style>
<script>
export default {
  data() {
    return {
      list: ["新会员", "品牌热卖", "金卡专区", "直通车区", "购虎优选"],
      list2: ["新品上市", "女神专区", "购虎国际", "家居用品", "零食专区"]
    };
  }
};
</script>