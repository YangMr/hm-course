import { router } from '@kit.ArkUI';


@Entry
@Component
struct RouterMetaCasePage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Button("跳转到hsp的页面")
        .onClick(() => {
          router.pushUrl({
            url: "@bundle:com.example.hm_base/features/ets/pages/Index"
          })
        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}