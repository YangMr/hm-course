@Entry
@Component
struct LayoutWeightPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {
        Text("hello")
          .width(80)
          .backgroundColor(Color.Yellow)


        Row() {
          Text("world")
        }
        .backgroundColor(Color.Pink)
        // 分配剩余空间
        .layoutWeight(1)

        // .width("100%")

        Text("123")
      }
      .width("100%")
      .height(40)
      .backgroundColor(Color.Red)
    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Gray)
  }
}