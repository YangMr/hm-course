@Entry
@Component
struct ScrollPage {
  @State message: string = 'Hello World';

  build() {
    Scroll(){
      Column({space : 10}){
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
        ScrollItemComponent()
      }
      .width("100%")
      .backgroundColor("#eee")
      .padding(20)
    }
    .height("100%")
    .backgroundColor(Color.Yellow)
  }
}

@Component
struct ScrollItemComponent{
  build() {
    Row(){
      Text("我是列表")
        // .backgroundColor(Color.White)
        // .width("100%")
        // .textAlign(TextAlign.Center)
    }
    .width("100%")
    .height(80)
    .backgroundColor(Color.Pink)
    .justifyContent(FlexAlign.Center)
    .borderRadius(10)

  }
}