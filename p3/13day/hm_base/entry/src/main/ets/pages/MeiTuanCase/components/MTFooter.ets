@Component
struct MTFooter {
  build() {
    Row() {
      Row() {
        Badge({
          value: "0",
          position: BadgePosition.Right,
          style: {
            badgeSize: 20
          }
        }) {
          Image($r("app.media.ic_public_cart"))
            .width(47)
            .height(69)
            .position({
              y: -19
            })
        }
        .margin({
          left: 25,
          right: 10
        })

        Column() {
          Text() {
            Span("¥")
              .fontSize(12)
            Span("0.00")
              .fontSize(24)
          }.fontColor($r("app.color.white"))

          Text("预估另需配送费¥5元")
            .fontSize(14)
            .fontColor($r("app.color.search_font_color"))
        }
        .alignItems(HorizontalAlign.Start)
        .layoutWeight(1)


        Text("去结算")
          .width(100)
          .height(50)
          .borderRadius({
            topRight: 25,
            bottomRight: 25
          })
          .textAlign(TextAlign.Center)
          .backgroundColor($r("app.color.main_color"))
      }
      .width("100%")
      .height(50)
      .backgroundColor($r("app.color.bottom_back"))
      .borderRadius(25)
    }
    .padding({
      left: 20,
      right: 20,
      bottom: 20
    })

  }
}

export default MTFooter