import { router } from '@kit.ArkUI';

@Entry
@Component
struct DemoPage2 {
  @State message: string = 'Hello World';

  build() {
    Row(){
      Text("跳转1")
        .onClick(() => {
          router.pushUrl({
            url : "pages/05/DemoPage1"
          })
        })
    }
  }
}