@Entry
@Component
struct PropCasePage3 {
  // @State :数据更新，UI更新 (自身，第一层)
  // 父组件给子组件传值，只会生效一次！！！
  // 当父组件修改数据时, 子组件不会发生变化
  // 当父组件数据修改了 , 子组件能够进行数据更新

  @State
  money: number = 99

  build() {
    Column({ space: 30 }) {
      Text("parent----" + this.money)
      Button('存100')
        .width("100%")
        .onClick(() => {
          this.money += 1
        })

      // 调用子组件
      PropChild1({
        money: this.money
      })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}


@Component
struct PropChild1 {
  // 子组件：
  // 如果希望父组件更改状态，子组件同步更新：@Prop
  // @Prop接受的数据只适用于单向：父改变->子跟着改变    子改变只能改自己，父组件不会同步！！！
  // @State :数据更新，UI更新 (自身，第一层), 只会生效一次！！！,当父组件修改数据时, 子组件不会发生变化

  @Prop
  money: number = 0

  build() {
    Column() {
      Text("child---" + this.money)

      Button("消费100")
        .width("100%")
        .onClick(() => {
          this.money += 1
        })
    }

  }
}