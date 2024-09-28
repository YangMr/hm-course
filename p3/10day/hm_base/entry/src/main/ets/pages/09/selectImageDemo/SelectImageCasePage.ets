import { SelectIcon } from './builder/selectIcon';
import SelectImage from './components/SelectImage';


@Entry
@Component
struct SelectImageCasePage {
  @Provide
  showDialog: boolean = false
  @State
  selectedList: string[] = []

  @Builder
  ImageSelectBuilder() {
    Column() {
      SelectImage({
        selectedList: this.selectedList
      })
    }
  }

  build() {
    Column() {
      Grid() {
        ForEach(this.selectedList, (item: string) => {
          GridItem() {
            Image(item)
              .width("100%")
              .aspectRatio(1)
          }
        })

        GridItem() {

          SelectIcon()
        }.onClick(() => {

          this.showDialog = true
        })

      }
      .width("100%")
      .height("100%")
      .padding(20)
      .columnsTemplate("1fr 1fr 1fr")
      .columnsGap(10)
      .rowsGap(10)
      .bindSheet($$this.showDialog, this.ImageSelectBuilder, {
        // 去掉关闭图标
        showClose: false,
        height: "60%"
      })

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}

// 1. 创建页面
// 2. 创建打开选择图片模拟框的按钮
// 3. 给选择图片模拟框的按钮绑定点击事件
// 4. 创建模拟框
// 5. 点击按钮打开模态框
// 6. 实现模态框头部
// 7. 实现图片列表的渲染
// 8. 实现点击取消和确定关闭模态框
// 9. 点击图片, 将选择的图片存储到一个新数组中
// 10. 点击确定按钮,将选择的图片列表返回给父组件
// 11. 父组件拿到子组件选择图片进行渲染