import { MyFontSize } from './Enum/MyFontSize';

@Entry
@Component
struct GlobalPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text("hello")
        .fontSize(MyFontSize.Max)

      Text("word")
        .fontSize(MyFontSize.Max)

      Text("你好")
        .fontSize(MyFontSize.Max)

      Text("好好")
        .fontSize(MyFontSize.Max)
    }
    .height('100%')
    .width('100%')

    // 十六进制的写法
    // .backgroundColor("#ff6600")

    // 枚举写法
    // .backgroundColor(Color.Pink)

    // rgba
    // .backgroundColor("rgba(22,33,44,0.5)")

    // 颜色单词定义
    // .backgroundColor("")

    // 内置颜色
    // .backgroundColor($r("app.color.main_color"))

  }
}