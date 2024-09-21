import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct StatePage {

  @State
  // 如何让数据发生变化时更新UI
  // @State作用：可以让数据发生变化时UI自动更新(只有自身或者第一层发生变化)
  count : number = 99

  build() {
    Column(){
      Row(){
        Button("-")
          .onClick(() => {
            this.count -= 1
          })
        // 0 字符串
        Text(this.count.toString())
          .margin({
            left : 10,
            right : 10
          })
        Button("+")
          .onClick(() => {
            // this.count = this.count + 1
            // 简写
            this.count += 1

            // promptAction.showDialog({
            //   message :  this.count + ""
            // })
          })
      }
      .height("100%")
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#eee")
  }
}