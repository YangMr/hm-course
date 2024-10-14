import { ResponseCategoryListType } from '../../api/types/categoryType'

// ● 前提：需要出现父子组件的关系
// ● 前提：BuilderParam应出现在子组件中
// ● 1. 子组件声明  @BuilderParam  getConent: () => void
// ● 2. BuilderParam的参数可以不给初始值，如果给了初始值， 就是没有内容的默认内容
// ● 3. 父组件传入的时候，它需要用builder修饰的函数又或者是 一个箭头函数中包裹着
// ● 4. 调用builder函数的逻辑

@Component
struct CustomTab {
  @Prop
  categoryList: ResponseCategoryListType[] = [] as ResponseCategoryListType[]
  @Link
  activeIndex: number
  @BuilderParam
  getContent: () => void = this.defaultContent

  @Builder
  defaultContent() {
    Row() {
      Text("暂无数据")
        .fontColor("#ccc")
    }
    .width("100%")
    .layoutWeight(1)
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Column() {
      Row() {
        List() {
          ForEach(this.categoryList, (item: ResponseCategoryListType, index: number) => {
            ListItem() {
              Column() {
                Text(item.name)
                  .fontColor(this.activeIndex === index ? "rgb(52, 93, 194)" : "")
                  .fontWeight(this.activeIndex === index ? 600 : FontWeight.Normal)

                Text()
                  .width(25)
                  .height(4)
                  .borderRadius(15)
                  .backgroundColor(this.activeIndex === index ? "rgb(52, 93, 194)" : "transparent")
                  .offset({
                    y: 10
                  })
              }
              .width("20%")
              .height("100%")
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
        .listDirection(Axis.Horizontal)
        .scrollBar(BarState.Off)
      }
      .width("100%")
      .height(40)
      .border({
        width: {
          bottom: 1
        },
        color: "#ccc"
      })
      .backgroundColor("#fff")

      this.getContent()
    }
    .width("100%")
    .layoutWeight(1)

  }
}

export default CustomTab