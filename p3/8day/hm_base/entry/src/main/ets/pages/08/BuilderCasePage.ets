import { layoutFunction } from './builders/LayoutBuilder'

@Entry
@Component
struct BuilderCasePage {
  // 自定义构建函数 = 1.函数，里面放置的是结构 2.@Builder
  // 能不能传递参数？可以
  // 可不可以导出？可以
  // 只能组件内定义吗？还可以全局,推荐用组件内的


  build() {
    Column({ space: 10 }) {
      layoutFunction("异常时间", "2023-12-12")

      layoutFunction("异常位置", "西安")

      layoutFunction("异常类型", "漏油")

      // Row() {
      //   Text("异常位置")
      //
      //   Text("西安")
      // }
      // .width("100%")
      // .justifyContent(FlexAlign.SpaceBetween)
      // .backgroundColor("#fff")
      // .padding(20)
      // .borderRadius(6)
      //
      // Row() {
      //   Text("异常类型")
      //
      //   Text("漏油")
      // }
      // .width("100%")
      // .justifyContent(FlexAlign.SpaceBetween)
      // .backgroundColor("#fff")
      // .padding(20)
      // .borderRadius(6)
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
    .padding(20)
  }

  layoutFunction(arg0: string, arg1: string) {
    throw new Error('Method not implemented.')
  }
}