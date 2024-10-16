import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct EnvironmentPage {
  // 实际应用缺陷：查询可用，不可写入
  // 设备状态：无法在应用中修改的！

  @State
  colorModel: ColorMode = ColorMode.LIGHT // 0 // 1

  onPageShow() {
    // 获取设备的状态
    Environment.envProp("colorModel", ColorMode.LIGHT)

    this.colorModel = AppStorage.get("colorModel") as ColorMode
    // this.colorModel = ColorMode.DARK

    promptAction.showDialog({
      message: this.colorModel.toString()
    })
  }

  build() {
    Column() {
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}