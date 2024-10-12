// @Entry
// @Component
// struct BuliderPage {
//   @State message: string = 'Hello World';
//
//   // 全局自定义构建函数
//
//   // 局部自定义构建函数
//   // @Builder
//   // LayoutFunc() {
//   //   Row() {
//   //     Text("A.选项")
//   //       .MyTextStyle()
//   //   }
//   //   .RowStyles()
//   // }
//
//   build() {
//     Column({ space: 10 }) {
//       // this.LayoutFunc()
//       //
//       // this.LayoutFunc()
//       //
//       // this.LayoutFunc()
//       //
//       // this.LayoutFunc()
//       //
//       // this.LayoutFunc()
//       optionChild()
//     }
//     .height('100%')
//     .width('100%')
//     .backgroundColor("#fff")
//     .padding(20)
//   }
// }
//
// //
// //
// // @Extend(Text)
// // function MyTextStyle() {
// //   .fontColor("#fff")
// // }
// //
// // @Styles
// // function RowStyles() {
// //   .width("100%")
// //   .padding(20)
// //   .backgroundColor(Color.Pink)
// //   .borderRadius(5)
// // }
// //
// // @Builder
// // function LayoutFunc() {
// //   Row() {
// //     Text("A.选项")
// //       .MyTextStyle()
// //   }
// //   .RowStyles()
// // }
//
// // 自定义组件
// @Component
// struct optionChild {
//   build() {
//     Column({ space: 10 }) {
//       ForEach([1, 2, 3, 4, 5, 6], (item: number) => {
//         LayoutFunc()
//       })
//
//       //
//       // LayoutFunc()
//       //
//       // LayoutFunc()
//       //
//       // LayoutFunc()
//       //
//       // LayoutFunc()
//       //
//       // LayoutFunc()
//     }
//   }
// }