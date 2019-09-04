<template>
  <div>
    <div class="bigBox">
      <div class="smallBox" v-for="(item,i) of list" :key="i" @click="jumpde(item.id)">
        <img :src="'http://127.0.0.1:3000'+item.img1" alt />
        <span class="title">{{item.title}}</span>
        <div>
          <span>¥{{item.price}}</span>
          <p>赚{{item.p1}}</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: "",
    };
  },
  methods: {
    shoe() {
      this.axios
        .get("list")
        .then(res => {
          var arr = res.data.result;
          this.list = arr;
        });
    },
    jumpde(did){
      // console.log(did)
      this.$router.push("/details/"+did);
    }
  },

  created() {
    this.shoe();
  }
};
</script>
<style scoped>
* {
  margin: 0;
  padding: 0;
}
.bigBox {
  width: 90%;
  margin: 0 auto;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  /* flex-direction: column; */
}
.smallBox {
  width: 49%;
  height: 200px;
  background-color: #fff;
  margin-top: 5px;
}
.smallBox > img {
  width: 100%;
  height: 150px;
}
.title {
  height: 14px;
  width: 100%;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  /*控制在3行*/
  -webkit-line-clamp: 1;
  -webkit-box-orient: vertical;
  margin: 0;
  font-size: 1px;
}
.smallBox > div {
  display: flex;
  margin-top: 6px;
  padding: 0 5px;
}
.smallBox > div > span {
  font-size: 14px;
}
.smallBox > div > p {
  font-size: 6px !important;
  color: #f00;
  margin-left: 5px;
  padding-top: 2px;
}
</style>