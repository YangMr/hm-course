import MTFooter from './components/MTFooter';
import MTHeader from './components/MTHeader';
import MTMain from './components/MTMain';

@Entry
@Component
struct MTIndexPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Stack({ alignContent: Alignment.Bottom }) {
        Column() {
          // 1. 顶部
          MTHeader()
          // 2. 内容
          MTMain()
        }
        .height("100%")
        .width("100%")

        // 3. 底部
        MTFooter()
      }
      .layoutWeight(1)

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}