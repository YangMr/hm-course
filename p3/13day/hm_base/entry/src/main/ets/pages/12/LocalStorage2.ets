import { router } from '@kit.ArkUI'

const localStorageEntry2 = LocalStorage.getShared()

@Entry(localStorageEntry2)
@Component
struct LocalStorage2 {
  @LocalStorageLink("message")
  message: string = ""
  @LocalStorageLink("name")
  name: string = ""

  build() {
    Column() {
      Text(this.message)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

      Text(this.name)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

      Button("修改name")
        .onClick(() => {
          this.name = "rose"
        })

      Button("返回01")
        .onClick(() => {
          router.pushUrl({
            url: "pages/12/LocalStorage01"
          })
        })
    }
    .height('100%')
    .width('100%')
  }
}