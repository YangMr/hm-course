@Entry
@Component
struct ImagePage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      // assets (放置特定资源：emoji表情)

      // media 图片资源 (推荐)

      // rawfile (可以解析成文件流的)


      // 加载本地的图片
      Image("/assets/logo.png")
        .width(80)
        .height(80)

      // 加载media的图片
      Image($r("app.media.ic_public_voice"))
        .width(80)
        .height(80)

      // 加载rawfile的图片
      Image($rawfile("ic_public_flash_open.svg"))
        .width(80)
        .height(80)

      // 内置资源 --- 鸿蒙自带的
      Image($r('sys.media.ohos_save_button_line'))
        .width(80)
        .height(80)


      // 加载iconfont下载的图标
      Image($r("app.media.ic_video"))
        .width(200)
        .height(80)
        .fillColor("red")

      // 在线图片(预览器无限制)模拟器和真机需要开启网络权限
      Image('https://foruda.gitee.com/avatar/1705232317138324256/1759638_itcast_panpu_1705232317.png')
        .width(100)
    }
    .height('100%')
    .width('100%')
  }
}