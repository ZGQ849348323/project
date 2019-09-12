<template>
  <div class="me-header">
    <div class="me-head">
      <mt-header title="会员注册">
        <span slot="left" @click="go">
          <mt-button icon="back"></mt-button>
        </span>
      </mt-header>
    </div>
    <div class="me-body">
      <div class="me-bottom-name">
        用户名
        <span>*</span>
      </div>
      <div>
        <input
          type="text"
          name="user_name"
          placeholder="用英文字母下划线或数字"
          id="user_name"
          v-model="userInfo.user"
          @blur="uname"
        />
        <span class="ni">{{ni.ni1}}</span>
      </div>
      <div class="me-bottom-pwd">
        密码
        <span>*</span>
      </div>
      <div>
        <input
          type="password"
          name="user_pwd"
          id="user_pwd"
          placeholder="不少于6个字符，建议用英文加数字或符合"
          v-model="userInfo.password"
          @blur="password"
        />
        <span class="ni">{{ni.ni2}}</span>
      </div>
      <div class="me-bottom-email">
        邮箱
        <span>*</span>
      </div>
      <div>
        <input
          type="text"
          name="user_email"
          id="user_email"
          placeholder="请输入您正确的邮箱格式"
          v-model="userInfo.email"
          @blur="email"
        />
        <span class="ni">{{ni.ni3}}</span>
      </div>
      <div class="me-reg">
        <button @click="req">注册</button>
      </div>
      <div class="me-login">
        <p>
          <router-link to="/login">登录</router-link>
        </p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      reg: "",
      isReturn: false,
      btn: false,
      ni: {
        ni1: "",
        ni2: "",
        ni3: ""
      },
      userInfo: {
        user: "",
        password: "",
        email: ""
      }
    };
  },
  methods: {
    go() {
      // this.$router.go(-1);
       this.$store.commit("changeSelected", "login");
            this.$nextTick(() => {
              this.$router.push("/login");
            });
    },
    uname() {
      this.ni.ni1 = "";
      var s = this.userInfo.user;
      this.isReturn = true;
      var a = /^[a-z]+$/; //小写字母组成
      if (!this.userInfo.user) this.ni.ni1 = "用户名不能为空";
      else if (!a.test(this.userInfo.user)) {
        this.isReturn = true;
        this.ni.ni1 = "由小写字母组成";
      }
    },
    password() {
      this.ni.ni2 = "";
      var p = this.userInfo.password;
      this.isReturn = true;
      // var p=/^[a-zA-Z]\w[0-9z]{6,12}$/;
      var p = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,12}$/;
      if (!this.userInfo.password) this.ni.ni2 = "密码不能为空";
      else if (!p.test(this.userInfo.password)) {
        this.isReturn = true;
        this.ni.ni2 = "由字母+数字组成,12位";
      }
    },
    email() {
      this.ni.ni3 = "";
      var e = this.userInfo.email;
      this.isReturn = true;
      var e = /^[0-9]+([-_.][A-Za-zd]+)*@([A-Za-zd]+[-.])+[A-Za-zd]{2,3}$/;
      if (!this.userInfo.email) this.ni.ni3 = "邮箱不能为空";
      else if (!e.test(this.userInfo.email)) {
        this.isReturn = true;
        this.ni.ni3 = "请输入邮箱的正确格式";
      }
    },
    req() {
      var uname = this.userInfo.user;
      var password = this.userInfo.password;
      var email= this.userInfo.email;
      if (uname == "") {
        this.$toast({
          message: "账号不能为空"
        });
      } else if (password == "") {
        this.$toast({
          message: "密码不能为空"
        });
      } else if (email == "") {
        this.$toast({
          message: "邮箱不能为空"
        });
      } else {
        this.axios
          .get("req", {
            params: { uname: uname, password: password,email:email}
          })
          .then(res => {
            this.$store.commit("changeSelected", "login");
            this.$nextTick(() => {
              this.$router.push("/login");
            });
            this.$toast({
              message: "注册成功"
            });
          });
      }
    }
  }
};
</script>
<style scoped>
/* 页面背景颜色 */
.me-header {
  background: rgb(245, 245, 245);
  padding-bottom: 100px;
}
/* 顶部导航条 */
.me-header .mint-header {
  background: white;
  color: black;
  font-size: 18px;
  padding: 13px 0px;
  border-bottom: 1px solid #ddd;
}
/* 用户名 */
.me-body .me-bottom-name {
  padding: 0px 10px;
  height: 50px;
  line-height: 50px;
  font-size: 18px;
  color: #888;
}
/* 用户名输入框 */
.me-body #user_name {
  border: 0px;
  padding: 20px 15px;
  width: 100%;
}
/* 密码 */
.me-body .me-bottom-pwd {
  padding: 0px 10px;
  height: 50px;
  line-height: 50px;
  font-size: 18px;
  color: #888;
}
/* 密码输入框 */
.me-body #user_pwd {
  border: 0px;
  padding: 20px 15px;
  width: 100%;
}
/* 邮箱 */
.me-body .me-bottom-email {
  padding: 0px 10px;
  height: 50px;
  line-height: 50px;
  font-size: 18px;
  color: #888;
}
/* 邮箱输入框 */
.me-body #user_email {
  border: 0px;
  padding: 20px 15px;
  width: 100%;
  border-bottom: 1px solid #ddd;
}
/* 注册外层div */
.me-body .me-reg {
  width: 100%;
  text-align: center;
}
/* 注册按钮 */
.me-body .me-reg button {
  width: 90%;
  background: #ff0101;
  border: 0px;
  height: 40px;
  border-radius: 3px;
  color: white;
  font-size: 18px;
  margin: 15px 0px;
}

/* 登录外层div */
.me-body .me-login {
  width: 100%;
  text-align: center;
}
/* 登录下的p标签 */
.me-body .me-login p {
  margin: 0px;
  width: 90%;
  height: 40px;
  background: rgb(255, 255, 255);
  text-align: center;
  border: 0px;
  line-height: 40px;
  border-radius: 3px;
  color: white;
  font-size: 18px;
  display: inline-block;
}
.me-body .me-login p a {
  text-decoration: none;
  color: black;
}
.me-header span {
  color: red;
  font-size: 17px;
}
</style>