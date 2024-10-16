@Entry
@Component
struct RequireCasePage {
  @State message: string = 'Hello World';

  @Builder
  defaultButton() {
    Column() {
      Button("我是按钮")
    }
  }

  build() {
    Column() {
      RequireChild({
        message: this.message,
        defaultContent: () => {
          this.defaultButton()
        }
      })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}


// 需求: 只要使用RequireChild组件, 就必须要要传递message
@Component
struct RequireChild {
  @Prop
  @Require
  message: string
  @BuilderParam
  @Require
  defaultContent: () => void = this.initLayout

  @Builder
  initLayout() {
  }

  build() {
    Column() {
      Text(this.message)

      this.defaultContent()
    }

  }
}