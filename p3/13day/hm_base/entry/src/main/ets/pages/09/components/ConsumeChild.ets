@Component
struct ConsumeChile {
  // @Consume用于接收数据 (对标的是Link:可以父变子变，也可以子变父变)
  @Consume
  money: number

  // 当子组件数据发生变化时,父组件能够同步更新
  // 父 @Provide  不用在组件的参数里面进行传递
  // 子  @Consume  不用设置默认值
  build() {
    Column() {
      Text("child----" + this.money)

      Button("改变子组件的数据")
        .onClick(() => {
          this.money++
        })
    }
  }
}

export default ConsumeChile