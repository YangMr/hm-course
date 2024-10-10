import { promptAction } from '@kit.ArkUI'

interface IUserType {
  name: string
  pass: string
}

@Entry
@Component
struct MvvmPage {
  @State
  user: IUserType = {
    name: "",
    pass: ""
  }

  build() {
    Column() {
      // 什么是数据双向绑定?
      //  数据发生变化, 视图也发生变化  , 视图发生变化,  数据也发生变化
      // 语法: 数据双向绑定解决 $$ 语法糖
      // 注意：不能拿对象的属性双向数据绑定
      TextInput({ placeholder: "请输入", text: $$this.user.name })
        .onChange((value: string) => {
          // this.username = value

          promptAction.showToast({
            message: this.user.name
          })
        })

      TextInput({ placeholder: "请输入", text: $$this.user.pass })
        .onChange((value: string) => {
          // this.username = value

          promptAction.showToast({
            message: this.user.pass
          })
        })

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}