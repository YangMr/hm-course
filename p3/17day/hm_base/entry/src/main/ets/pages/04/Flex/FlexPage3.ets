@Entry
@Component
struct FlexPage {
  @State message: string = 'Hello World';

  build() {
    Column(){

      Flex({justifyContent : FlexAlign.Center, alignItems : ItemAlign.Center}){

        Column(){

        }.width(100)
        .height(100)
        .backgroundColor(Color.Red)

      }.width(300)
      .height(300)
      .backgroundColor(Color.Gray)


    }
    .justifyContent(FlexAlign.Center)
    .width("100%")
    .height("100%")
    .backgroundColor(Color.White)
    .padding(20)
  }
}