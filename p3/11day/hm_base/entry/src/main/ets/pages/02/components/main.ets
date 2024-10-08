@Preview
@Component
struct Main{
  build() {
    Row(){
      Text("main")
    }
    .width("100%")
    .layoutWeight(1)
  }
}

export default Main