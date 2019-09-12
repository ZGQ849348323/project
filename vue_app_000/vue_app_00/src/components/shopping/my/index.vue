<template>
  <div class="user_header">
    <div class="top">
      <div class="me_head">
        <mt-header>
          <router-link to slot="left">
            <mt-button icon="back"></mt-button>
          </router-link>
          <router-link to slot="right">
            <img id="m1" src="../../../assets/header2.png" alt />
            <!-- <img id="m1" src="../../../assets/set.png" alt=""> -->
          </router-link>
          <router-link to slot="right">
            <img id="m2" src="../../../assets/set.png" alt />
          </router-link>
        </mt-header>
      </div>
      <div class="radius"></div>
      <div class="radius2"></div>
      <div class="me_user">
        <div class="user_img">
          <router-link to>
            <img src="../../../assets/user.png" alt />
          </router-link>
        </div>
        <div class="me_name">
          <em>{{uname}}</em>
          <router-link to>
            <strong>
              <img src="../../../assets/rwm.jpg" alt />
            </strong>
          </router-link>
        </div>
        <div class="ordinary">普通会员</div>
        <div class="ordinary">会员编号:00{{uid}}</div>
        <div class="me_info">
          <router-link to>
            <p class="p1">消息</p>
          </router-link>
          <router-link to>
            <p class="p2">关联账号</p>
          </router-link>
        </div>
      </div>
    </div>
    <div class="middle">
      <div class="md">
        <div class="m_top">
          <router-link to>
            <img id="m1" src="../../../assets/icon2.png" alt />
            <font>我的资产</font>
            <img id="m2" src="../../../assets/link.png" alt />
          </router-link>
        </div>
        <div class="m_bottom">
          <router-link id="a1" to>
            <p class="p1">
              <img src="../../../assets/order_img6.png" alt />
            </p>
            <span>积分</span>
          </router-link>
          <router-link id="a2" to>
            <p class="p2">
              <img src="../../../assets/order_img9.png" alt />
            </p>
            <span>账单</span>
          </router-link>
        </div>
      </div>
    </div>
    <div class="bottom">
      <div class="b_bottom">
        <router-link to>
          <span>
            <img src="../../../assets/data_img1.png" alt />
          </span>
          <p>我的资料</p>
          <strong>
            <img src="../../../assets/link.png" alt />
          </strong>
        </router-link>
        <router-link to>
          <span>
            <img src="../../../assets/data_img5.png" alt />
          </span>
          <p>设置</p>
          <strong>
            <img src="../../../assets/link.png" alt />
          </strong>
        </router-link>
      </div>
    </div>
    <!-- <div class="b_end">
      <div class="me_end" >
        <router-link to="/login">退出</router-link>
      </div>
    </div> -->
  
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: "",
      // 登录状态
      status: "",
      id: "",
      uname: "未登录",
      uid:"xxxxxx"
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
        console.log(res);
        if (res.data.code == -1) {
          console.log("没有登录状态");
        } else {
          this.list = res.data.result;
          console.log(this.list);
          for (var item of this.list) {
            this.status = item.status;
            this.id = item.id;
            this.uname = item.uname;
            this.uid=item.id
          }
        }
      });
    },
    cancel() {
      this.axios
        .get("alter", { params: { id: this.id, status: 0 } })
        .then(res => {
          this.list = null;
        });
    //   this.$store.commit("changeSelected", "login");
    //   this.$nextTick(() => {
    //     this.$router.push("/login");
    //   });
    }
  },
  created() {
    this.select();
  }
};
</script>
<style scoped>
.me_head #m1 {
  width: 25px;
  height: 25px;
}
.me_head #m2 {
  width: 22px;
  height: 22px;
  margin-left: 15px;
}
.top .radius {
  height: 80px;
  background: #26a2ff;
}
.top {
  height: 260px;
}
.top .radius2 {
  width: 100%;
  height: 80px;
  border-radius: 50%;
  position: absolute;
  top: 80px;
  left: 0px;
  background: #fff;
}
.me_user {
  text-align: center;
  position: relative;
  top: -70px;
  left: 0px;
}
.top .me_user .user_img img {
  width: 55px;
  height: 55px;
  border-radius: 50%;
  background: rgba(145, 146, 148, 0.4);
}
.me_name {
  margin: 10px 0px;
}
.me_name em {
  font-style: normal;
  font-size: 0.03rem;
}
.me_name a img {
  width: 15px;
  height: 15px;
  padding-left: 8px;
}
.ordinary {
  margin-bottom: 10px;
  color: gray;
  font-size: 0.5rem;
}
.me_info {
  padding: 15px;
  border-top: 0.01rem solid #eee;
}
.me_info p {
  display: inline-block;
  color: #555;
  width: 40%;
  text-align: center;
  margin: 0px;
}
.me_info .p1 {
  border-right: 0.1rem solid #eee;
}
.middle {
  background: #eee;
  padding: 7px 0px;
}
.md {
  background: #fff;
}
.md .m_top {
  border-bottom: 0.1rem solid rgb(238, 238, 238);
}
.md .m_top a {
  color: #333;
  padding: 8px 10px;
  text-decoration: none;
  font-size: 0.95rem;
  display: block;
}
.md .m_top a #m1 {
  width: 28px;
  height: 28px;
  display: inline-block;
  margin-right: 10px;
  margin-top: 10px;
}
.md .m_top a #m2 {
  width: 3%;
  height: 12px;
  display: block;
  float: right;
  margin-top: 14px;
}
.m_top a font {
  display: inline-block;
  position: relative;
  top: -6px;
  left: 0px;
}
.m_bottom a {
  width: 110px;
  display: inline-block;
  padding: 20px 0px;
  text-align: center;
  text-decoration: none;
  color: #333;
  font-size: 0.8rem;
}
.m_bottom p {
  margin: 0px;
}
.m_bottom img {
  width: 28px;
  height: 28px;
}
.m_bottom #a1 {
  border-right: 0.01rem solid rgb(238, 238, 238);
}
.m_bottom #a2 {
  border-right: 0.01rem solid rgb(238, 238, 238);
}
.bottom {
  background: #eee;
}
.b_bottom {
  padding: 0px 0px 15px 0px;
}
.b_bottom a {
  background: #fff;
  border-bottom: 0.1rem solid rgb(238, 238, 238);
  display: block;
  overflow: hidden;
  padding: 0.23rem 0.3rem;
}
.b_bottom a span {
  display: block;
  float: left;
}
.b_bottom a p {
  display: block;
  float: left;
  line-height: 15px;
  font-size: 0.7rem;
  color: rgb(51, 51, 51);
  min-height: 18px;
}
.b_bottom strong img {
  width: 3%;
  height: 12px;
  float: right;
  margin-top: 14px;
}
.b_end .me_end {
  text-align: center;
}
.me_end {
  padding: 15px 20px;
}
.me_end a {
  text-decoration: none;
  color: white;
  display: block;
  background: #f90;
  font-size: 0.5rem;
  height: 1.8rem;
  line-height: 1.8rem;
  border-radius: 4px;
}
</style>