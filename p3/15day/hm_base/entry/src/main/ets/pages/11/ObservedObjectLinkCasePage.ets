interface GoodItemLinkType {
  name: string
  price: number
  count: number
}

@Observed
class GoodItemLinkModel implements GoodItemLinkType {
  name: string = ""
  price: number = 0
  count: number = 0

  constructor(model: GoodItemLinkType) {
    this.name = model.name
    this.price = model.price
    this.count = model.count
  }
}


@Entry
@Component
struct ObservedObjectLinkCasePage {
  // 不能用Link的原因：必须是@State修饰才能进行传递！！！
  // 如果一个引用数据，希望传递后在子组件改自身或者第一层的时候可以产生UI的更新Observed + ObjectLik
  @State
  list: GoodItemLinkType[] = [
    new GoodItemLinkModel({
      name: "瓜子",
      price: 4,
      count: 5
    }),
    new GoodItemLinkModel({
      name: "花生",
      price: 3,
      count: 6
    }),
    new GoodItemLinkModel({
      name: "矿泉水",
      price: 5,
      count: 7
    })
  ]

  build() {
    Column({ space: 20 }) {
      ForEach(this.list, (item: GoodItemLinkType) => {
        ObjectLinkChild({
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
struct ObjectLinkChild {
  @ObjectLink
  goodItem: GoodItemLinkModel

  build() {
    Row({ space: 20 }) {
      Text(this.goodItem.name)
      Text("￥" + this.goodItem.price)
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
    .width("100%")
  }
}