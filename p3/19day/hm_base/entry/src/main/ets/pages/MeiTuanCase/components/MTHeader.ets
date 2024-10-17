import { NavListModel } from '../models/navListType'

@Component
struct MTHeader {
  @State
  navList: NavListModel[] = [
    new NavListModel({
      id: 1,
      active: true,
      title: "点菜"
    }),
    new NavListModel({
      id: 2,
      active: false,
      title: "评价",
      subtitle: "1796"
    }),
    new NavListModel({
      id: 3,
      active: false,
      title: "商家",
    })
  ]

  @Builder
  NavItem(active: boolean, title: string, subtitle?: string | number) {
    Column() {
      Text() {
        Span(title)
        if (subtitle) {
          Span(" " + subtitle)
            .fontSize(10)
        }
      }
      .fontWeight(active ? FontWeight.Bold : FontWeight.Normal)
      .fontColor(active ? $r("app.color.black") : $r("app.color.un_select_color"))
      .layoutWeight(1)

      Text()
        .height(2)
        .width(20)
        .backgroundColor(active ? $r("app.color.select_border_color") : "transparent")
        .margin({
          left: 6
        })
    }
    .width(73)
    .alignItems(HorizontalAlign.Start)
    .padding({
      top: 3
    })
    .onClick(() => {
      // 把当前所点击的数据, 里面的active变成true, 把非当前数据的active变成false
      this.navList.forEach((item: NavListModel, index: number) => {
        if (item.title === title) {
          item.active = true
        } else {
          item.active = false
        }

        this.navList[index] = new NavListModel(item)
      })
    })
  }

  build() {
    Row() {
      // tab
      Row() {
        ForEach(this.navList, (item: NavListModel) => {
          this.NavItem(item.active, item.title, item.subtitle)
        })

        // this.NavItem(false, "评价", "1796")
        // this.NavItem(false, "商家")
      }

      // 搜索
      Row() {
        Image($r("app.media.ic_public_search"))
          .width(14)
          .aspectRatio(1)
          .fillColor($r("app.color.search_font_color"))

        Text("请输入菜品名称")
          .fontSize(12)
          .fontColor($r("app.color.search_font_color"))

      }
      .height(25)
      .borderRadius(13)
      .backgroundColor($r("app.color.search_back_color"))
      .layoutWeight(1)
      .padding({
        left: 15,
        right: 15
      })

    }
    .height(40)
    .width("100%")
    .padding({
      left: 15,
      right: 15
    })
    .border({
      width: {
        bottom: 0.5
      },
      color: $r("app.color.top_border_color")
      // color: "red"
    })
  }
}

export default MTHeader