<template>
  <div>
    <div class="bigbox">
      <div class="top">
        <div class="button" v-if="see">
          <van-button type="danger" style="margin-right:20px;" @click="login">请登录</van-button>
          <van-button type="danger" @click="reg">请注册</van-button>
        </div>
        <div v-else>
          <h3>欢迎xxx登录</h3>
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
      // 验证是否登入成功
      aa: "1"
    };
  },
  methods: {
    reg: function() {
      this.$router.push("/req");
    },
    login: function() {
      this.$router.push("/login");
    },
  },
  mounted() {
      
  },
};
</script>
<style scoped>
.bigbox {
  width: 100%;
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