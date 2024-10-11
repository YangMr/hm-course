@Entry
@Component
struct CasePage {
  @State message: string = 'Hello World';

  // 插槽: 创建组件的时候, 不太确定里面最终会展示的内容时候, 这个时候就可以使用buildparams(插件)

  @Builder
  LayoutBox() {
    Text("hello")
  }

  build() {
    Column() {
      Column() {
        Text("123")
      }

      // 参数的写法
      ChildComponent({
        content: () => {
          this.LayoutBox()
        }
      })
      // 尾随闭包的写法, 要求, 组件内只能有一个buildparams
      ChildComponent() {
        this.LayoutBox()
      }
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}

@Component
struct ChildComponent {
  @BuilderParam
  content: () => void = this.defaultContent

  @Builder
  defaultContent() {
  }

  build() {

    this.content()
  }
}