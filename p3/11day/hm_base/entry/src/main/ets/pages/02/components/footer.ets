@Preview
@Component
struct Footer{
  build() {
    Row(){
      Text("footer")
    }
    .width("100%")
    .height(70)
    .backgroundColor("#d70")
  }
}

export default Footer