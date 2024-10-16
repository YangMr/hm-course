import { PreferencesClass } from './PreferencesClass';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct PreferenceResultCase {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text(this.message)

      Button("退出登录")
        .onClick(() => {
          PreferencesClass.setToken(getContext(), PreferencesClass.defaultStore, "")

          router.back()
        })
    }
    .height('100%')
    .width('100%')
  }
}