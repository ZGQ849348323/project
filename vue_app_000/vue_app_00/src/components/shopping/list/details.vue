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
    <van-swipe :autoplay="3000000" indicator-color="#f00" >
      <van-swipe-item>
        <img src="../../../assets/swipe/clothing_1.jpg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../../../assets/swipe/clothing_2.jpg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../../../assets/swipe/clothing_3.jpg" alt />
      </van-swipe-item>
    </van-swipe>
	<div class="box">
		<table></table>
		<p class="title">秋装日系复古水洗浅色牛仔外套男潮流宽松牛仔翻领夹克青年牛仔衣</p>
		<p class="price">¥127</p>
		<p class="p1">赚3.6</p>
		<div class="shark">
			<img src="../../../assets/share.png" alt=""><br>
			<span style="margin:0">分享</span>
		</div>
	</div>
	
  </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  props: ["id"],
  methods: {
    onClickLeft() {
      this.$router.push("/TreeSelect");
    },
    onClickRight() {
      console.log(1);
	},
	loadAjax(deid){
		console.log(deid)
	}
  },
  mounted() {
	  let deid = this.$route.params.did;
	  this.loadAjax(deid)
	  
  },
//   created() {
// 	  console.log(this.$route.params.did);
//   }
};
</script>
<style scoped>
body{
	background: #e6e6e6;
}
.van-swipe{
	width:100%;
	height: 220px;
	margin:0 auto;
}
.van-swipe-item>img{
	height: 100%;
	width: 100%;
}
.box{
	height: 90px;
	background-color:#fff;
	margin-bottom: 5px; 
	position: relative;
	padding-left: 10px;
}
.title{
	margin:10px 0;
	margin-bottom: 15px;
	font-size: 15px;
	padding-right: 32%;
}
.price{
	margin:0;
	color:#000;
	display: inline-block;
}
.p1{
	margin:0;
	color:#f00;
	display: inline-block;
}
.shark{
	position: absolute;
	top: 20px;
	right: 20px;
}
</style>