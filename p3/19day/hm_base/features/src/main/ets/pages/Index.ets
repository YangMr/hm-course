import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = '6666';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button("哈哈哈")
          .onClick(() => {
            router.pushUrl({
              url: "@bundle:com.example.hm_base/entry/ets/pages/15/RouterMetaCasePage"
            })
          })
      }
      .width('100%')

    }
    .height('100%')
  }
}