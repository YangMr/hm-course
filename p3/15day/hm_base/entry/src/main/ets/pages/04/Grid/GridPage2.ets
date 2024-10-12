interface ItemType  {
  id : number,
  name : string
}

@Entry
@Component
struct GridPage {
  @State message: string = 'Hello World';


  build() {
    Column(){
      Grid(){
        GridItemComponent()
        GridItemComponent()
        GridItemComponent()
        GridItemComponent()
        GridItemComponent()
        GridItemComponent()
        GridItemComponent()
        GridItemComponent()
        GridItemComponent()
        GridItemComponent()
      }
      .columnsTemplate("1fr 1fr 1fr 1fr")
      .rowsGap(10)
      .columnsGap(10)
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#fff")
    .padding(20)
  }
}


@Component
struct GridItemComponent {
  build() {
    GridItem(){
      Row(){
        Text("java")
          // .width("100%")
          // .backgroundColor(Color.Pink)
          // .padding(10)
      }
      .width("100%")
      .padding(10)
      .justifyContent(FlexAlign.Center)
      .backgroundColor(Color.Grey)
      .borderRadius(10)


    }
  }
}

