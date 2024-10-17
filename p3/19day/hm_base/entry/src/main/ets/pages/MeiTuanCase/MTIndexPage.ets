import MTCart from './components/MTCart';
import MTFooter from './components/MTFooter';
import MTHeader from './components/MTHeader';
import MTMain from './components/MTMain';


// import request from "./utils/http"


// 内置http模块
// 第三方模块 axios 请求
/***
 * 1. 下载axios
 * 2. 引入axios
 * 3. 创建axios实例对象
 * 4. 发送请求
 *
 */

@Entry
@Component
struct MTIndexPage {
  @Provide
  showCart: boolean = false

  build() {
    Column() {
      Stack({ alignContent: Alignment.Bottom }) {
        Column() {
          // 1. 顶部
          MTHeader()
          // 2. 内容
          MTMain()
        }
        .height("100%")
        .width("100%")

        // 4. 购物车
        if (this.showCart) {
          MTCart()
        }


        // 3. 底部
        MTFooter()
      }
      .layoutWeight(1)

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}