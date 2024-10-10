@Component
struct MTCartItem {
  build() {
    Row() {
      Image("https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/1.jpg")
        .width(60)
        .aspectRatio(1)
        .borderRadius(8)

      Column({ space: 5 }) {
        Text("小份酸汤莜面鱼鱼+肉夹馍套餐")
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
            Span("26.88")
              .fontColor($r("app.color.font_main_color"))
              .fontWeight(FontWeight.Bold)
          }
        }
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