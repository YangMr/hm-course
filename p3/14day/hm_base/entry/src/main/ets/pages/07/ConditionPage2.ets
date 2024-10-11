@Entry
@Component
struct ConditionPage2 {
  @State
  optionsValue: string = "未开通"
  @State
  selectIndex: number = 0

  build() {
    Column() {
      Row() {
        Text("开通会员:")
        Select([
          {
            value: "未开通"
          },
          {
            value: "VIP"
          },
          {
            value: "SVIP"
          }
        ])
          .width("50%")
          .value($$this.optionsValue)
          .selected($$this.selectIndex)
      }

      Row({ space: 20 }) {
        Image("https://img1.baidu.com/it/u=542423895,2761526726&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=750")
          .width(60)
          .aspectRatio(1)
          .borderRadius(30)

        Text("西北吴彦祖")

        if (this.selectIndex === 0) {
          Text("VIP")
            .backgroundColor("#ccc")
            .VIPStyle()
        } else if (this.selectIndex === 1) {
          Text("VIP")
            .backgroundColor("#ffb921")
            .VIPStyle()
        } else {
          Text("SVIP")
            .backgroundColor("#bc0303")
            .VIPStyle()
        }


      }

    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}

@Extend(Text)
function VIPStyle() {
  .padding({
    left: 12,
    right: 12,
    bottom: 4,
    top: 4
  })
  .borderRadius(20)
  .fontColor("#fff")
  .fontSize(12)
}