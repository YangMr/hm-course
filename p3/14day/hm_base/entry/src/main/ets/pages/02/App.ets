import Header from "./components/header"
import Main from "./components/main"
import Footer from "./components/footer"

@Entry
@Component
struct App {

  build() {
    Column(){
      Header()
      Main()
      Footer()
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#eee")
  }
}