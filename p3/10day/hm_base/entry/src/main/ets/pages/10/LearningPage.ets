import { promptAction } from '@kit.ArkUI'

// 父子

// @state @prop @link @provide @consume

// 父组件
@Entry
@Component
struct LearningPage {
  // @State具备数据变化UI更新的能力
  // 组件传值只会生效一次
  @Provide("ucount")
  count: number = 5

  build() {
    Column() {
      Text("我是父组件-------")
      Text(this.count.toString())
      Button("修改父组件的数据")
        .onClick(() => {
          this.count++

          promptAction.showToast({
            message: this.count.toString()
          })
        })
      ChildItem()
      // 问题 1. 请问父组件的count会发生变化吗
      // 问题 2. 请问子组件的count会发生变化吗
      // 问题 3. @state @prop


    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}


// 子组件
@Component
struct ChildItem {
  @State
  count: number = 0

  build() {
    Column() {
      Text("子组件:-------------")
      Column() {
        Row({ space: 20 }) {
          Text("西瓜")
          Text("¥1.39")
          Image($r("sys.media.ohos_ic_public_remove_filled"))
            .width(24)
            .aspectRatio(1)
          Text(this.count.toString())
          Image($r("sys.media.ohos_ic_public_add_norm_filled"))
            .width(24)
            .aspectRatio(1)
            .onClick(() => {
              this.count++
            })

          ChildChildItem()

        }

        // 问题1. 子组件的数据会不会发生变化
        // 问题2. 父组件的数据会不会发生变化

        // 问题3. 父组件的数据,发生变化的时候, 子组件的数据也能够变化, 请问怎么实现?
        //  为什么state 不可以, prop可以
        // 可以, prop双向
        // 单向 与 双向的区别

        // 如何实现子组件数据发生变化, 父组件也能够更新

        // prop link 区别是什么
      }
    }
  }
}

// 孙子组件
@Component
struct ChildChildItem {
  @Consume
  ucount: number
  @State
  count: number = 10

  build() {
    Column() {
      Column() {
        Text("我是孙子组件------------")
        Text(this.ucount.toString())

        Button("修改孙子组件的数据")
          .onClick(() => {
            this.ucount++
          })
      }
    }

  }
}