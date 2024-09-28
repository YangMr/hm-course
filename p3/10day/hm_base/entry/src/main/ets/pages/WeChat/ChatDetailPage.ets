import { router } from '@kit.ArkUI';

interface UserInfoType {
  nickName: string
}

@Entry
@Component
struct ChatDetailPage {
  @State
  talker: UserInfoType = {} as UserInfoType

  // 页面加载的方法
  aboutToAppear(): void {
    this.talker = router.getParams() as UserInfoType
  }

  build() {
    Column() {
      Row() {
        Image($r("sys.media.ohos_ic_compnent_titlebar_back"))
          .width(20)
          .aspectRatio(1)
          .onClick(() => {
            router.back()
          })

        Text(this.talker.nickName)
          .layoutWeight(1)
          .textAlign(TextAlign.Center)

        Row() {

        }.width(20)
        .aspectRatio(1)
      }
      .width("100%")
      .height(60)
      .padding({
        left: 10,
        right: 10
      })
      .backgroundColor(Color.White)

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}