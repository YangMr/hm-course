@Entry
@Component
struct ScrollPage {
  @State message: string = 'Hello World';

  build() {
   Column(){
     // 头部
     Row(){
       Text("我是顶部")
     }
     .width("100%")
     .height(80)
     .backgroundColor(Color.Red)
     .justifyContent(FlexAlign.Center)

     // 内容
     Scroll(){
       Column({space: 10}){
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
       .backgroundColor(Color.Gray)
       .justifyContent(FlexAlign.Center)
       .padding(20)
     }
     .layoutWeight(1)



     // 底部
     Row(){
       Text("我是底部")
     }
     .width("100%")
     .height(80)
     .backgroundColor(Color.Blue)
     .justifyContent(FlexAlign.Center)
   }
    .width("100%")
    .height("100%")
    .backgroundColor("#eee")

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