import { promptAction } from '@kit.ArkUI';

// 全局
@Styles
function ButtonStyleFun1() {
  .width("80%")
  .height(50)
  .borderRadius(5)
  .onClick(() => {
    promptAction.showToast({
      message: "123"
    })
  })
}

@Entry
@Component
struct StylePage {
  @State message: string = 'Hello World';

  build() {
    Column({
      space: 15
    }) {
      Button("微信支付")
        .ButtonStyleFun()
        .backgroundColor("red")

      Button("微信支付")
        .ButtonStyleFun()
        .backgroundColor(Color.Brown)


      Button("微信支付")
        .ButtonStyleFun()
      Button("微信支付")
        .ButtonStyleFun()
      Button("微信支付")
        .ButtonStyleFun()

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}


// 局部
// @Styles可以把一个 公共样式 抽离成一个样式函数
// ButtonStyleFunc可以给任何一个组件用
// 鸡肋的点：
// 1.不允许导入导出(只能在当前页面用)
// 2.函数不允许传参数
// 3.只能写公共样式(通用属性)
@Styles
function ButtonStyleFun() {
  .width("80%")
  .height(50)
  .borderRadius(5)
  .onClick(() => {
    promptAction.showToast({
      message: "123"
    })
  })
}