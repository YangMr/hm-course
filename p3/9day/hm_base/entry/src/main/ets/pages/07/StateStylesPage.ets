@Entry
@Component
struct StateStylesPage {
  @State message: string = 'Hello World';
  @State
  buttonStatus: boolean = true
  @State
  check: boolean = true

  build() {
    Column({ space: 20 }) {
      Row() {
        Text("今天你变强了吗?")
      }
      .width("100%")
      .padding(20)
      .backgroundColor(Color.Red)
      .stateStyles({
        normal: {
          // .backgroundColor(Color.Blue)
        },
        pressed: {
          .PressedFunc()
        }
      })


      Button("启用/禁用")
        .stateStyles({
          // 禁用
          disabled: {
            .backgroundColor(Color.Black)
          }
        })
        .enabled(this.buttonStatus)
        .onClick(() => {
          this.buttonStatus = !this.buttonStatus
        })
      // 坑点：focused状态在模拟器和预览器上只能通过t ab按键激活
      TextInput({ text: "聚焦状态" })
        .stateStyles({
          normal: {
            .border({
              width: 2,
              color: Color.Red
            })
          },
          focused: {
            .border({
              width: 2,
              color: Color.Blue
            })
          }
        })


      Row() {
        Text("Selected状态:")
        Radio({ value: "radio1", group: "radioGroup" })
          .checked($$this.check)
          .stateStyles({
            selected: {
              .backgroundColor(Color.Red)
            }
          })
      }
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}

@Styles
function PressedFunc() {
  .backgroundColor("#ccc")
}