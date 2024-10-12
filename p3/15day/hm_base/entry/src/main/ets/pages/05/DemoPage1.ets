import { router } from '@kit.ArkUI';

@Entry
@Component
struct DemoPage1 {
  @State message: string = 'Hello World';

  build() {
    Row(){
      Text("跳转2")
        .onClick(() => {
          router.pushUrl({
            url : "pages/05/DemoPage2"
          })
        })
    }
  }
}