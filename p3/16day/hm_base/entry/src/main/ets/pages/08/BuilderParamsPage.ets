// @Entry
// @Component
// struct BuilderParamsPage {
//   @State message: string = 'Hello World';
//
//   //构建函数 - 参数传递(单向)
//   @Builder
//   layoutFunc1(optionText: string) {
//     Row() {
//       Text(optionText)
//         .MyTextStyle()
//     }
//     .RowStyles()
//   }
//
//   build() {
//     Column({ space: 10 }) {
//       this.layoutFunc1("A.选项")
//
//       this.layoutFunc1("B.选项")
//
//       this.layoutFunc1("C.选项")
//
//       this.layoutFunc1("D.选项")
//
//
//     }
//     .height('100%')
//     .width('100%')
//     .backgroundColor("#fff")
//     .padding(20)
//   }
// }
//
// @Extend(Text)
// function MyTextStyle() {
//   .fontColor("#fff")
// }
//
// @Styles
// function RowStyles() {
//   .width("100%")
//   .padding(20)
//   .backgroundColor(Color.Pink)
//   .borderRadius(5)
// }