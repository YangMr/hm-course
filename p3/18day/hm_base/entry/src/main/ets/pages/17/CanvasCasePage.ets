@Entry
@Component
struct CanvasCasePage {
  // 2.1 初始化画笔对象 CanvasRenderingContext2D
  myPen: CanvasRenderingContext2D = new CanvasRenderingContext2D()

  // 绘制线的方法
  drawLine() {
    // 起始(开始)
    this.myPen.beginPath()
    // 笔离开画布移动
    this.myPen.moveTo(100, 100)

    // 设置笔的颜色,宽度,粗细
    this.myPen.strokeStyle = "blue"
    this.myPen.fillStyle = "#f60"
    this.myPen.lineWidth = 4


    // 笔挨着画布移动
    this.myPen.lineTo(200, 200)
    this.myPen.lineTo(300, 100)
    this.myPen.lineTo(100, 100)

    // 进行绘制
    this.myPen.stroke()
    this.myPen.fill()

    // 结束
    this.myPen.closePath()
  }

  build() {
    Column() {
      // 1. 放置Canvas组件-给宽和高
      // 2.2 将画笔对象作为构造参数传递给Canvas组件
      Canvas(this.myPen)
        .width("100%")
        .height("100%")
        .backgroundColor(Color.Pink)
        .onReady(() => {
          // 3. 可以在Canvas的onReady事件中进行动态绘制
          this.drawLine()
        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}