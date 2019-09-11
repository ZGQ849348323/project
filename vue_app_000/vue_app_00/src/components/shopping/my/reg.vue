<template>
  <div>
    <van-nav-bar title="注册" left-text="返回" left-arrow @click-left="onClickLeft(1)" />
    <div>
      <van-cell-group>
        <van-field v-model="username" required clearable label="用户名" placeholder="请输入用户名" />

        <van-field v-model="password" type="password" label="密码" placeholder="请输入密码" required />
        <van-field v-model="age" required clearable label="年龄" placeholder="请输入年龄" />
      </van-cell-group>
      <van-radio-group v-model="sex">
        <van-radio name="0">男</van-radio>
        <van-radio name="1">女</van-radio>
      </van-radio-group>
      <van-button round type="danger" size="large" style="margin-top:20px" @click="req(1)">注册</van-button>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      username: "",
      password: "",
      age: "",
      sex: "0"
    };
  },
  methods: {
    req(aa) {
      var uname = this.username;
      var password = this.password;
      var age = this.age;
      var sex = this.sex;
      if (uname == "") {
        this.$toast({
          message: "账号不能为空"
        });
      } else if (password == "") {
        this.$toast({
          message: "密码不能为空"
        });
      } else if (age == "") {
        this.$toast({
          message: "年龄不能为空"
        });
      } else {
        this.axios
          .get("req", {
            params: { uname: uname, password: password, age: age, sex: sex }
          })
          .then(res => {
            this.$store.commit("changeSelected", "my");
            this.$nextTick(() => {
              this.$router.push("/index");
            });
            this.$toast({
              message: "注册成功"
            });
          });
      }
    },

    onClickLeft(aa) {
      this.$store.commit("changeSelected", "my");
            this.$nextTick(() => {
              this.$router.push("/index");
            });
    }
  }
};
</script>
<style scoped>
.van-button__text {
  margin: 0;
}
</style>