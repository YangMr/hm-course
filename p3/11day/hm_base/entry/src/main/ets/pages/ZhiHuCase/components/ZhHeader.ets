@Component
struct ZhHeader {
  build() {
    Row() {
      Image($r("sys.media.ohos_ic_compnent_titlebar_back"))
        .width(30)
        .aspectRatio(1)
        .backgroundColor("#ececec")
        .padding(6)
        .borderRadius(15)

      Text("评论回复")
        .layoutWeight(1)
        .textAlign(TextAlign.Center)

      Row() {
      }
      .width(30)
      .aspectRatio(1)
    }
    .width("100%")
    .padding(12)
  }
}

export default ZhHeader