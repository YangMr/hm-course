@Entry
@Component
struct StackPage {
  @State message: string = 'Hello World';

  build() {
    Column(){

      Row(){
        Stack({alignContent: Alignment.TopEnd}){
          Image("https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png")
            .width(160)
          Text("鸿蒙")
            .fontSize(12)
            .offset({
              x : -20,
              y : 30
            })
        }
      }

      Row(){
        TextInput()
          .layoutWeight(1)
          .border({
            width : 2,
            color : "#ccc"
          })
          .height(40)
          .backgroundColor("#fff")
          .borderRadius({
            topLeft : 10,
            bottomLeft : 10
          })

        Button("百度一下")
          .type(ButtonType.Normal)
          .translate({
            x : -2
          })
          .borderRadius({
            topRight : 10,
            bottomRight : 10
          })
      }.margin({
        top : 20
      })

    }.width("100%")
    .height("100%")
    .backgroundColor(Color.White)
    .padding(16)
    .justifyContent(FlexAlign.Center)
  }
}