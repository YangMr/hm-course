import { abilityAccessCtrl, AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { KeyboardAvoidMode, window } from '@kit.ArkUI';

export default class EntryAbility extends UIAbility {
  async onCreate(want: Want, launchParam: AbilityConstant.LaunchParam) {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');

    // 1. 先获取用户程序访问控制的实例对象
    const manager = abilityAccessCtrl.createAtManager()

    // 2. 拉起用户授权
    await manager.requestPermissionsFromUser(this.context, [
    // 'ohos.permission.APPROXIMATELY_LOCATION'
      "ohos.permission.APPROXIMATELY_LOCATION"
    ])
  }


  onDestroy(): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');


    // 所有的页面, 都没有安全区域了, 这个是设置给所有页面
    // windowStage.getMainWindow().then(window => {
    //   window.setWindowLayoutFullScreen(true)
    // })

    // const localData: Record<string, string> = {
    //   "message": "yangMr",
    //   "name": "yangLing"
    // }
    //
    // const localStorageEntry = new LocalStorage(localData)
    //
    // // 获取本地(磁盘上存储的token)
    // const token = PreferencesClass.getToken(this.context, PreferencesClass.defaultStore, "token")
    // let pageUrl = ""
    // if (token) {
    //   // 登录过了 PreferenceResultCase
    //   pageUrl = "pages/12/PreferenceResultCase"
    // } else {
    //   // 没登录过 PreferenceCase
    //   pageUrl = "pages/12/PreferenceCase"
    // }
    //
    // windowStage.loadContent(pageUrl, localStorageEntry, (err) => {
    //   if (err.code) {
    //     hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
    //     return;
    //   }
    //   hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    // });

    windowStage.loadContent("pages/17/CanvasCasePage2", (err) => {
      // 键盘避让
      windowStage.getMainWindowSync().getUIContext()
        .setKeyboardAvoidMode(KeyboardAvoidMode.RESIZE)

      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
