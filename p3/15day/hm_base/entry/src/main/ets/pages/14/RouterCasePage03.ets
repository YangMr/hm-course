import { router } from '@kit.ArkUI';

@Entry
@Component
struct RouterCasePage03 {
  @State message: string = 'Hello World';

  build() {
    Column() {

      Row() {
        Image($r("sys.media.ohos_ic_back"))
          .width(24)
          .aspectRatio(1)
      }
      .width(60)
      .aspectRatio(1)
      .justifyContent(FlexAlign.Center)
      .borderRadius(30)
      .backgroundColor(Color.Pink)
      .onClick(() => {
        router.back()
      })

    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Green)
  }
}