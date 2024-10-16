// 1. 准备一个对象
import { router } from '@kit.ArkUI'

// import { localStorage1 } from './utils/common'


// 3. 传递给要共享的页面
const localStorageEntry1 = LocalStorage.getShared()

@Entry(localStorageEntry1)
@Component
struct LocalStorage01 {
  @LocalStorageLink("message")
  message: string = ""
  @LocalStorageLink("name")
  name: string = ""

  build() {
    Column() {
      Text(this.message)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

      Text(this.name)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

      Button("修改message")
        .onClick(() => {
          this.message = "老杨"
        })

      LocalStorageChild()

      Button("跳转到02")
        .onClick(() => {
          router.pushUrl({
            url: "pages/12/LocalStorage2"
          })
        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}

@Component
struct LocalStorageChild {
  @LocalStorageProp("message")
  message: string = ""

  build() {
    Column() {
      Text(this.message)
        .onClick(() => {
          this.message = "老王"
        })
    }

  }
}