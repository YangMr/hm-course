// import ConsumeChile from './components/ConsumeChild'
//
// @Entry
// @Component
// struct ProvideCasePage {
//   @Provide
//   money: number = 99
//
//   build() {
//     Column({ space: 20 }) {
//       Text("Parent---" + this.money)
//
//       Button("改变父组件的数据")
//         .onClick(() => {
//           this.money++
//         })
//
//       ConsumeChile()
//     }
//     .height('100%')
//     .width('100%')
//     .backgroundColor("#fff")
//   }
// }