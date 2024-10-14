import { promptAction, router } from '@kit.ArkUI';

export class paramsType {
  uname: paramsNameType = {} as paramsNameType
}

export class paramsNameType {
  zh: string = ""
  en: string = ""
}

// 单例模式
// 路由默认属于标准模式
// push就是一直追加，不管你有没有加载这个页面
// 单例模式
// 比如你加载过A 在栈底放着 再去追加时 会把页面从栈底拿出 放到栈顶
// 单例模式不会造成线程的浪费
// 假设 A-B-C 现在c现在要回到b，此时用push会变成B- A-B-C-A, 用replace会变成A-B-A, 可以给pushUrl加上单例模式, 变成 B-C-A, 或者直接用replace变成 B-A, 或者跳转后clear变成 A

@Entry
@Component
struct RouterCasePage01 {
  @State message: string = 'Hello World';

  aboutToAppear(): void {
    AlertDialog.show({
      message: JSON.stringify(router.getState())
    })
  }

  build() {
    Column({ space: 20 }) {
      Text("我是01页面")
      // 1.压栈跳转，最多32个记录
      Button("我是01页面的按钮, 我现在要02页面")
        .onClick(() => {
          router.pushUrl({
            url: "pages/14/RouterCasePage02"
          }, router.RouterMode.Single)
        })

      Button("我是01页面的按钮, 我现在要跳转到03页面")
        .onClick(() => {
          // router.replaceUrl({
          //   url: "pages/14/RouterCasePage03"
          // })

          router.pushUrl({
            url: "pages/14/RouterCasePage03"
          })
        })

      Button("清空跳转记录")
        .onClick(() => {
          router.clear()
        })

      Button("获取当前所有的路由长度")
        .onClick(() => {
          promptAction.showDialog({
            // 获取当前路由跳转的历史记录
            message: router.getLength()
          })
        })

      Button("传递路由参数")
        .onClick(() => {
          const params: paramsType = {
            uname: {
              zh: "老张",
              en: "mrZhang"
            }
          }
          router.pushUrl({
            url: "pages/14/RouterCasePage04",
            params
          })
        })

      // Button("返回阻断")
      //   .onClick(() => {
      //
      //   })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}