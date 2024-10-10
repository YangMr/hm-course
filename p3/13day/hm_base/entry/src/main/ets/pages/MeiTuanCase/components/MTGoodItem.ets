@Component
struct MTGoodItem {
  build() {
    Row() {
      Image("https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/1.jpg")
        .width(90)
        .aspectRatio(1)

      Column({ space: 5 }) {
        Text("小份酸汤莜面鱼鱼+肉夹馍套餐")
          .maxLines(2)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
          .fontWeight(600)

        Text("酸汤莜面鱼鱼，主料：酸汤、莜面 肉夹馍，主料：白皮饼、猪肉")
          .maxLines(1)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
          .fontSize(12)
          .fontColor($r("app.color.food_item_second_color"))


        ForEach(["点评网友推荐"], (item: string) => {

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
          Text("月销售40")
            .fontSize(12)
            .fontColor($r("app.color.black"))
            .margin({
              right: 10
            })

          Text("好评度100%")
            .fontSize(12)
            .fontColor($r("app.color.black"))
        }
        .width("100%")


        Row() {
          Text() {
            Span("¥")
              .fontSize(10)
              .fontColor($r("app.color.font_main_color"))

            Span("34.23")
              .fontWeight(FontWeight.Bold)
              .fontColor($r("app.color.font_main_color"))
          }
        }
        .width("100%")
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