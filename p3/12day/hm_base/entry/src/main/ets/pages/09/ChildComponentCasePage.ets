// @Entry
// @Component
// struct ChildComponentCasePage {
//   @State
//   money: number = 99
//
//   // 总结： 爷爷
//   // Prop和Link可以进行嵌套传递！！！
//   // Prop是会进行深拷贝的，Link没有初始化不会进行深拷贝，只是引用！！！
//   build() {
//     Column() {
//       Text("parent---" + this.money)
//
//       Button("改变父组件的数据")
//         .onClick(() => {
//           this.money++
//         })
//
//       ChildComponent1({
//         money: this.money
//       })
//     }
//     .height('100%')
//     .width('100%')
//     .backgroundColor("#eee")
//   }
// }
//
// // 子组件  爸爸
// @Component
// struct ChildComponent1 {
//   // Link接收的值是可以传递给子组件的！！！, 当子组件的数据改变父祖件也会同步改变
//   // prop接收的值是可以传递给子组件的！！！, 当子组件的数据改变父祖件不会同步改变
//
//   @Prop
//   money: number
//
//   build() {
//     Column() {
//
//       Text("ChildComponent1----" + this.money)
//
//       Button("改变子组件的数据")
//         .onClick(() => {
//           this.money++
//         })
//
//       ChildComponent2({
//         money: this.money
//       })
//     }
//   }
// }
//
// // 孙子组件
// @Component
// struct ChildComponent2 {
//   @Prop
//   money: number
//
//   build() {
//     Column() {
//
//
//       Text("ChildComponent2----" + this.money)
//       Button("改变孙子组件的数据")
//         .onClick(() => {
//           this.money++
//         })
//     }
//   }
// }
