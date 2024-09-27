@Entry
@Component
struct EditBuilderParamsPage {
  @State
  positionText: string = "异常位置"
  @State
  positionValue: string = "西安123"
  @State
  obj: ObjType = {
    leftText: "异常位置",
    rightValue: "西安"
  }

  // 在@Builder 修饰的函数内部, 不允许改变参数值
  @Builder
  listFunc(leftText: string, rightText: string) {
    Row() {
      Text(leftText)

      Text(rightText)
    }
    .width("100%")
    .padding(20)
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.SpaceBetween)
    .borderRadius(10)

  }

  @Builder
  listFunc1(data: DataType) {
    Row() {
      Text(data.leftText)

      Text(data.rightText)
    }
    .width("100%")
    .padding(20)
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.SpaceBetween)
    .borderRadius(10)

  }

  @Builder
  listFunc2($$: DataType) {
    Row() {
      Text($$.leftText)

      Text($$.rightText)
    }
    .width("100%")
    .padding(20)
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.SpaceBetween)
    .borderRadius(10)

  }

  // 只有传入一个参数, 且参数需要直接传入对象字面量才会按引用传递参数, 其余方式都是为按值传递,
  // 按值传递方式参数是不允许被修改的
  build() {

    Column({ space: 10 }) {
      this.listFunc(this.positionText, this.positionValue)

      // 引入数据类型 数组 或者 对象
      this.listFunc1({
        leftText: this.positionText,
        rightText: this.positionValue
      })

      this.listFunc2({
        leftText: this.positionText,
        rightText: this.positionValue
      })

      listFunc3({
        leftText: this.obj.leftText,
        rightText: this.obj.rightValue
      })

      Button("修改位置")
        .onClick(() => {
          this.obj.rightValue = "北京"
        })

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
    .padding(20)
  }
}

interface DataType {
  leftText: string
  rightText: string
}

interface ObjType {
  leftText: string
  rightValue: string
}


@Builder
function listFunc3($$: DataType) {
  Row() {
    Text($$.leftText)

    Text($$.rightText)
  }
  .width("100%")
  .padding(20)
  .backgroundColor(Color.White)
  .justifyContent(FlexAlign.SpaceBetween)
  .borderRadius(10)

}
