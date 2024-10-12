import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct EventPage {
  @State message: string = 'Hello World';

  tips(value : string){
    promptAction.showToast({message : value})
  }

  login(){
    promptAction.showToast({message : "登录成功"})
  }

  build() {
    Column({space: 20}){
      Row(){
        Image("https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png")
          .width(160)
          .onAreaChange((oldValue : Area , newValue: Area) => {
            AlertDialog.show({
              message : `old: ${JSON.stringify(oldValue)}, new :  ${JSON.stringify(newValue)}`
            })
          })
      }

      Row(){
        TextInput({placeholder : "请输入搜索的内容"})
          .backgroundColor("#f4f5f6")
          .onChange((value) => {
            this.tips(value)
          }).onSubmit(() => {
            AlertDialog.show({
              message : "登录失败"
            })
          })
      }

      Row(){
        Button("登录")
          .width("100%")
          .onClick(() => {
            this.login()
          })
      }
    }

    .width("100%")
    .height("100%")
    .padding(20)
    .justifyContent(FlexAlign.Center)
    // .backgroundColor("#eee")
  }
}