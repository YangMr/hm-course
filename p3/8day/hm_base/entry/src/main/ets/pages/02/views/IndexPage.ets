import SearchComponent from "./components/Search"
import BannerComponent from "./components/Banner"
@Entry
@Component
struct IndexPage {


  build() {
    Column(){
      SearchComponent()
      BannerComponent()


      Row(){
        Text("menu")
      }

      Row(){
        Text("hot")
      }
    }
  }
}

