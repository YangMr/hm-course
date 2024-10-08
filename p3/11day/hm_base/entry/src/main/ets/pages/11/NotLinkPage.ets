interface goodItemType {
  name: string
  price: number
  count: number
}

// @state 修饰的数据有多层, 想要修改第二层或者更深层次的数据, 怎么处理

@Observed
class goodItemModel implements goodItemType {
  name: string = ""
  price: number = 0
  count: number = 0

  constructor(model: goodItemType) {
    this.name = model.name
    this.price = model.price
    this.count = model.count
  }
}

@Entry
@Component
struct NotLinkPage {
  @State
  goodItem: goodItemType[] = [
    new goodItemModel({
      name: "瓜子",
      price: 20,
      count: 30
    }),
    new goodItemModel({
      name: "矿泉水",
      price: 20,
      count: 30
    }),
    new goodItemModel({
      name: "花生",
      price: 20,
      count: 30
    })
  ]

  build() {
    Column({ space: 20 }) {
      ForEach(this.goodItem, (item: goodItemType) => {
        notChild({
          goodItem: item
        })
      })


    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}

@Component
struct notChild {
  @ObjectLink
  goodItem: goodItemModel

  build() {
    Row({ space: 20 }) {
      Text(this.goodItem.name)
      Text("¥" + this.goodItem.price)
      Image($r("sys.media.ohos_ic_public_remove_filled"))
        .width(24)
        .aspectRatio(1)
        .onClick(() => {
          this.goodItem.count--
        })
      Text(this.goodItem.count.toString())
      Image($r("sys.media.ohos_ic_public_add_norm_filled"))
        .width(24)
        .aspectRatio(1)
        .onClick(() => {
          this.goodItem.count++
        })
    }
  }
}