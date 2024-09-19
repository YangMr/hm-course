@Entry
@Component
struct Index {
  @State message: string = 'Hello World 123';

  build() {

    Row(){
      Text("Hello")
    }.width(200)
      .height(40)
    .backgroundColor("red")

  }
}