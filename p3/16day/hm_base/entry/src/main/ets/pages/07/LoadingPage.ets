import MyLoading from './components/MyLoading';

@Entry
@Component
struct LoadingPage {
  @State
  // false 隐藏进度条
  showLoading: boolean = false

  // 效果: 页面一开始加载的时候,展示进度条
  aboutToAppear(): void {
    this.showLoading = true

    setTimeout(() => {
      this.showLoading = false
    }, 3000)
  }

  build() {
    Column() {
      if (this.showLoading) {
        MyLoading()
      }

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}