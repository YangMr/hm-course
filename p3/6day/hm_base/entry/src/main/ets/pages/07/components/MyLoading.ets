import { promptAction } from '@kit.ArkUI'

@Component
struct MyLoading {
  @State
  value: number = 5
  timer: number = 0

  // 鸿蒙生命周期函数
  // 组件从创建到销毁的整个过程我们称之为生命周期
  // 组件挂(加)载时
  aboutToAppear(): void {
    // 间隔性定时器
    this.timer = setInterval(() => {
      if (this.value === 100) {
        this.value = 0
      }

      this.value++
    }, 10)


    // 延时型定时器
    setTimeout(() => {
      clearInterval(this.timer)
    }, 3000)
  }

  // 组件销毁时
  aboutToDisappear(): void {
    clearInterval(this.timer)
  }

  build() {
    Column() {
      Progress({
        total: 100,
        value: this.value,
        type: ProgressType.Ring
      })

      Button("获取当前进度值")
        .onClick(() => {
          promptAction.showToast({
            message: this.value.toString(),
          })
        })
    }

  }
}

export default MyLoading