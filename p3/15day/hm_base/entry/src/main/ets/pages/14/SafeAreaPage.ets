import { window } from '@kit.ArkUI';

@Entry
@Component
struct SafeAreaPage {
  @State
  topSafeAreaHeight: number = 0
  bottomSafeAreaHeight: number = 0

  // 页面开始加载的时候
  aboutToAppear(): void {
    // 关闭当前页面的沉浸式
    window.getLastWindow(getContext()).then(win => {
      win.setWindowLayoutFullScreen(false)

      // 传入: 获取的是上面的还是下面
      this.topSafeAreaHeight = px2vp(win.getWindowAvoidArea(window.AvoidAreaType.TYPE_SYSTEM).topRect.height)

      this.bottomSafeAreaHeight =
        px2vp(win.getWindowAvoidArea(window.AvoidAreaType.TYPE_NAVIGATION_INDICATOR).bottomRect.height)

      // AlertDialog.show({
      //   message: this.topSafeAreaHeight + " " + this.bottomSafeAreaHeight
      // })

      // 设置状态栏颜色 (设置状态栏颜色，并不能扩展区域！) 一般用的少
      // win.setWindowSystemBarProperties({
      //   // 上面状态栏
      //   statusBarColor: "#cccccccc",
      //   // 下面导航栏 (未知问题, 官方bug)
      //   navigationBarColor: "#ff00ff0f"
      // })
    })


  }

  build() {
    Column() {
      // Image("")
      Row() {
        Text("hello world")
      }
      .width("100%")
      .height(this.topSafeAreaHeight)

      // .backgroundColor("red")

      Blank()
        .width("100%")

      Row() {
        Text("123123123213")
      }
      .height(this.bottomSafeAreaHeight)
      .backgroundColor(Color.Blue)

    }
    .height('100%')
    .width('100%')
    .backgroundImage("https://img0.baidu.com/it/u=1723891557,2985917547&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=991")
    // .padding({
    //   top: this.topSafeAreaHeight,
    //   bottom: this.bottomSafeAreaHeight
    // })
    .backgroundImageSize({
      width: "100%",
      height: "100%"
    })
    .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])

  }
}

// 总结:
// 1. 全局设置沉浸式
// 2. 针对单个页面设置沉浸式(开启全屏模式)
// 3. 针对单个页面关闭沉浸式
// 4. 设置状态栏的颜色(有点bug, 底部的安全区域不生效)
// 5. 当关闭沉浸式的时候, 使用expandSafeArea按需设置沉浸式