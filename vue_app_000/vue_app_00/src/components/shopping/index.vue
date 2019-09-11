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
      <mt-tab-container-item id="bag" style="background-color:#fff">
        <bag></bag>
      </mt-tab-container-item>
      <mt-tab-container-item id="my">
        <my></my>
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
import TreeSelect from "./list/TreeSelect";
import bag from "./bag/bag";
import my from "./my/index";
export default {
  data() {
    return {
      //面板中显示子组件id
      selected: this.$store.getters.getSelected || "home",
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
    TreeSelect,
    TreeSelect,
    // 购物袋组件
    bag: bag,
    //
    my: my
  },

  created() {
    for (var item of this.currentIndex) {
      item.isSelect = false;
    }
    console.log(this.currentIndex,this.selected)
    switch (this.selected) {
      case "home":
        this.currentIndex[0].isSelect = true;
        break;
      case "list":
        this.currentIndex[1].isSelect = true;
        break;
      case "bag":
        this.currentIndex[2].isSelect = true;
        break;
      case "my":
        this.currentIndex[3].isSelect = true;
        break;
    }
  }
  // computed: {
  //   currentIndex() {
  //     let obj = [
  //       { isSelect: false },
  //       { isSelect: false },
  //       { isSelect: false },
  //       { isSelect: false }
  //     ];
  //     switch (this.selected) {
  //       case "home":
  //         obj[0].isSelected = true;
  //         break;
  //       case "list":
  //         obj[1].isSelected = true;
  //         break;
  //       case "bag":
  //         obj[2].isSelected = true;
  //         break;
  //       case "my":
  //         obj[3].isSelected = true;
  //         break;
  //     }
  //     return obj;
  //   }
  // }
  // updated() {
  //   console.log(12)
  // }
};
</script>
<style  scoped>
.mint-tab-container {
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