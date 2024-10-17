import { fileIo } from '@kit.CoreFileKit'
import { buffer } from '@kit.ArkTS'

@Entry
@Component
struct CanvasCasePage4 {
  //  2.1 初始化画笔对象 CanvasRenderingContext2D，
  myPen: CanvasRenderingContext2D = new CanvasRenderingContext2D()
  @State
  canvasWidth: number = 0
  @State
  canvasHeight: number = 0
  @State
  imgUrl: string = ""

  build() {
    Column() {
      Canvas(this.myPen)
        .width("100%")
        .height(300)
        .backgroundColor(Color.Pink)
        .onReady(() => {
          this.myPen.lineWidth = 4
          this.myPen.strokeStyle = "black"
        })
        .onAreaChange((oldArea, newArea) => {
          this.canvasWidth = newArea.width as number
          this.canvasHeight = newArea.height as number
        })
        .onTouch((event) => {
          if (event.type === TouchType.Down) {
            this.myPen.beginPath()
            // 按下
            this.myPen.moveTo(event.touches[0].x, event.touches[0].y)
          } else if (event.type === TouchType.Move) {
            // 移动
            this.myPen.lineTo(event.touches[0].x, event.touches[0].y)
            this.myPen.stroke()
          } else if (event.type === TouchType.Up) {
            // 抬起
            this.myPen.closePath()
          }
        })


      if (this.imgUrl) {
        Image(this.imgUrl)
          .width(200)
          .height(100)
      }


      Row({ space: 20 }) {
        Button("保存图片")
          .onClick(() => {
            // let img = this.myPen.toDataURL('image/jpg')
            // const filePath = getContext().tempDir + "/" + Date.now() + '.jpeg'
            // const file = fileIo.openSync(filePath, fileIo.OpenMode.CREATE | fileIo.OpenMode.READ_WRITE)
            // const base64Image = img.split(';base64,').pop();
            // const imgBuffer = buffer.from(base64Image, "base64")
            // fileIo.writeSync(file.fd, imgBuffer.buffer)
            // fileIo.closeSync(file)
            // this.imageUrl = "file://" + filePath
            // 1. 将画布的内容转化为base64
            const imageUrl = this.myPen.toDataURL("image/jpg")

            // 将画布的内容转化成文件(存储到沙箱)
            // 2. 定义存储到沙箱的文件夹中的文件的路径
            const filePath = getContext().tempDir + "/" + "A.jpg"
            // 3. 打开图片, 如果没有的话, 则进行创建 , 有的话,则进行读写
            const file = fileIo.openSync(filePath, fileIo.OpenMode.CREATE | fileIo.OpenMode.READ_WRITE)
            // 4. 获取base64数据
            const base64Image = imageUrl.split(";base64,").pop()
            // promptAction.showDialog({
            //   message: JSON.stringify(base64Image)
            // })
            // 5. 将base64数据转化为二进制数据
            const imgBuffer = buffer.from(base64Image, "base64")
            //
            // // 6. 写入到文件中
            fileIo.writeSync(file.fd, imgBuffer.buffer)
            //
            // // 7. 关闭写入
            fileIo.closeSync(file)
            //
            // // 8. 写入沙箱
            this.imgUrl = 'file://' + filePath

          })

        Button("清空签名")
          .onClick(() => {
            //  x y  画布的宽度与高度
            this.myPen.clearRect(0, 0, this.canvasWidth, this.canvasHeight)
          })
      }
      .layoutWeight(1)
    }
    .height('100%')
    .width('100%')
  }
}