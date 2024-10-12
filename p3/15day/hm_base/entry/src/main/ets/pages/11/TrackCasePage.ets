interface GoodInfoType {
  name: string
  price: number
  count: number
}

//Track修饰符就是在对象级数据更新时，只让自己改变的属性产生UI更新
class GoodInfoModel implements GoodInfoType {
  // 细节点：一旦一个对象上有Track修饰，那么没有UI关联的可以不加Track,其他UI关联的必须都得加Track
  @Track
  name: string = ""
  @Track
  price: number = 0
  @Track
  count: number = 0

  constructor(model: GoodInfoType) {
    this.name = model.name
    this.price = model.price
    this.count = model.count
  }
}

@Entry
@Component
struct TrackCasePage {
  @State
  // goodInfo: GoodInfoType = {
  //   name: '西瓜',
  //   price: 1.39,
  //   count: 1
  // }

  goodInfo: GoodInfoModel = new GoodInfoModel({
    name: '西瓜',
    price: 1.39,
    count: 1
  })

  trackFn(num: number) {
    console.log("type" + num)
    return "#fff"
  }

  build() {
    Column({ space: '20' }) {
      Text(this.goodInfo.name)
        .backgroundColor(this.trackFn(1))
        .padding(20)
      Text("¥" + this.goodInfo.price)
        .backgroundColor(this.trackFn(2))
        .padding(20)
      Text(this.goodInfo.count.toString())
        .backgroundColor(this.trackFn(3))
        .padding(20)

      Button("数量++")
        .onClick(() => {
          this.goodInfo.count++
        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}