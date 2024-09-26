@Entry
@Component
struct FlexPage {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Flex({justifyContent : FlexAlign.SpaceBetween, alignItems : ItemAlign.Center}){
        Row(){
          Text("热门推荐")
            .fontSize(22)
            .fontWeight(FontWeight.Bold)
          Text("HOT")
            .backgroundColor("#f60")
            .fontSize(12)
            .padding({left :5, right :5, top :2, bottom : 2})
            .fontColor("#fff")
            .borderRadius({
              topRight : "50%",
              bottomRight : "50%",
              topLeft : "50%"
            })
            .margin({left : 5})
        }.justifyContent(FlexAlign.Center)

        Row(){
          Text("全部")
          Text(">")
            .margin({left : 5})
            .fontColor(Color.Gray)
        }

      }
    }
    // .justifyContent(FlexAlign.Center)
    .width("100%")
    .height("100%")
    .backgroundColor(Color.White)
    .padding(20)
  }
}