<template>
  <div>
    <div class="bigbox">
      <div class="top">
        <div class="button" v-if="see">
          <van-button type="danger" style="margin-right:20px;" @click="login">请登录</van-button>
          <van-button type="danger" @click="reg">请注册</van-button>
        </div>
        <div v-else v-for="(item,i) of list" :key="i">
          <van-button type="danger" style="position:absolute;top:17px ;right:27px;" @click="cancel">注销</van-button>          
          <h3>欢迎{{item.uname}}登录</h3>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      see: true,
      list: "",
      // 登录状态
      status: "",
      id:"",
    };
  },
  methods: {
    reg: function() {
      this.$router.push("/req");
    },
    login: function() {
      this.$router.push("/login");
    },
    select: function() {
      this.axios.get("selectReq", { params: { status: 1 } }).then(res => {
        // console.log(res);
        this.list = res.data.result;
        for (var item of this.list) {
          this.status=item.status
          this.id=item.id
        }
            if (this.status == 1) {
              this.see = false;
            } else {
              this.see = true;
              console.log(222);
            }
      });
    },
    cancel:function(){
      this.axios.get("alter", { params: {id:this.id, status: 0 } }).then(res => {
        }) 
           this.see = true;
    },
  },
  created() {
    this.select();
  }
};
</script>
<style scoped>
.bigbox {
  width: 100%;
  height: 100%;
}
.top {
  width: 100%;
  height: 130px;
  background: rgb(117, 117, 117);
  position: relative;
}
.button {
  width: 100%;
  height: 100%;
  margin: auto;
  position: absolute;
  top: 38px;
  left: 28px;
}
.van-button__text {
  margin: 0;
}
</style>