@Entry
@Component
struct GridPage {
  @State message: string = 'Hello World';

  build() {
    Grid(){
      GridItemCase()
      GridItemCase()
      GridItemCase()
      GridItemCase()
      GridItemCase()
      GridItemCase()
      GridItemCase()
      GridItemCase()
      GridItemCase()
      GridItemCase()
    }
    .width("100%")
    .height("100%")
    .backgroundColor(Color.Grey)
    .columnsTemplate("1fr 1fr 1fr")
    .columnsGap(10)
    .rowsGap(10)
    .padding(10)
  }
}

@Component
struct GridItemCase{
  build() {
    GridItem(){
      Row(){
        Column(){
          Text("hello")
        }
        .width("100%")
      }.height(200)
      .borderRadius(10)
      .backgroundColor(Color.Pink)

    }
  }
}