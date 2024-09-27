import BackPlayComponent from './components/BackPlayComponent';
import PlayControlComponent from './components/PlayControlComponent';
import ShakeText from './components/ShakeText';

@Entry
@Component
struct MusicIndexPage {
  @Provide
  isPlay: boolean = false

  build() {
    Column() {
      Row() {
        ShakeText()
      }
      .layoutWeight(1)
      .width("100%")
      .justifyContent(FlexAlign.Center)

      Row() {
        // 背景播放组件
        BackPlayComponent()
      }
      .width("100%")
      .layoutWeight(1)
      .backgroundColor("#fff")

      Row() {
        // 播放控制组件
        PlayControlComponent()
      }

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}