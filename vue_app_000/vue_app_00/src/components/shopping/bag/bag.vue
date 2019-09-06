<template>
  <div>
    <mt-header fixed title="购物袋" style="background:#fff;color:#000;" id="top"></mt-header>
    <van-button type="danger" size="small">编辑</van-button>
    <table></table>
    <div class="bigBox">
      <div class="list" v-for="(item,i) of list" :key="i">
        <input type="checkbox" class="checkBox" />
        <div class="listList">
          <img :src="'http://127.0.0.1:3000'+item.imgurl" alt />
          <p id="titleList">{{item.title}}</p>
          <span class="price">{{item.discount}}</span>
		  <div class="button">
			  <mt-button size="small" @click="jia($event,-1)"  :data-index="i" >-</mt-button>
              <input v-text=item.count disabled/>
			  <span>{{item.count}}</span>
              <mt-button size="small" @click="jia($event,1)" :data-index="i">+</mt-button>
		  </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
		value: 1,
		list:"",
		// valueList:[],
	};
  },
  methods: {
	  jia(e,m) {
		var index=e.target.dataset.index;
		this.list[index].count+=m;
		var count=this.list[index].count;
		console.log(count)
		// return
		setTimeout(()=>{

			var id=this.list[index].id
			this.axios.get("jia",{params:{id:id,count:count}}).then(res=>{
						console.log(res)
						this.select()
			}) 
		},5000)
    },
    jian() {
      if (this.value > 1) {
        this.value--;
      } else {
        this.value = 1;
      }
	},
	select(){
		this.axios.get("bag").then(res=>{
			this.list=res.data.result;
			// console.log(this.list)
			// for(var i=0;i<this.list.length;i++){
			// 	this.valueList.push(this.list[i].count)
			// 	console.log(this.valueList)
			// }
		})
	}
  },
  created() {
	  this.select();
  },
};
</script>
<style scoped>
body {
  position: relative;
}
.van-button {
  z-index: 999;
  position: absolute;
  top: 7px;
  right: 13px;
  background: #f00;
  color: #fff;
  border: 0px;
  border-radius: 10px;
}
.van-button__text {
  margin: 0;
}
.bigBox {
  background: #afafaf;
  height: 2000px;
  width: 100%;
  margin-top: 42px;
  border-top: 1px solid #afafaf;
}
.list {
  width: 100%;
  height: 160px;
  background: #fff;
  border-bottom: 1px solid #afafaf;
  padding: 2px 10px;
  box-sizing: border-box;
  display: flex;
  position: relative;
}
.checkBox {
  width: 20px;
  height: 20px;
  -webkit-appearance: radio;
  margin-top: 46px;
  margin-left: 11px;
}
.listList {
  width: 100%;
  height: 100px;
  margin-left: 20px;
  display: flex;
  padding: 5px 0;
}
.listList > img {
  width: 90px;
  height: 90px;
}
#titleList {
  height: 38px;
  margin: 0;
  margin-left: 5px;
  font-size: 16px;
  width: 100%;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  /*控制在3行*/
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
.price {
  color: #f00;
  font-size: 8px;
  margin-left: 5px;
  position: absolute;
  top: 74px;
  left: 145px;
}
.button{
	position: absolute;
	bottom: 20px;
	right: 20px;;
}
.button> input {
  width: 33px;
  height: 33px;
  margin: 0 5px;
  text-align: center;
}
</style>