import { router } from '@kit.ArkUI';
import { PreferencesClass } from './PreferencesClass';

@Entry
@Component
struct PreferenceCase {
  @State message: string = 'Hello World';

  /**
   * 登录
   *  成功 -  给本地存储的一个token 一段字符串
   *
   * 下一次在打开页面的时候, 判断本地有没有token
   *  如果有token, 则进入PreferenceResultCase页面
   *  如果没有token,  则进入登录(PreferenceCase)页面
   *
   */

  build() {
    Column({ space: 20 }) {
      TextInput({ placeholder: "请输入用户名" })

      TextInput({ placeholder: "请输入密码" })

      Button("登录")
        .width("100%")
        .onClick(() => {
          // 1.存储token, 存储到磁盘上面(持久化数据)
          PreferencesClass.setToken(getContext(), PreferencesClass.defaultStore, "a88888881")

          // 2. 跳转到一个名称叫PreferenceResultCase页面
          router.pushUrl({
            url: "pages/12/PreferenceResultCase"
          })
        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
    .padding(20)
  }
}