<template>
  <div>
    <mt-header fixed title="分类" style="background:#fff;color:#000;"></mt-header>
    <form action="/" style="position:fixed;top:39px;width:100%;">
      <van-search
        v-model="value"
        placeholder="请输入搜索关键词"
        show-action
        @search="onSearch"
        @cancel="onCancel"
      />
    </form>
    <div id="bigBox" :style="{height:(screenHeight-97)+'px'}">
      <ul class="left">
        <li v-for="(item,i) of listL" :key="i">{{item.txt}}</li>
      </ul>
      <ul class="right">
        <li></li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      screenHeight: document.documentElement.clientHeight, // 屏幕高度
      listL: [
        { txt: "购虎国际", isshow: true },
        { txt: "水果生鲜", isshow: false },
        { txt: "食品保健", isshow: false },
        { txt: "个护化妆", isshow: false },
        { txt: "家具用品", isshow: false },
        { txt: "鞋包名品", isshow: false },
        { txt: "服装服饰", isshow: false },
        { txt: "运动户外", isshow: false },
        { txt: "母婴用品", isshow: false },
        { txt: "手机数码", isshow: false },
        { txt: "汽车用品", isshow: false },
        { txt: "奢饰品/...", isshow: false }
      ]
    };
  }
};
</script>
<style>
#bigBox {
  width: 100%;
  background-color: #f00;
  display: flex;
  margin-top: 94px;
}
.left,
.right {
  height: 100%;
}
.left {
  width: 28%;
  flex-direction: column;
  overflow: scroll;
}
.right {
  width: 72%;
}
.left > li {
  height: 60px;
}
</style>