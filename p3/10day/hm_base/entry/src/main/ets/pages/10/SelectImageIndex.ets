import { SelectImageIconBuilder } from './builder/SelectImgIconBuilder'
import MyDialog from './components/MyDialog'
import SelectImageComponent from './components/SelectImageComponent'


@Entry
@Component
struct SelectImageIndex {
  @State
  showDialog: boolean = false
  @State
  imgList: string[] = [
    "/assets/1.webp",
    "/assets/2.webp",
    "/assets/3.webp",
    "/assets/4.webp",
    "/assets/5.webp",
    "/assets/6.webp",
    "/assets/7.webp",
    "/assets/8.webp",
    "/assets/9.webp",
    "/assets/10.webp",
  ]
  @State
  maxSize: number = 6
  @State
  selectedList: string[] = []
  @State
  currentIndex: number = 0
  // 2. 注册弹窗
  myDialogController: CustomDialogController = new CustomDialogController({
    builder: MyDialog({
      selectedList: this.selectedList,
      currentIndex: this.currentIndex
    }),
    customStyle: true
  })

  @Builder
  SelectImageLayout() {
    Column() {
      SelectImageComponent({
        showDialog: this.showDialog,
        imgList: this.imgList,
        maxSize: this.maxSize,
        selectedList: this.selectedList
      })
    }
    .width("100%")
    .height("100%")
  }

  build() {
    Column() {
      Grid() {
        ForEach(this.selectedList, (item: string, index: number) => {
          GridItem() {
            Image(item)
              .width("100%")
              .aspectRatio(1)
              .onClick(() => {
                // 3. 使用弹窗
                this.myDialogController.open()
                // promptAction.showToast({
                //   message: "123"
                // })

                this.currentIndex = index
              })
          }
        })

        GridItem() {
          SelectImageIconBuilder()
        }
        .aspectRatio(1)
        .onClick(() => {
          this.showDialog = true

        })

      }
      .width("100%")
      .height("100%")
      .columnsTemplate("1fr 1fr 1fr ")
      .columnsGap(10)
      .rowsGap(10)
      .bindSheet($$this.showDialog, this.SelectImageLayout, {
        showClose: false,
        height: "60%"
      })

      // .bindSheet("控制弹层的显示与隐藏, true/false", 弹层展示的内容, 配置)

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
    .padding(20)
  }
}