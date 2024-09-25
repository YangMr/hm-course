@Entry
@Component
struct FlexPage {
  @State message: string = 'Hello World';

  build() {
    Column(){

      Flex({wrap : FlexWrap.Wrap, justifyContent: FlexAlign.Center}){

        Column(){

        }.height(200)
        .width(80)
        .backgroundColor(Color.Blue)

        Column(){

        }.height(200)
        .width(80)
        .backgroundColor(Color.Red)

        Column(){

        }.height(200)
        .width(80)
        .backgroundColor(Color.Yellow)

        Column(){

        }.height(200)
        .width(80)
        .backgroundColor(Color.Green)

        Column(){

        }.height(200)
        .width(80)
        .backgroundColor(Color.Gray)

      }


    }
    .justifyContent(FlexAlign.Center)
    .width("100%")
    .height("100%")
    .backgroundColor(Color.White)
    .padding(20)
  }
}