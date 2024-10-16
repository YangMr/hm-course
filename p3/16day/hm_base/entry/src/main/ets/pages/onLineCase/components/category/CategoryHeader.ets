@Component
struct CategoryHeader {
  build() {
    Row() {
      Stack({ alignContent: Alignment.End }) {
        Text("分类")
          .fontColor(Color.White)
          .textAlign(TextAlign.Center)
          .height(44)
          .fontWeight(FontWeight.Bold)
          .width("100%")


        Image($r("sys.media.ohos_ic_public_search_filled"))
          .width(20)
          .aspectRatio(1)
          .fillColor(Color.White)
          .margin({
            right: 5
          })
      }

    }
    .width("100%")
    .height(44)
    .backgroundColor("rgb(52, 93, 194)")
  }
}

export default CategoryHeader