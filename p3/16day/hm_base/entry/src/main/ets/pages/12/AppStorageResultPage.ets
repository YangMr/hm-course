@Entry
@Component
struct AppStorageResultPage {
  @StorageLink("token")
  token: number = 0

  build() {
    RelativeContainer() {
      Text(this.token.toString())

        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          this.token = 99999
        })

    }
    .height('100%')
    .width('100%')
  }
}