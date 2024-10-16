@Entry
@Component
struct VPPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {

      }
      .width("360lpx")
      .height("72lpx")
      .backgroundColor("red")

      // 相对单位 : 随便屏幕的尺寸变化而变化, 如果没有设置基准值, 鸿蒙默认的尺寸是720
      // 360

      // Row() {
      // }
      // .width(30)
      // .height(10)
      // .backgroundColor(Color.Pink)

      // 1vp = 1fr
      Text("hello")
        .fontSize("30fp")
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}