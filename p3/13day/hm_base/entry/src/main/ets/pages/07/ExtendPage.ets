import { MyButtonType } from './enum/ButtonType';

@Entry
@Component
struct ExtendPage {
  @State message: string = 'Hello World';

  build() {
    Column({ space: 15 }) {
      Button("微信支付")
        .MyButtonExtendFunc(MyButtonType.WeChat)

      Button("支付宝支付")
        .MyButtonExtendFunc(MyButtonType.Alipay)

      Button("微信支付")
        .MyButtonExtendFunc(MyButtonType.WeChat)

      Button("支付宝支付")
        .MyButtonExtendFunc(MyButtonType.Alipay)

      Button("微信支付")
        .MyButtonExtendFunc(MyButtonType.WeChat)

      Button("支付宝支付")
        .MyButtonExtendFunc(MyButtonType.Alipay)
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}

// @Extend 也可以多重复的样式进行抽离, 抽离成函数, 但是他可以传参 @styles所人也可以重复的样式进行抽离, 抽离成函数, 但是不可以传参
@Extend(Button)
function MyButtonExtendFunc(type: MyButtonType) {
  .width("80%")
  .height(50)
  .borderRadius(4)
  .type(ButtonType.Normal)
  .backgroundColor(type === MyButtonType.WeChat ? Color.Green : Color.Blue)
}
