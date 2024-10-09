@Component
struct SelectImageComponent {
  // prop 单向的, 子数据改变, 父数据不会改变
  // link 双向的, 子数据改变, 父数据会改变
  // 跨组件 provice 与 comsume
  // watch 监听的属性的变化
  //
  @State
  imgList: string[] = []
  @Link
  showDialog: boolean
  @State
  checkList: string[] = [] // 保存的是选中的图片
  @Prop
  maxSize: number = 9
  // 将子组件的数据传递给父组件
  @Link
  selectedList: string[]

  build() {
    Column() {
      Row() {
        Text("取消")
          .onClick(() => {
            this.showDialog = false
          })

        Text(`已选择${this.checkList.length}/${this.imgList.length}张`)

        Text("确定")
          .onClick(() => {
            this.selectedList.push(...this.checkList)
            // this.selectedList = this.checkList

            this.showDialog = false
          })
      }
      .width("100%")
      .padding(20)
      .justifyContent(FlexAlign.SpaceBetween)

      Grid() {
        ForEach(this.imgList, (item: string) => {
          GridItem() {
            Stack({ alignContent: Alignment.BottomEnd }) {
              Image(item)
                .width("100%")
                .aspectRatio(1)
                .onClick(() => {
                  // 如果checklist 里面有我当前点击的图片, 说明这个图片已经选择过了
                  // 如果checklist 里面没有我当前点击的图片, 说明这个图片没有选择过
                  if (this.checkList.includes(item)) {
                    this.checkList = this.checkList.filter(img => img != item)
                  } else {
                    if (this.checkList.length < this.maxSize) {
                      this.checkList.unshift(item)
                    }
                  }

                  // promptAction.showToast({
                  //   message: item
                  // })
                })

              if (this.checkList.includes(item)) {
                Image($r("app.media.ic_select"))
                  .width(20)
                  .aspectRatio(1)
              }

            }

          }

        })
      }
      .width("100%")
      .layoutWeight(1)
      .columnsTemplate("1fr 1fr 1fr")
      .padding(20)
      .columnsGap(10)
      .rowsGap(10)
    }
  }
}

export default SelectImageComponent