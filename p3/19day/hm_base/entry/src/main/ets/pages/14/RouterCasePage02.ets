import router from '@ohos.router';

@Entry
@Component
struct RouterCasePage02 {
  @State message: string = 'Hello World';

  aboutToAppear(): void {
    // 该方法只需要在返回之前执行一下即可，建议进入页面前执行
    // ● 不能获取点击了确定还是取消，由它本身进行处理
    // ● 不论物理按键还是back都会触发
    // ● 如果有onBackPress会被取代物理按键的逻辑，不会触发提示
    router.showAlertBeforeBackPage({
      message: "确定要退出吗?"
    })
  }

  build() {
    Column() {
      Text("我是02页面")

      Button("我是02页面, 我现在要跳转到01页面")
        .onClick(() => {
          router.pushUrl({
            url: "pages/14/RouterCasePage01"
          }, router.RouterMode.Single)
        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Pink)
  }
}