@Entry
@Component
struct i18nPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {
        Text("hello")
      }


      Text($r("app.string.my_first_name"))
      //   .font
      //
      Text($r("app.string.my_first_name"))

    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Red)
  }
}