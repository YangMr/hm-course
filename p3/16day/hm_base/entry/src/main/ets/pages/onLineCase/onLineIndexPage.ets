import Home from './views/Home'
import Category from './views/Category'
import { TabBarClass } from './types/TabBarType'
import Question from './views/Question'
import Article from './views/Article'
import My from './views/My'


@Entry
@Component
struct OnLineIndexPage {
  @State
  tabBarList: TabBarClass[] = [
    {
      id: 1,
      icon: $r('app.media.ic_public_message'),
      name: 'home',
      title: '首页',
      selectIcon: $r('app.media.ic_public_message_filled')
    },
    {
      id: 2,
      icon: $r('app.media.ic_public_contacts_group'),
      name: 'category',
      title: '分类',
      selectIcon: $r('app.media.ic_public_contacts_group_filled')
    },
    {
      id: 3,
      icon: $r('app.media.ic_gallery_discover'),
      name: 'article',
      title: '阅读',
      selectIcon: $r('app.media.ic_gallery_discover_filled')
    },
    {
      id: 4,
      icon: $r('app.media.ic_public_contacts'),
      name: 'question',
      title: '问答',
      selectIcon: $r('app.media.ic_public_contacts_filled')
    },
    {
      id: 5,
      icon: $r('app.media.ic_public_contacts'),
      name: 'my',
      title: '我的',
      selectIcon: $r('app.media.ic_public_contacts_filled')
    }
  ]
  @State
  activeIndex: number = 0

  @Builder
  TabBarItem(item: TabBarClass) {
    Column() {
      Image(this.tabBarList[this.activeIndex].name === item.name ? item.selectIcon : item.icon)
        .width(20)
        .aspectRatio(1)

      Text(item.title)
        .fontSize(12)
        .fontColor(this.tabBarList[this.activeIndex].name === item.name ? Color.Green : Color.Black)
        .margin({
          top: 5
        })

    }
  }

  build() {
    Column() {
      Tabs({ index: $$this.activeIndex }) {
        ForEach(this.tabBarList, (item: TabBarClass) => {
          TabContent() {
            if (item.name === "home") {
              Home()
            } else if (item.name === "category") {
              Category()
            } else if (item.name === "article") {
              Article()
            } else if (item.name === "question") {
              Question()
            } else if (item.name === "my") {
              My()
            }
          }.tabBar(this.TabBarItem(item))
        }, (item: TabBarClass) => item.id.toString())
      }.barPosition(BarPosition.End)
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}