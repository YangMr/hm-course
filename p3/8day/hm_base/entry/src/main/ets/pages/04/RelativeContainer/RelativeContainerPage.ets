@Entry
@Component
struct RelativeContainerPage {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer(){
      Text("hello")
        .alignRules({
          // 垂直方向对齐
          center : {
            anchor : "__container__",
            align : VerticalAlign.Center
          },
          // 水平方向对齐
          middle : {
            anchor : "__container__",
            align : HorizontalAlign.Center
          }
        })
    }

    .width("100%")
    .height("100%")
    .backgroundColor(Color.Pink)
  }
}