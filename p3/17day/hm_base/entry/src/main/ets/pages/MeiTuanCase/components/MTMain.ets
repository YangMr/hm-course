import { getCategoryList } from '../api/category'
import { CategoryItemType, CategoryType } from '../models'
import MTGoodItem from './MTGoodItem'

@Component
struct MTMain {
  @State
  list: CategoryType[] = []
  @State
  activeIndex: number = 0

  // 组件开始加载的时候调用
  aboutToAppear(): void {
    this.initCategoryList()
  }

  // 商品分类列表数据
  async initCategoryList() {
    try {
      const res = await getCategoryList()
      this.list = res
    } catch (e) {
      console.log(e)
    }
  }

  build() {
    Row() {
      // 左
      Column() {

        ForEach(this.list, (item: CategoryType, index: number) => {
          Text(item.name)
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
        ForEach(this.list[this.activeIndex]?.foods || [], (item: CategoryItemType) => {
          ListItem() {
            MTGoodItem({
              goodItem: item
            })
          }
        })

      }
      .width("100%")
      .height("100%")
      .layoutWeight(1)
      .padding({
        bottom: 90
      })
    }
    .width("100%")
    .layoutWeight(1)
    .height("100%")
  }
}

export default MTMain