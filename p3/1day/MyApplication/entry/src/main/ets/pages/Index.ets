@Entry
@Component
struct Index {
  @State message: string = 'Hello World 123';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .borderColor('#ffbe0e0e')
        .width('103.66vp')
    }
    .height('100%')
    .width('100%')
  }
}