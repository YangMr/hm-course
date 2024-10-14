import { CategoryItemType } from '../models'
import MTAddCart from './MTAddCart'

@Component
struct MTCartItem {
  item: CategoryItemType = {} as CategoryItemType

  build() {
    Row() {
      Image(this.item.picture)
        .width(60)
        .aspectRatio(1)
        .borderRadius(8)

      Column({ space: 5 }) {
        Text(this.item.name)
          .fontSize(14)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
          .maxLines(2)
        Row() {
          Text() {
            Span("¥")
              .fontSize(10)
              .fontColor($r("app.color.font_main_color"))
            Span(this.item.price.toString())
              .fontColor($r("app.color.font_main_color"))
              .fontWeight(FontWeight.Bold)
          }

          MTAddCart({
            goodItem: this.item
          })
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
      .padding({
        left: 10,
        right: 10
      })
    }
    .alignItems(VerticalAlign.Top)
  }
}

export default MTCartItem