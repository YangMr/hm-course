@Preview
@Component
struct Header{
  build() {
    Row(){
      Text("header")
    }
    .width("100%")
    .height(70)
    .backgroundColor("#f60")
  }
}

export default Header