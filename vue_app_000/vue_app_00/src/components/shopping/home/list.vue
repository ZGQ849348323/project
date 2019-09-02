<template>
	<div>
		<div class="bigBox">
			<div class="smallBox" v-for="(item,i) of list" :key="i">
				<img :src="item.imgS" alt="">
				<span class="title">{{item.title}}</span>
				<div>
					<span>{{item.price}}</span>
					<p>{{item.p}}</p>
				</div>
			</div>			
		</div>	
	</div>
</template>
<script>
export default {
	data() {
		return {
			list:[
				{imgS:require("../../../assets/list1.jpg"),title:"完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",price:"¥58.8",p:"赚3.24"},
				{imgS:require("../../../assets/list1.jpg"),title:"完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",price:"¥58.8",p:"赚3.24"},
				{imgS:require("../../../assets/list1.jpg"),title:"完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",price:"¥58.8",p:"赚3.24"},
				{imgS:require("../../../assets/list1.jpg"),title:"完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",price:"¥58.8",p:"赚3.24"},
				{imgS:require("../../../assets/list1.jpg"),title:"完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",price:"¥58.8",p:"赚3.24"},
				{imgS:require("../../../assets/list1.jpg"),title:"完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",price:"¥58.8",p:"赚3.24"},
				{imgS:require("../../../assets/list1.jpg"),title:"完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",price:"¥58.8",p:"赚3.24"},
				{imgS:require("../../../assets/list1.jpg"),title:"完美芦荟胶40g*3支装（乳液面霜 补水保湿 温和不刺激 祛痘淡印）",price:"¥58.8",p:"赚3.24"},
			]						
		}

	},
}
</script>
<style scoped>
*{
	margin: 0;
	padding: 0;
}
.bigBox{
	width: 90%;
	margin: 0 auto;
	display :flex;
	flex-wrap:wrap;
	justify-content: space-between;
	/* flex-direction: column; */
}
.smallBox{
	width:49%;
	height: 200px;
	background-color:#fff;
	margin-top: 5px;
}
.smallBox>img{
	width:100%;
	height: 150px;
}
.title{
	height: 14px;
	width: 100%;
	overflow:hidden;
	text-overflow:ellipsis;
	display:-webkit-box;
	/*控制在3行*/
	-webkit-line-clamp:1;
	-webkit-box-orient:vertical;
	margin: 0;
	font-size: 1px;

}
.smallBox>div{
	display: flex;
	margin-top: 6px;
	padding: 0 5px;
}
.smallBox>div>span{
	font-size: 14px;
}
.smallBox>div>p{
	font-size: 6px !important;
	color: #f00;
	margin-left: 5px;
	padding-top: 2px;
}
</style>