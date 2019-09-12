<template>
    <div class="me-header">
        <div class="me-head">
            <mt-header title="会员登录">
                <router-link to="/index" slot="left">
                    <mt-button icon="back"></mt-button>
                </router-link>
            </mt-header>
        </div>
        <div class="me-body">
            <div class="me-top">
                <span>
                    <img src="../../../assets/login1.png" alt="">
                    <p>会员登录</p>    
                </span>
            </div>
            <div class="me-bottom-name">
                <mt-field type="name" name="login_name" id="login_name" placeholder="用户名" v-model="uname">
                    </mt-field>
            </div>
            <div class="me-bottom-pwd">
                <mt-field type="password" name="login_pwd" id="login_pwd" placeholder="密码" v-model="upwd">
                    </mt-field>
            </div>
            <div class="me-bottom3">
                <router-link to="/req" class="a1">请先注册</router-link>
            </div>
            <div class="me-bottom4">
                <button @click="login">登录</button>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      list: "",
      uname:'',
      upwd:'',
    };
  },
  methods: {
    onClickLeft: function() {
      this.$store.commit("changeSelected", "home");
            this.$nextTick(() => {
              this.$router.push("/index");
            });
    },

    login: function() {
      var uname = this.uname;
      var upwd = this.upwd;
      this.axios
        .get("loginShopping", { params: { uname: uname, password: upwd } })
        .then(res => {
          if (res.data.code == -1) {
            this.$toast({
              message: "账号密码错误请重新登入"
            });
          } else {
            var arr = res.data.result;
            this.list = arr;
            // console.log(this.list)
            for (var item of this.list) {
              if (this.uname == item.uname && this.upwd == item.upwd) {
                this.$toast({
                  message: "登入成功"
                });
                 this.axios.get("modification",{params:{status:1,id:item.id}}).then(res=>{
                    
                 })
                this.$store.commit("changeSelected", "home");
                this.$nextTick(() => {
                  this.$router.push("/index");
                });


              } else {
                this.$toast({
                  message: "账号密码错误请重新登入"
                });

              }
                console.log(this.list)
            }
          }
        });
    }
  }
};
</script>
<style scoped>
</style>