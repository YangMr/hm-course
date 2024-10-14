// 1. 声明弹窗
@CustomDialog
struct MyDialog {
  controller?: CustomDialogController
  @Prop
  selectedList: string[]
  @Link
  currentIndex: number

  build() {
    Column() {
      Column() {
        Swiper() {
          ForEach(this.selectedList, (item: string) => {
            Image(item)
              .width("100%")
              .layoutWeight(1)
          })
        }.height("60%")
        .width("100%")
        .index($$this.currentIndex)

        Text(`${this.currentIndex}/${this.selectedList.length.toString()}`)
          .fontColor(Color.White)
          .margin({
            top: 10
          })
      }
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#0e0404")
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.controller?.close()
    })
  }
}

export default MyDialog