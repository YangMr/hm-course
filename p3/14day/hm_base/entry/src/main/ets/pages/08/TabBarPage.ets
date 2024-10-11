import ConnectComponent from './components/Connent'

interface TabBarItemType {
  icon: ResourceStr
  title: string,
  selectIcon: ResourceStr
  name: string
}

@Entry
@Component
struct TabBarPage {
  @State
  TabBarList: TabBarItemType[] = [
    {
      icon: $r("app.media.ic_public_message"),
      title: "微信",
      selectIcon: $r('app.media.ic_public_message_filled'),
      name: "wechat"
    },
    {
      icon: $r("app.media.ic_public_contacts_group"),
      title: "联系人",
      selectIcon: $r('app.media.ic_public_contacts_group_filled'),
      name: 'connect',
    },
    {
      icon: $r("app.media.ic_gallery_discover"),
      title: "发现",
      selectIcon: $r('app.media.ic_gallery_discover_filled'),
      name: 'discover',
    },
    {
      icon: $r("app.media.ic_public_contacts"),
      title: "我的",
      selectIcon: $r('app.media.ic_public_contacts_filled'),
      name: 'my',
    }
  ]
  @State
  currentTabIndex: number = 0

  @Builder
  TabBarItem(item: TabBarItemType) {
    Column() {
      Image(this.TabBarList[this.currentTabIndex].name === item.name ? item.selectIcon : item.icon)
        .width(20)
        .height(20)
      Text(item.title)
        .fontSize(12)

        .fontColor(this.TabBarList[this.currentTabIndex].name === item.name ? "#1aad19" : "#333")
        .margin({
          top: 5
        })
    }

  }

  build() {
    Column() {
      Tabs({ index: $$this.currentTabIndex }) {
        ForEach(this.TabBarList, (item: TabBarItemType) => {
          TabContent() {
            if (item.name === "wechat") {
              // 微信组件
            } else if (item.name === "connect") {
              // 联系人组件
              ConnectComponent()
            }


          }.tabBar(this.TabBarItem(item))
        })
      }
      // .backgroundColor(Color.White)
      .barPosition(BarPosition.End)
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")

  }
}