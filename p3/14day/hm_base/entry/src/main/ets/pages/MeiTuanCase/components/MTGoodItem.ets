import { CategoryItemType } from '../models'
import MTAddCart from './MTAddCart'

@Component
struct MTGoodItem {
  goodItem: CategoryItemType = {} as CategoryItemType

  build() {
    Row() {
      Image(this.goodItem.picture)
        .width(90)
        .aspectRatio(1)

      Column({ space: 5 }) {
        Text(this.goodItem.name)
          .maxLines(2)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
          .fontWeight(600)

        Text(this.goodItem.description)
          .maxLines(1)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
          .fontSize(12)
          .fontColor($r("app.color.food_item_second_color"))


        ForEach(this.goodItem.food_tag_list, (item: string) => {

          Text(item)
            .backgroundColor($r("app.color.food_item_label_color"))
            .fontSize(10)
            .fontColor($r("app.color.font_main_color"))
            .margin({ right: 5 })
            .padding({
              top: 2,
              bottom: 2,
              left: 5,
              right: 5
            })
        })


        Row() {
          Text("月销售" + this.goodItem.month_saled)
            .fontSize(12)
            .fontColor($r("app.color.black"))
            .margin({
              right: 10
            })

          if (this.goodItem.like_ratio_desc) {
            Text(this.goodItem.like_ratio_desc)
              .fontSize(12)
              .fontColor($r("app.color.black"))
          }

        }
        .width("100%")


        Row() {
          Text() {
            Span("¥")
              .fontSize(10)
              .fontColor($r("app.color.font_main_color"))

            Span(this.goodItem.price.toString())
              .fontWeight(FontWeight.Bold)
              .fontColor($r("app.color.font_main_color"))
          }

          MTAddCart({
            goodItem: this.goodItem
          })
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .layoutWeight(1)
      .padding({
        left: 10,
        right: 10
      })
      .alignItems(HorizontalAlign.Start)
    }
    .padding(10)
    .alignItems(VerticalAlign.Top)
  }
}

export default MTGoodItem