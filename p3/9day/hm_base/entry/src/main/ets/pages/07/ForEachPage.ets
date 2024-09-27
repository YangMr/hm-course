interface IListItemType {
  id: number
  name: string
  price: number
  payDate: Date
  time: string
}

@Entry
@Component
struct ForEachPage {
  @State
  list: IListItemType[] = [
    {
      id: 1,
      name: "给老婆买口红",
      price: 399.00,
      payDate: new Date('2024/9/27'),
      time: '2024/09/27'
    },
    {
      id: 2,
      name: '给老婆买花',
      price: 99.00,
      payDate: new Date('2024/9/24'),
      time: '2024/09/27'
    },
    {
      id: 3,
      name: '给自己买手机',
      price: 9999.00,
      payDate: new Date('2024/9/23'),
      time: '2024/09/27'
    },
    {
      id: 4,
      name: "给老婆买口红",
      price: 399.00,
      payDate: new Date('2024/9/27'),
      time: '2024/09/27'
    },
    {
      id: 5,
      name: '给老婆买花',
      price: 99.00,
      payDate: new Date('2024/9/24'),
      time: '2024/09/27'
    },
    {
      id: 6,
      name: '给自己买手机',
      price: 9999.00,
      payDate: new Date('2024/9/23'),
      time: '2024/09/27'
    },
    {
      id: 7,
      name: "给老婆买口红",
      price: 399.00,
      payDate: new Date('2024/9/27'),
      time: '2024/09/27'
    },
    {
      id: 8,
      name: '给老婆买花',
      price: 99.00,
      payDate: new Date('2024/9/24'),
      time: '2024/09/27'
    },
    {
      id: 9,
      name: '给自己买手机',
      price: 9999.00,
      payDate: new Date('2024/9/23'),
      time: '2024/09/27'
    }
  ]

  build() {
    Column() {
      Row() {
        Text("支付记录")
          .fontWeight(FontWeight.Bold)
      }
      .width("100%")
      .padding(20)
      .justifyContent(FlexAlign.Center)
      .border({
        width: {
          bottom: 1,
        },
        color: "#efefef"
      })


      List() {
        ForEach(this.list, (item: IListItemType) => {
          ListItem() {
            Column({ space: 20 }) {
              Row() {
                Text(item.name)
                  .fontWeight(FontWeight.Bold)
              }
              .width("100%")

              Row() {
                Text("¥" + item.price.toFixed(2))
                  .fontColor("#f60")
                Text(item.time)
              }
              .width("100%")
              .justifyContent(FlexAlign.SpaceBetween)
            }.padding(20)
          }
        }, (item: IListItemType) => item.id.toString())


        ListItem() {
          Column() {
            Row() {
              Text("我是有底线的~")
            }
            .width("100%")
            .justifyContent(FlexAlign.Center)
          }.padding(20)
        }
        .width("100%")
        .layoutWeight(1)
        .padding({
          bottom: 30
        })
      }
      .width("100%")
      .height("100%")
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}