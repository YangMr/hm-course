import { router } from '@kit.ArkUI';
import { paramsType } from './RouterCasePage01';

@Entry
@Component
struct RouterCasePage04 {
  @State
  zh: string = ""

  // 页面一开始加载的时候就会触发
  aboutToAppear(): void {
    // 获取01页面传递过来的路由参数
    const params = router.getParams() as paramsType;

    this.zh = params.uname.zh

    AlertDialog.show({
      message: JSON.stringify(params)
    })
  }

  build() {
    Column() {
      Text("我是04页面")

      Text(this.zh)

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}