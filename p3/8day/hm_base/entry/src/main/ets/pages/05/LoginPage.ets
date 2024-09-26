import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct LoginPage {
  // 初始化两个变量,用来保存输入框输入的用户名与密码
  // @State作用：可以让数据发生变化时UI自动更新(只有自身或者第一层发生变化)
  @State
  username: string = "admin"
  @State
  password: string = "123456"

  // 登录方法
  handleLogin() {

    if (this.username === "admin" && this.password === "123456") {
      AlertDialog.show({
        message: "登录成功"
      })
      return
    }
    // else {
    //   promptAction.showToast({ message: "用户名或者密码错误" })
    // }
    promptAction.showToast({ message: "用户名或者密码错误" })
  }

  // 获取按钮状态的方法
  getButtonStatus() {
    return !!this.username && !!this.password
  }

  build() {
    Row() {
      Column({ space: 20 }) {
        TextInput({ placeholder: "请输入用户名", text: this.username })
          .height(40)
          .onChange((value) => {
            this.username = value
            promptAction.showToast({
              message: this.username
            })
          })

        TextInput({ placeholder: "请输入密码", text: this.password })
          .type(InputType.Password)
          .height(40)
          .onChange((value) => {
            this.password = value
            promptAction.showToast({
              message: this.password
            })
          })

        Button("登录")
          .width("100%")
          .onClick(() => {
            this.handleLogin()
          })
          .enabled(this.getButtonStatus())


      }
      .padding(20)
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")

  }
}