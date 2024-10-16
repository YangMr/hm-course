import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct VideoPage {
  // 1. 视频实例对象没关系 (创建视频控制器)
  controller: VideoController = new VideoController()
  // 控制是否静音
  @State
  muted: boolean = true
  @State
  autoplay: boolean = false
  @State
  isFullscreen: boolean = false
  @State
  playSpeed: number = 1
  @State
  duration: number = 0
  @State
  time: number = 0

  build() {

    Column() {
      Video({
        // 设置视频的路径
        src: $rawfile("local.mp4"),
        // 控制播放进度  控制播放速度0.75 ~ 2 ,0.25是一个档次
        currentProgressRate: this.playSpeed,
        // 控制器传递到video组件
        controller: this.controller,
        // 设置封面
        previewUri: $r("app.media.a")
      })
        .loop(true)// 控制循环播放
        .autoPlay(this.autoplay)// 自动播放
        .muted(this.muted)// 静音播放
        .width("100%")
        .objectFit(ImageFit.Contain)// 设置视频完全展示
        .height(400)
        .controls(this.isFullscreen)
        .onFullscreenChange(async (screen) => { // 触发全屏切换时的事件
          this.isFullscreen = screen.fullscreen
        })
        .onPrepared((time) => {
          this.duration = time.duration
        })
        .onUpdate((time) => {
          this.time = time.time
        })

      Row() {
        Text("播放进度:")
        Slider({
          value: this.time,
          min: 0,
          max: this.duration
        })
          .onChange((value) => {
            this.controller.setCurrentTime(value)
          })
      }
      .layoutWeight(1)

      Row() {
        // 1  0.75 - 2  档位0.25
        Text("播放速度:")
        Slider({
          value: this.playSpeed,
          min: 0.75,
          max: 2,
          step: 0.25
        })
          .onChange((value) => {
            promptAction.showDialog({
              message: value.toString()
            })
            this.playSpeed = value
          })

      }
      .layoutWeight(1)


      Flex({ wrap: FlexWrap.Wrap }) {
        Button("播放")
          .onClick(() => {
            this.controller.start()
          })

        Button("暂停")
          .onClick(() => {
            this.controller.pause()
          })

        Button("停止")
          .onClick(() => {
            this.controller.stop()
          })

        Button("静音/不静音")
          .onClick(() => {
            this.muted = !this.muted
          })

        Button("关闭自动播放")
          .onClick(() => {
            this.autoplay = false
          })


        Button("全屏")
          .onClick(() => {
            this.controller.requestFullscreen(true)
            this.isFullscreen = true
          })
      }
      .width("100%")
      .padding(20)
    }
    .height('100%')
    .width('100%')
  }
}