// @Entry
// @Component
// struct PropCasePage {
//   // @State :数据更新，UI更新 (自身，第一层)
//   // 父组件给子组件传值，只会生效一次！！！
//   // 当父组件修改数据时, 子组件不会发生变化
//
//
//   @State
//   money: number = 99
//
//   build() {
//     Column({ space: 30 }) {
//       Text("parent----" + this.money)
//       Button('存100')
//         .width("100%")
//         .onClick(() => {
//           this.money += 1
//         })
//
//       // 调用子组件
//       PropChild({
//         money: this.money
//       })
//     }
//     .height('100%')
//     .width('100%')
//     .backgroundColor("#fff")
//   }
// }
//
//
// @Component
// struct PropChild {
//   @State
//   money: number = 0
//
//   build() {
//     Text("child---" + this.money)
//   }
// }