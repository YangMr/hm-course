@Component
struct HeaderComponent {
  @State
  title: string = ""

  build() {
    // 1. 标题
    Row() {
      Row() {
        Image($r("sys.media.ohos_ic_public_arrow_left"))
          .width(24)
          .height(24)
      }
      .width(30)
      .height(30)
      .backgroundColor("#f4f4f4")
      .justifyContent(FlexAlign.Center)
      .borderRadius(15)

      Text(this.title)
        .layoutWeight(1)
        .textAlign(TextAlign.Center)
      // .margin({
      //   right: 30
      // })

      Row() {
      }
      .width(30)
      .height(30)

    }
    .width("100%")
    .padding(16)
    .border({
      width: {
        bottom: 1
      },
      color: "#f4f5f6"
    })
  }
}


export default HeaderComponent