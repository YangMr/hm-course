@Entry
@Component
struct CanvasCasePage3 {
  //  2.1 初始化画笔对象 CanvasRenderingContext2D，
  myPen: CanvasRenderingContext2D = new CanvasRenderingContext2D()

  // 1. 绘制线条
  drawLine() {
    // 起点(必须)
    this.myPen.beginPath()

    // 画笔离开画布 (必须)
    this.myPen.moveTo(100, 100)

    // 画笔在画布上面移动 (必须)
    this.myPen.lineTo(200, 200)
    this.myPen.lineTo(300, 100)
    this.myPen.lineTo(100, 100)

    // 画笔宽度、线条颜色、其他相关配置
    this.myPen.lineWidth = 4
    this.myPen.strokeStyle = "red"
    this.myPen.fillStyle = "#fff"


    // 进行绘制 (必须)
    this.myPen.stroke()
    this.myPen.fill()

    // 终点(必须)
    this.myPen.closePath()
  }

  // 2. 绘制矩形
  drawRect() {
    // 开始
    this.myPen.beginPath()

    // 画笔的宽度
    this.myPen.lineWidth = 2

    // 画一个矩形
    this.myPen.strokeRect(150, 300, 200, 200)

    // 开始绘制
    this.myPen.stroke()

    // 结束
    this.myPen.closePath()
  }

  // 3. 绘制圆形
  drawCircle() {
    // 开始
    this.myPen.beginPath()
    // 画笔宽度
    this.myPen.lineWidth = 2

    // 画圆
    this.myPen.arc(150, 150, 100, 0, 360)

    // 进行绘制
    this.myPen.stroke()

    // 结束
    this.myPen.closePath()
  }

  // 4. 绘制文本
  drawText() {
    this.myPen.beginPath()

    // 设置字体样式
    this.myPen.font = "100px"
    // 创建文本
    this.myPen.fillText("精忠报国", 50, 50)


    this.myPen.closePath()
  }

  // 5. 绘制贝塞尔曲线
  drawBezierCurve() {
    this.myPen.beginPath()

    this.myPen.lineWidth = 2

    this.myPen.strokeStyle = "black"

    // 设置画笔的起点
    this.myPen.moveTo(100, 100)

    // 创建贝塞尔曲线
    this.myPen.bezierCurveTo(400, 50, 200, 150, 50, 50)

    // 进行绘制
    this.myPen.stroke()


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
          // 可以在Canvas的onReady事件中进行动态绘制

          // 1. 绘制线条
          // this.drawLine()

          // 2. 绘制矩形
          // this.drawRect()

          // 3. 绘制园形
          // this.drawCircle()

          // 4. 绘制文字
          // this.drawText()

          // 5. 画贝塞尔曲线
          this.drawBezierCurve()

        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}