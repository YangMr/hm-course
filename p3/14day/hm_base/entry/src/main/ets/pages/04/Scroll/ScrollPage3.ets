@Entry
@Component
struct ScrollPage {
  @State message: string = 'Hello World';

  // 初始化滚动条控制器
  scroller :Scroller  = new Scroller()

  build() {

    Column(){
      Scroll(this.scroller){
        Row({space: 20}){
          Actor()
          Actor()
          Actor()
          Actor()
          Actor()
          Actor()
          Actor()
          Actor()
          Actor()
          Actor()
        }
        .padding(20)
        .height("100%")

      }
      .scrollable(ScrollDirection.Horizontal)
      .height(200)
      .backgroundColor(Color.Yellow)


      Row({space: 20}){
        Button("滚动到左侧")
          .onClick(() => {
            this.scroller.scrollTo({xOffset : 300, yOffset : 0})
           // this.scroller.scrollEdge(Edge.Start)
          })
        Button("滚动到右侧")
          .onClick(() => {
            // this.scroller.scrollEdge(Edge.End)
          })
      }
      .margin(20)
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#eee")







  }
}


@Component
struct Actor{
  build() {
    Row(){
      Text("横向卡片")
    }
    .backgroundColor(Color.Red)
    .width(100)
    .height(180)
    .justifyContent(FlexAlign.Center)
    .borderRadius(10)
  }
}