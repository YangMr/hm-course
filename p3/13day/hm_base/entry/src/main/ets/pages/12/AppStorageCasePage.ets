import { common, Want } from '@kit.AbilityKit';

// 数据持久化
PersistentStorage.persistProp("token", 666666)

@Entry
@Component
struct AppStorageCasePage {
  @State
  loginToken: number = 0

  // 需求: 点击登录按钮, 拉起新的UIAbility

  onPageShow(): void {
    this.loginToken = AppStorage.get("token") as number
  }

  build() {
    Column({ space: 29 }) {
      Text(this.loginToken + "")
      TextInput({ placeholder: "请输入用户名" })
      TextInput({ placeholder: "请输入密码" })
      Button("登录")
        .width("100%")
        .onClick(() => {
          // 存储一个token
          AppStorage.setOrCreate("token", 666666)

          this.loginToken = 666666


          // 1. 配置UIAbility
          let want: Want = {
            // 设备的id (默认为空就可以)  deviceId为空表示本设备
            "deviceId": "",
            // 包的名称
            "bundleName": "com.example.hm_base",
            // ability名称
            "abilityName": "EntryAbility1",
          };
          // 坑点：大括号后面跟小括号数据语法错误，需要添加;
          // 2. 拉起UIAbility
          (getContext() as common.UIAbilityContext).startAbility(want)
        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
    .padding(20)
  }
}