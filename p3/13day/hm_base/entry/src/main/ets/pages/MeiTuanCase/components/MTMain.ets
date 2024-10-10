import MTGoodItem from './MTGoodItem'

@Component
struct MTMain {
  @State
  list: string[] = ["一人套餐", "特色烧烤", "杂粮主食"]
  @State
  activeIndex: number = 0

  build() {
    Row() {
      // 左
      Column() {
        ForEach(this.list, (item: string, index: number) => {
          Text(item)
            .height(50)
            .width("100%")
            .textAlign(TextAlign.Center)
            .fontSize(14)
            .backgroundColor(this.activeIndex === index ? $r("app.color.white") : $r("app.color.left_back_color"))
            .onClick(() => {
              this.activeIndex = index
            })
        })
      }
      .height("100%")
      .width(90)
      .backgroundColor($r("app.color.left_back_color"))

      // 右
      List() {
        ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], (item: number) => {
          ListItem() {
            MTGoodItem()
          }
        })

      }
      .width("100%")
      .height("100%")
      .layoutWeight(1)
    }
    .width("100%")
    .layoutWeight(1)
    .height("100%")
  }
}

export default MTMain