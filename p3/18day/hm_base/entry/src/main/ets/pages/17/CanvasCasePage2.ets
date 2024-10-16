@Entry
@Component
struct CanvasCasePage2 {
  // 2.1 创建画布
  myPen: CanvasRenderingContext2D = new CanvasRenderingContext2D()

  build() {
    Column() {
      // 1. 创建画布
      // 2.2 将画笔对象作为构造参数传递给Canvas组件
      Canvas(this.myPen)
        .width("100%")
        .height("50%")
        .backgroundColor(Color.Pink)
        .onTouch((event) => {
          if (event.type === TouchType.Down) {
            this.myPen.beginPath()
            this.myPen.moveTo(event.touches[0].x, event.touches[0].y)
          } else if (event.type === TouchType.Move) {
            // 移动
            this.myPen.lineTo(event.touches[0].x, event.touches[0].y)
            this.myPen.stroke()
          } else if (event.type === TouchType.Up) {
            this.myPen.closePath()
          }
        })
        .onReady(() => {
          // onReady事件中进行动态绘制
          this.myPen.lineWidth = 2
          this.myPen.strokeStyle = 'red'
        })

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}