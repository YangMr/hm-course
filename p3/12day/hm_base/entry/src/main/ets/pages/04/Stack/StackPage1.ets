@Entry
@Component
struct StackPage {
  @State message: string = 'Hello World';

  build() {
    Column(){

      Row(){

        Stack(){
          Text("抖音")
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
            .fontColor("#ff2d83b3")
            .translate({
              x : 2,
              y : -2
            })
            .zIndex(1)

          Text("抖音")
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
            .fontColor("#ffe31fa9")
            .translate({
              x : 5,
              y : -8
            })
            .zIndex(2)

          Text("抖音")
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
            // .fontColor("#ffe31fa9")
            .translate({
              x : 5,
              y : -8
            })
            .zIndex(3)
        }


      }


    }.width("100%")
    .height("100%")
    .backgroundColor(Color.White)
    .padding(16)
    .justifyContent(FlexAlign.Center)
  }
}