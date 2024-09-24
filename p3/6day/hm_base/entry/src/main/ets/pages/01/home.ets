@Entry
@Component
struct Home{
  build() {

    Column({space : 30}){
      Text("首页")
      Text("首页")
      Row(){
        Text("首页")
          .fontColor("#f60")
          .fontSize(30)
      }
      .width(50)
      .height(50)
      .backgroundColor("#ccc")
      .borderRadius(10)

    }
    .width(100)
    .height(100)
    // .backgroundColor("red")

  }
}

export default  Home