@Entry
@Component
struct RefreshPage {
  @State
  list: number[] = Array(20).fill(Date.now())
  @State
  // 下拉刷新状态
  refreshFlag: boolean = false
  // 滚动状态

  @State
  // false 滚动中或者未滚动 true 滚动结束
  isEnd: boolean = false
  scroller: Scroller = new Scroller()

  // 自定义刷新区域显示内容
  @Builder
  refreshBuilder() {
    Text("当前正在加载中...")
      .width("100%")
      .textAlign(TextAlign.Center)
      .backgroundColor(Color.Pink)
      .visibility(this.refreshFlag ? Visibility.Visible : Visibility.Hidden)
  }

  build() {
    Column() {
      // false未开始下啦刷新  true 正在下啦刷新
      Refresh({ refreshing: $$this.refreshFlag, builder: this.refreshBuilder() }) {
        List({ scroller: this.scroller }) {
          ForEach(this.list, (item: number) => {
            ListItem() {
              Text(item.toString())
                .width("100%")
                .padding(20)
                .border({
                  width: {
                    bottom: 1
                  },
                  color: "#efefef"
                })
            }
          })


        }
        .width("100%")
        .height("100%")
        // 开始滚动
        .onScrollStart(() => {
          this.isEnd = false
        })
        // 滚动结束(回弹结束)
        .onScrollStop(() => {
          if (this.isEnd) {
            this.list.push(...[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13])
            this.scroller.scrollEdge(Edge.Bottom)
          }
        })
        // 滚动到底部
        .onReachEnd(() => {
          this.isEnd = true
        })
      }
      .pullDownRatio(100)
      .onRefreshing(() => {
        setTimeout(() => {
          this.list = Array(20).fill(Date.now())
          this.refreshFlag = false
        }, 3000)
      })

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}