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
            <mt-button size="small" @click="jia($event,-1)" :data-index="i">-</mt-button>
            <!-- <input v-text="item.count" disabled /> -->
            <span>{{item.count}}</span>
            <mt-button size="small" @click="jia($event,1)" :data-index="i">+</mt-button>
          </div>
        </div>
      </div>
      <div class="box">
        <van-checkbox v-model="checked">全选</van-checkbox>
        <div class="box1">
          <div class="lala">
            <span>¥{{sum}}</span>
            <p>共{{countAll}}件商品</p>
          </div>

          <van-button type="danger">去结算</van-button>
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
      list: "",
      radio: "1",
      checked: true,
      sum: "",
      countAll: ""
    };
  },
  methods: {
    jia(e, m) {
      var index = e.target.dataset.index;
      this.sub();
      if (this.list[index].count > 0) {
        this.list[index].count += m;
      } else {
        /////////////////////////////////////////////////////////////////////////////////////////////
        // 此处有bug需要调整
        this.list[index].count = 1;
      }
      var count = this.list[index].count;
      // console.log(count);
      // return
      setTimeout(() => {
        var id = this.list[index].id;
        this.axios
          .get("jia", { params: { id: id, count: count } })
          .then(res => {
            console.log(res);
            this.select();
          });
      }, 5000);
    },
    jian() {
      if (this.value > 1) {
        this.value--;
      } else {
        this.value = 1;
      }
    },
    select() {
      this.axios.get("bag").then(res => {
        this.list = res.data.result;
        this.sub();
      });
    },
    sub() {
      var sum = 0;
      var countAll = 0;
      for (var i = 0; i < this.list.length; i++) {
        var count = Number(this.list[i].count);
        var discount = Number(this.list[i].discount);
        var sub = count * discount;
        sum += sub;
        countAll += count;
      }
      this.sum = sum;
      this.countAll = countAll;
    }
  },
  created() {
    this.select();
    // setTimeout(() => {
    // }, 5000);
  }
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
  height: 100%;
  width: 100%;
  margin-top: 42px;
  margin-bottom: 109px;
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
.button {
  position: absolute;
  bottom: 20px;
  right: 20px;
}
.button > input {
  width: 33px;
  height: 33px;
  margin: 0 5px;
  text-align: center;
}
.box {
  width: 100%;
  height: 50px;
  background: #fff;
  position: fixed;
  top: 559px;
  border-bottom: 1px solid #afafaf;
  display: flex;
}
.van-checkbox {
  width: 30%;
}
.box1 {
  width: 70%;
}
.van-button {
  position: absolute;
  top: 3px;
}
.lala{
  display: flex;
  flex-direction: column;
  position: absolute;
  top: 8px;
    right: 95px;
}
.lala > p {
  font-size: 12px;
  margin: 0;
}
.lala > span {
  color: #f00;
  margin: 0;
  margin-bottom: 5px;

}
</style>