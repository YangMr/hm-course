// @Entry
// @Component
// struct BuliderParamsCasePage {
//   @State message: string = 'Hello World';
//
//   @Builder
//   left() {
//     Text("返回")
//   }
//
//   @Builder
//   left1() {
//     Image($r("sys.media.ohos_ic_compnent_titlebar_back"))
//       .width(20)
//       .aspectRatio(1)
//   }
//
//   @Builder
//   right() {
//     Text("确定")
//   }
//
//   @Builder
//   right1() {
//     Image($r("sys.media.ohos_ic_public_video"))
//       .width(20)
//       .aspectRatio(1)
//   }
//
//   build() {
//     Column({ space: 20 }) {
//       BuliderParamsChild({
//         // rightContent: () => {
//         //   this.right()
//         // }
//         leftValue: () => {
//           this.left()
//         },
//         rightValue: () => {
//           this.right()
//         }
//       })
//
//       BuliderParamsChild({
//         leftContent: () => {
//           this.left1()
//         },
//         rightContent: () => {
//           this.right1()
//         },
//         leftValue: () => {
//           this.left()
//         },
//         rightValue: () => {
//           this.right()
//         }
//       })
//     }
//     .height('100%')
//     .width('100%')
//     .backgroundColor("#fff")
//   }
// }
//
// @Component
// struct BuliderParamsChild {
//   @BuilderParam
//   // leftContent: 第一种父组件如果传递内容了,则展示的父组件传递的内容
//   // 第二种情况是, 如果父组件没有传递, 子组件可以设置默认值
//   // 插槽
//   leftContent: () => void = this.defaultLeft
//   @BuilderParam
//   rightContent: () => void = this.defaultRight
//   @BuilderParam
//
//   @Require
//   leftValue: () => void
//   @BuilderParam
//   @Require
//   rightValue: () => void
//
//   @Builder
//   defaultLeft() {
//     Text("返回")
//   }
//
//   @Builder
//   defaultRight() {
//     Text("确定")
//   }
//
//   build() {
//     Row() {
//       // 展示leftContent()
//       this.leftContent()
//
//       this.leftValue()
//
//       Text("首页")
//         .layoutWeight(1)
//         .textAlign(TextAlign.Center)
//
//       // 展示rightContent()
//       this.rightContent()
//       this.rightValue()
//
//     }
//     .width("100%")
//     .padding(20)
//     .backgroundColor(Color.Pink)
//   }
// }