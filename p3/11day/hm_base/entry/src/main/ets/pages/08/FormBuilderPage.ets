interface FormData {
  name: string
  age: number | string
  bank: string
  money: string
}

interface FormDataInfo {
  data: FormData
}

@Entry
@Component
struct FormBuilderPage {
  @State
  formData: FormData = {
    name: "张三",
    age: 18,
    bank: "中国银行",
    money: "999"
  }

  @Builder
  layoutForm($$: FormDataInfo) {
    Column({ space: 10 }) {
      TextInput({ placeholder: "请输入姓名", text: $$.data.name })
      TextInput({ placeholder: "请输入年龄", text: $$.data.age.toString() })
      TextInput({ placeholder: "请输入银行", text: $$.data.bank })
      TextInput({ placeholder: "请输入银行卡余额", text: $$.data.money })
    }
  }

  build() {
    Column() {

      Text(JSON.stringify(this.formData))

      this.layoutForm({
        data: this.formData
      })

      Row() {
        Button("重置")
          .onClick(() => {
            this.formData = {
              name: "",
              age: "",
              bank: "",
              money: ""
            }
          })
      }
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
    .padding(20)
  }
}