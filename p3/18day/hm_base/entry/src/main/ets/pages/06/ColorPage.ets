@Entry
@Component
struct ColorPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      // 在同一个页面 5个页面 用了黄色, 这个黄色红色, 5个页面所有的黄色都需要修改
      // Text("hello1").fontColor($r("app.color.t1"))
      // Text("hello2").fontColor($r("app.color.t1"))
      // Text("hello3").fontColor($r("app.color.t1"))
      // Text("hello4").fontColor($r("app.color.t1"))
      // Text("hello5").fontColor($r("app.color.t1"))
      // Text("hello6").fontColor($r("app.color.t1"))

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}