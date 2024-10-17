import { promptAction } from '@kit.ArkUI';
import { geoLocationManager } from '@kit.LocationKit';

@Entry
@Component
struct PermissionPage {
  @State
  result: geoLocationManager.Location = {} as geoLocationManager.Location

  build() {
    Column() {
      Image("https://img1.baidu.com/it/u=2965788393,3786196451&fm=253&fmt=auto&app=138&f=JPEG?w=389&h=275")
        .width(100)
        .aspectRatio(1)

      Button("获取当前经纬度:")
        .onClick(async () => {
          // TODO : 点击按钮获取不到用户的经纬度
          this.result = await geoLocationManager.getCurrentLocation()

          promptAction.showToast({
            message: JSON.stringify(this.result)
          })
        })

      Text('经度：' + this.result.latitude)
      Text('纬度：' + this.result.longitude)
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}