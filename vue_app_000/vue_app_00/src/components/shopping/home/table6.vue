<template>
    <div >
      <div class="box" >
		  <a href="#">
			  <div class="smallbox" v-for="(item,i) of obj" :key="i">
			  <p class="messages">{{item.message}}</p>
			  <p class="p1">{{item.p1}}</p>
			  <img :src="item.imgs"  id="imgs">
		  </div>
		  </a>
	  </div>
	  <!-- <img src="../../../assets/yuebing.jpg" alt=""> -->
    </div>
</template>
<script>
export default {
  data() {
    return {
      obj: [
        { message: "新鲜每一天", p1: "尽享唇齿间的甜蜜",imgs:require("../../../assets/yuebing.jpg") },
		{ message: "暖心好礼", p1: "尽享团员合家欢",imgs:require("../../../assets/yuebing.jpg")  },
		{ message: "新鲜每一天", p1: "尽享唇齿间的甜蜜",imgs:require("../../../assets/yuebing.jpg")  },
		{ message: "暖心好礼", p1: "尽享团员合家欢",imgs:require("../../../assets/yuebing.jpg")  },
		{ message: "新鲜每一天", p1: "尽享唇齿间的甜蜜",imgs:require("../../../assets/yuebing.jpg")  },
		{ message: "暖心好礼", p1: "尽享团员合家欢",imgs:require("../../../assets/yuebing.jpg")  }
      ]
    };
  },
  methods: {}
};
</script>
<style scoped>
.box {
  width: 90%;
  margin: 0 auto;
  margin-top: 20px;
}
.box a {
	display: flex;
  flex-wrap: wrap;
  list-style: none;
}
.smallbox {
  width: 48%;
  height: 120px;
  border: 3px solid #8B0000;
  margin: 0;
  background-color:#fff; 
}
.messages{
	color: #000;
	margin-bottom: 4px;
	padding-left: 35px;
}
.p1{
	color: #A9A9A9;
	margin: 0px;
	padding-left: 35px;
	font-size: 10px;
}
#imgs{
	width: 55%;
    height: 55%;
	padding-left: 30px;
}
</style>