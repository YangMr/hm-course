import CategoryHeader from '../components/category/CategoryHeader'
import CategoryMain from '../components/category/CategoryMain'

@Component
struct Category {
  build() {
    Column() {
      // 头部
      CategoryHeader()
      // 内容
      CategoryMain()
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#fff")
  }
}

export default Category