@Entry
@Component
struct LayoutWeightPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {
      }
      .width('100%')
      .height(50)
      .backgroundColor(Color.Blue)

      Column() {
      }
      .width('100%')
      .backgroundColor(Color.Green)
      .layoutWeight(1)

      Column() {
      }
      .width('100%')
      .backgroundColor(Color.Orange)
      .layoutWeight(1)

      Row() {
      }
      .width('100%')
      .height(50)
      .backgroundColor(Color.Red)

      // Row() {
      //   Row() {
      //   }
      //   .width(100)
      //   .height(40)
      //   .backgroundColor(Color.Yellow)
      //
      //   Row() {
      //
      //   }
      //   // 自适应
      //   .layoutWeight(1)
      //   .height(40)
      //   .backgroundColor(Color.Pink)
      // }
      // .width("100%")
    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Gray)
  }
}