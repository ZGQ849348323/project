<template>
  <div>
    <van-search v-model="value" placeholder="请输入搜索关键词" show-action shape="round" @search="onSearch">
      <div slot="action" @click="onSearch">搜索</div>
    </van-search>
  </div>
</template>
<script>
export default {
  data() {
    return {
      value: ""
    };
  },
  methods: {
    onSearch() {
      console.log(this.value);
    }
  }
};
</script>
<style scoped>
.van-search {
	width: 100%;
  position: fixed;
  /* top: 0; */
  background-color: #e6e6e6 !important;
  z-index: 9999;
  opacity: 0.9;
}
.van-search__content {
  background: #fff;
}
</style>