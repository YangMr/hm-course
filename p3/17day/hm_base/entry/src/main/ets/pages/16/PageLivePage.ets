import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct PageLivePage {
  @State message: string = 'Hello World 123';

  // 1.build之前，组件挂载之后
  aboutToAppear(): void {
    promptAction.showDialog({
      message: "aboutToAppear"
    })
  }

  // 2. 销毁
  aboutToDisappear(): void {
    promptAction.showDialog({
      message: "aboutToDisappear"
    })
  }
  
  // entry修饰符才有的周期  页面显示的时候触发
  onPageShow(): void {
    console.log("1", "onPageShow")

    promptAction.showDialog({
      message: "onPageShow"
    })
  }

  // entry修饰符才有的周期  页面隐藏的时候触发
  onPageHide(): void {
    console.log("1", "onPageHide")

    promptAction.showDialog({
      message: "onPageHide"
    })
  }

  // entry修饰符才有的周期  当用户点击返回按钮时触发。
  onBackPress(): boolean | void {
    console.log("1", "onBackPress")

    promptAction.showDialog({
      message: "onBackPress"
    })
    return true
  }

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('PageLivePageHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}