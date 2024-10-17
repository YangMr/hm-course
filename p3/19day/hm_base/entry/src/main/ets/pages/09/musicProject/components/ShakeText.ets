
@Component
struct ShakeText {
  @Consume
  @Watch("updateIsPlay")
  isPlay: boolean
  // @Watch('updateIsplay') : @Watch('函数名') -> 一旦观察的数据发生变化了，就会执行这个函数！！！

  @State
  shakenX: number = 0
  @State
  shakenY: number = 0
  timer: number = -1

  updateIsPlay() {
    if (this.isPlay) {
      this.timer = setInterval(() => {
        this.shakenX = 2 - Math.random() * 8
        this.shakenY = 2 - Math.random() * 8
      }, 30)
    } else {
      clearInterval(this.timer)
    }
  }

  // test() {
  //   promptAction.showToast({
  //     message: "123"
  //   })
  // }

  // 一进入页面就会触发当前的方法
  // -2 2
  // aboutToAppear(): void {
  //   if (this.isPlay) {
  //     setInterval(() => {
  //       this.shakenX = 2 - Math.random() * 8
  //       this.shakenY = 2 - Math.random() * 8
  //     }, 30)
  //   }
  // }

  build() {
    Column() {
      Stack() {
        Text("抖音")
          .fontSize(60)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Black)
          .zIndex(2)


        Text("抖音")
          .fontSize(60)
          .fontWeight(FontWeight.Bold)
          .fontColor("#2f93ac")
          .translate({
            x: this.shakenY,
            y: this.shakenX
          })

        Text("抖音")
          .fontSize(60)
          .fontWeight(FontWeight.Bold)
          .fontColor("#a118ba")
          .translate({
            x: this.shakenY + 2,
            y: this.shakenX + 2
          })
      }

    }

  }
}

export default ShakeText