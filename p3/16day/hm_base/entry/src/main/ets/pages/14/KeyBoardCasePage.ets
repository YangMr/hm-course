@Entry
@Component
struct KeyBoardCasePage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {
        Text("我是header区域")
      }
      .width("100%")
      .height(50)
      .backgroundColor(Color.Pink)
      .justifyContent(FlexAlign.Center)

      Row() {

      }
      .height("70%")
      .width("100%")
      .backgroundColor("green")

      Row() {
        TextInput({ placeholder: "请输入内容" })
          .layoutWeight(1)
      }
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}