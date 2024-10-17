@Entry
@Component
struct VideoCasePage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Tabs() {
        TabContent() {
          // 展示在线视频
          Video({
            src: "https://video19.ifeng.com/video09/2024/05/23/p7199260608686989961-0-122707.mp4"
          })
        }
        .tabBar("在线视频")


        TabContent() {
          // 展示本地视频
          Video({
            src: $rawfile("local.mp4")
          })

        }
        .tabBar("本地视频")
      }
    }
    .height('100%')
    .width('100%')
  }
}