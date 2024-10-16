@Component
struct SearchBar {
  build() {
    Row() {

      Row() {
        Image($r("sys.media.ohos_ic_public_search_filled"))
          .width(24)
          .aspectRatio(1)
          .fillColor("#ccc")

        Text("搜索你想要的内容")
          .margin({
            left: 5
          })
          .fontColor("#ccc")
      }
      .width("100%")
      .height("100%")
      .backgroundColor("#eee")
      .borderRadius(22)
      .justifyContent(FlexAlign.Center)

    }
    .width("100%")
    .height(44)
    .backgroundColor("rgb(52, 93, 194)")
    .padding({
      top: 7,
      bottom: 7,
      left: 5,
      right: 5
    })
  }
}

export default SearchBar