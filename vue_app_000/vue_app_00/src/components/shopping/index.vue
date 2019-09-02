<template>
  <div>
    <!-- 4个面板 -->
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="home">
        <web style="margin-bottom:57px;"></web>
      </mt-tab-container-item>
      <mt-tab-container-item id="list">
        <TreeSelect></TreeSelect>
      </mt-tab-container-item>
      <mt-tab-container-item id="bag">
        <span>22</span>
      </mt-tab-container-item>
      <mt-tab-container-item id="my">
        <span>44</span>
      </mt-tab-container-item>
    </mt-tab-container>

    <!-- 底部4个tabbar -->
    <mt-tabbar id="tabbar" v-model="selected">
      <mt-tab-item id="home" @click.native="changeState(0)">
        <tabbaricon
          :selectedImage="require('../../assets/home_active.png')"
          :normalImage="require('../../assets/home.png')"
          :focused="currentIndex[0].isSelect"
        ></tabbaricon>首页
      </mt-tab-item>
      <mt-tab-item id="list" @click.native="changeState(1)">
        <tabbaricon
          :selectedImage="require('../../assets/list_active.png')"
          :normalImage="require('../../assets/list.png')"
          :focused="currentIndex[1].isSelect"
        ></tabbaricon>分类
      </mt-tab-item>
      <mt-tab-item id="bag" @click.native="changeState(2)">
        <tabbaricon
          :selectedImage="require('../../assets/bag_active.png')"
          :normalImage="require('../../assets/bag.png')"
          :focused="currentIndex[2].isSelect"
        ></tabbaricon>购物袋
      </mt-tab-item>
      <mt-tab-item id="my" @click.native="changeState(3)">
        <tabbaricon
          :selectedImage="require('../../assets/my_active.png')"
          :normalImage="require('../../assets/my.png')"
          :focused="currentIndex[3].isSelect"
        ></tabbaricon>我的
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>
<script>
import TabBarIcon from "./home/TabBarIcon";
import web from "../shopping/home/web";
import TreeSelect from "./list/TreeSelect"
export default {
  data() {
    return {
      //面板中显示子组件id
      selected: "list",
      currentIndex: [
        { isSelect: true },
        { isSelect: false },
        { isSelect: false },
        { isSelect: false }
      ]
    };
  },
  methods: {
    changeState(n) {
      //函数功能:将当前参数下标
      //对应数组值修改true其它修改false
      //1:创建循环,循环数组中内容
      for (var i = 0; i < this.currentIndex.length; i++) {
        //2:判断如果循环下标与n相等 20
        if (n == i) {
          //3:当前下标元素true 10:22
          this.currentIndex[i].isSelect = true;
        } else {
          //4:其它元素修改false
          this.currentIndex[i].isSelect = false;
        }
      }
    }
  },
  components: {
    // 底部tarbar组件
    tabbaricon: TabBarIcon,
    // 页面组件
    web: web,
    // 列表页面组件
    TreeSelect,TreeSelect,
  }
};
</script>
<style  scoped>
.mint-tab-container{
  height: 100%;
}
/*最外层父元素Home.vue*/
.page-tabbar {
  overflow: hidden; /*溢出隐藏*/
}
/*修改 tabbar 默认文字颜色*/
.mint-tabbar > .mint-tab-item {
  color: #999999;
}
/*修改默认tab选中文字样式*/
.mint-tabbar > .mint-tab-item.is-selected {
  background-color: transparent;
  color: red;
}
.page-wrap {
  overflow: auto; /*溢出显示轮动条*/
  padding-bottom: 60px;
}
#tabbar {
  position: fixed;
  bottom: 0;
}

</style>