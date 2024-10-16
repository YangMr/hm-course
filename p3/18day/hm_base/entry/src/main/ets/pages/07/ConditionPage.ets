@Entry
@Component
struct ConditionPage {
  @State
  isShow: boolean = false

  build() {
    Column() {
      Toggle({
        type: ToggleType.Switch,
        isOn: $$this.isShow
      })

      // 关闭的时候展示麦嘟

      // 打开的时候展示吴彦祖

      // 核心: （创建销毁元素）
      // if (this.isShow) {
      //   Image("https://img1.baidu.com/it/u=542423895,2761526726&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=750")
      //     .width(60)
      //     .height(60)
      // } else {
      //   Image("https://img2.baidu.com/it/u=2308330998,1953770258&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=933")
      //     .width(60)
      //     .height(60)
      // }

      // 通过宽高控制
      // Image("https://img2.baidu.com/it/u=2308330998,1953770258&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=933")
      //   .width(this.isShow ? 0 : 60)
      //   .height(this.isShow ? 0 : 60)
      //
      // Image("https://img1.baidu.com/it/u=542423895,2761526726&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=750")
      //   .width(this.isShow ? 60 : 0)
      //   .height(this.isShow ? 60 : 0)

      // 通过透明度控制
      // Image("https://img2.baidu.com/it/u=2308330998,1953770258&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=933")
      //   .width(60)
      //   .height(60)
      //   .opacity(this.isShow ? 0 : 1)
      //
      // Image("https://img1.baidu.com/it/u=542423895,2761526726&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=750")
      //   .width(60)
      //   .height(60)
      //   .opacity(this.isShow ? 1 : 0)

      // 通过位置控制
      // Image("https://img2.baidu.com/it/u=2308330998,1953770258&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=933")
      //   .width(60)
      //   .height(60)
      //   .offset({
      //     top: this.isShow ? -200 : 0
      //   })
      //
      // Image("https://img1.baidu.com/it/u=542423895,2761526726&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=750")
      //   .width(60)
      //   .height(60)
      //   .offset({
      //     top: this.isShow ? 0 : -200
      //   })


      // visibility 控制元素的显示与隐藏 , 不会销毁或创建元素
      Image("https://img2.baidu.com/it/u=2308330998,1953770258&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=933")
        .width(60)
        .height(60)
        .visibility(this.isShow ? Visibility.Hidden : Visibility.Visible)


      Image("https://img1.baidu.com/it/u=542423895,2761526726&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=750")
        .width(60)
        .height(60)
        .visibility(this.isShow ? Visibility.Visible : Visibility.Hidden)

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}