@Component
struct ZhReplyInput {
  @State
  // 保存的是输入框输入的内容
  content: string = ""
  // 父传递给子组件的方法
  publishContent: (content: string) => void = () => {
  }

  build() {
    Row({ space: 4 }) {
      TextInput({ placeholder: "回复~", text: $$this.content })
        .layoutWeight(1)
        .onSubmit(() => {
          this.publishContent(this.content);
          this.content = ""
        })
      Button('发布').controlSize(ControlSize.SMALL).buttonStyle(ButtonStyleMode.TEXTUAL)
        .onClick(() => {
          this.publishContent(this.content);
          this.content = ""
        })
    }
    .width("100%")
    .height(60)
    .padding({
      left: 12,
      right: 12
    })
    .border({
      width: {
        top: 1
      },
      color: "#eee"
    })
  }
}

export default ZhReplyInput