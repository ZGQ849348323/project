<template>
  <div>
    <van-nav-bar title="登入" left-text="返回" left-arrow @click-left="onClickLeft" />
    <van-cell-group>
      <van-field v-model="username" required clearable label="用户名" placeholder="请输入用户名" />
      <van-field v-model="password" type="password" label="密码" placeholder="请输入密码" required />
    </van-cell-group>
    <van-button round type="danger" size="large" style="margin-top:20px" @click="login">登录</van-button>
  </div>
</template>
<script>
export default {
  data() {
    return {
      username: "",
      password: "",
      list: ""
    };
  },
  methods: {
    onClickLeft: function() {
      this.$store.commit("changeSelected", "my");
            this.$nextTick(() => {
              this.$router.push("/index");
            });
    },
    //  sendMsg(){
    //          //func: 是父组件指定的传数据绑定的函数，this.msg:子组件给父组件传递的数据
    //          this.$emit('func',this.msg)
    //      },

    login: function() {
      var uname = this.username;
      var password = this.password;
      this.axios
        .get("loginShopping", { params: { uname: uname, password: password } })
        .then(res => {
          if (res.data.code == -1) {
            this.$toast({
              message: "账号密码错误请重新登入"
            });
          } else {
            // console.log(11111)
            var arr = res.data.result;
            this.list = arr;
            for (var item of this.list) {
              if (this.username == item.uname && this.password == item.upwd) {
                this.$toast({
                  message: "登入成功"
                });
                 this.axios.get("modification",{params:{status:1,id:item.id}}).then(res=>{
                    
                 })
                this.$store.commit("changeSelected", "my");
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