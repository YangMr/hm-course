import { getCategoryList } from '../../api/category'
import { ResponseCategoryListItemType, ResponseCategoryListType } from '../../api/types/categoryType'

@Component
struct CategoryMain {
  @State
  categoryList: ResponseCategoryListType[] = []
  @State
  activeIndex: number = 0

  // 组件一开始加载的时候
  aboutToAppear(): void {
    this.initCategoryList()
  }

  // 获取分类列表数据
  async initCategoryList() {
    try {
      const res = await getCategoryList()

      this.categoryList = res
    } catch (e) {
      console.log(e)
    }
  }

  build() {
    Row() {
      Column() {
        List() {
          ForEach(this.categoryList, (item: ResponseCategoryListType, index: number) => {
            ListItem() {
              Row() {

                Stack({ alignContent: Alignment.Start }) {
                  Text(item.name)
                    .fontColor(this.activeIndex === index ? "rgb(52, 93, 194)" : "")
                    .fontWeight(this.activeIndex === index ? FontWeight.Bold : FontWeight.Normal)
                    .layoutWeight(1)
                    .width("100%")
                    .textAlign(TextAlign.Center)

                  if (index === this.activeIndex) {
                    Text() {
                    }
                    .width(3)
                    .height(20)
                    .backgroundColor("rgb(52, 93, 194)")
                    .borderRadius(3)
                  }
                }
              }
              .width("100%")
              .height(74)
              .justifyContent(FlexAlign.Center)
              .onClick(() => {
                this.activeIndex = index
              })
            }
          }, (item: ResponseCategoryListType) => item.id.toString())

        }
        .width("100%")
        .height("100%")
        .layoutWeight(1)
      }
      .width(100)
      .height("100%")
      .backgroundColor("#eee")

      Row() {
        Grid() {
          ForEach(this.categoryList[this.activeIndex]?.labelList || [], (item: ResponseCategoryListItemType) => {
            GridItem() {
              Text(item.name)
                .border({
                  width: 1,
                  color: "#999"
                })
                .fontSize(12)
                .width(80)
                .height(32)
                .textAlign(TextAlign.Center)
                .borderRadius(20)
            }
          })
        }
        // .width("100%")
        .height("100%")
        .layoutWeight(1)
        .columnsTemplate("1fr 1fr 1fr")
        .rowsGap(10)
        .columnsGap(8)

      }
      .layoutWeight(1)
      .height("100%")
      .padding(10)
      .alignItems(VerticalAlign.Top)
    }
    .width("100%")
    .height("100%")
    .padding({
      bottom: 50
    })

  }
}

export default CategoryMain