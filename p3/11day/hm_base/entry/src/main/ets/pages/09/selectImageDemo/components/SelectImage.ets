@Component
struct SelectImage {
  @State
  imgList: string[] = [
    "/assets/1.webp",
    "/assets/2.webp",
    "/assets/3.webp",
    "/assets/4.webp",
    "/assets/5.webp",
    "/assets/6.webp",
    "/assets/7.webp",
    "/assets/8.webp",
    "/assets/9.webp",
    "/assets/10.webp",

  ]
  @Consume
  showDialog: boolean
  // 保存的是所选择的图片
  @Link
  selectedList: string[]
  @State
  selectList: string[] = []

  build() {
    Column() {
      Row() {
        Text("取消")
          .onClick(() => {
            this.showDialog = false;
          })

        Text("已选中" + this.selectList.length + "/" + this.imgList.length + "张")

        Text("确定")
          .onClick(() => {

            // 将选中的图片数据返回给父组件进行渲染
            this.selectedList = this.selectList
            // 关闭弹窗
            this.showDialog = false;
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
                .borderRadius(4)
                .onClick(() => {
                  if (this.selectList.includes(item)) {
                    this.selectList = this.selectList.filter(img => img != item)
                  } else {
                    this.selectList.unshift(item)
                  }
                })

              if (this.selectList.includes(item)) {
                Image($r("app.media.ic_select"))
                  .width(24)
                  .aspectRatio(1)
                  .margin(6)
              }

            }

          }
        })


      }
      .width("100%")
      .layoutWeight(1)
      .columnsTemplate("1fr 1fr 1fr")
      .columnsGap(10)
      .rowsGap(10)
      .padding(20)
    }
  }
}

export default SelectImage