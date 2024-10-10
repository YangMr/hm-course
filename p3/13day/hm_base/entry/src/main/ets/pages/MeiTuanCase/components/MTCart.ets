import MTCartItem from './MTCartItem'

@Component
struct MTCart {
  @Consume("showCart")
  showCart: boolean

  build() {
    Column() {

      Blank()
        .onClick(() => {
          this.showCart = false
        })

      Column() {
        Row() {
          Text("购物车")
            .fontSize(12)
            .fontWeight(600)

          Text("清空购物车")
            .fontSize(12)
            .fontColor($r("app.color.search_font_color"))
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
        .padding(15)

        List({ space: 12 }) {
          ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], (item: number) => {
            ListItem() {
              MTCartItem()
            }

          })
        }
        .divider({
          strokeWidth: 1,
          color: $r("app.color.top_border_color")
        })
        .padding({
          left: 15,
          right: 15,
          bottom: 90
        })
        .width("100%")
        .height("100%")
        .layoutWeight(1)
      }
      .width("100%")
      .height(400)
      .backgroundColor($r("app.color.white"))
      .borderRadius({
        topLeft: 20,
        topRight: 20
      })

    }
    .width("100%")
    .height("100%")
    .backgroundColor("rgba(0,0,0,0.5)")
  }
}

export default MTCart