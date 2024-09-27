@Entry
@Component
struct SearchHistoryPage {
  @State
  historyList: string[] = [
    "夏日美照",
    "夏日美照",
    "夏日美照",
    "夏日美照",
    "夏日美照",
    "夏日美照",
    "夏日美照",
    "夏日美照",
    "夏日美照",
    "夏日美照"
  ]
  @State
  keywords: string = ""

  build() {
    Column() {
      Row() {
        TextInput({ placeholder: "请输入搜索关键词", text: $$this.keywords })
          .backgroundColor(Color.White)
          .layoutWeight(1)
          .onSubmit(() => {
            this.historyList.unshift(this.keywords)
            this.keywords = ""
            // promptAction.showToast({
            //   message: JSON.stringify(this.historyList)
            // })
          })


        Text("取消")
          .margin({
            left: 10
          })
          .fontColor("#bbb")
      }
      .width("100%")

      Row() {
        Text("历史搜索")
          .fontSize(18)
          .fontWeight(FontWeight.Bold)

        Image($r("sys.media.ohos_ic_public_device_watch"))
          .width(16)
          .aspectRatio(1)
          .onClick(() => {
            this.historyList = []
          })
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        top: 20,
        bottom: 20
      })

      Flex({ wrap: FlexWrap.Wrap }) {
        ForEach(this.historyList, (item: string) => {
          Row() {
            Text(item)
              .fontColor("#ffa872ee")
          }
          .padding({
            left: 10,
            right: 10,
            bottom: 8,
            top: 8
          })
          .backgroundColor("#ffdae9f6")
          .borderRadius("100%")
          .margin({
            right: 10,
            bottom: 10
          })
        })

      }
    }
    .height('100%')
    .width('100%')
    .padding(10)
    .backgroundColor("#eee")
  }
}