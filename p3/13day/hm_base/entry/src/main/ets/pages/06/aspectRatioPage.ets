@Entry
@Component
struct AspectRatioPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {

      }
      .width("30%")
      .aspectRatio(1)

      .backgroundColor("red")
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}