interface IUserType {
  name: string
  age: number,
  sex: string,
  address: IAddressType
}

interface IAddressType {
  province: string
  city: string
  area: string
}

// @Observed
// class IAddressTypeModel implements IAddressType {
//   province: string = ""
//   city: string = ""
//   area: string = ""
//
//   constructor(model: IAddressType) {
//     this.province = model.province
//     this.city = model.city
//     this.area = model.area
//   }
// }

// class IAddressTypeModel implements IAddressType {
//   province: string = ""
//   city: string = ""
//   area: string = ""
//
//   constructor(model: IAddressType) {
//     this.province = model.province
//     this.city = model.city
//     this.area = model.area
//   }
// }

// class IUserTypeModel implements IUserType {
//   name: string = ""
//   age: number = 0
//   sex: "男" | "女" = "男"
//   address: IAddressType = new IAddressTypeModel({} as IAddressType)
//
//   constructor(model: IUserType) {
//     this.name = model.name
//     this.age = model.age
//     this.sex = model.sex as "男" | "女"
//     this.address = model.address
//   }
// }


@Entry
@Component
struct AddressPage {
  // @State作用：可以让数据发生变化时UI自动更新(只有自身或者第一层发生变化)
  // 必须尊许原则：只有自己或者第一层发生变化@State才能检测到！！！
  // user: IUserType = {
  //   name: "小王",
  //   age: 20,
  //   sex: "女",
  //   address: {
  //     province: "北京",
  //     city: "北京市",
  //     area: "海淀区"
  //   }
  // }
  @State
  user: IUserTypeModel = new IUserTypeModel({
    name: "小王",
    age: 20,
    sex: "女",
    address: {
      province: "北京",
      city: "北京市",
      area: "海淀区"
    }
  })

  build() {
    Column({ space: 20 }) {
      Text(JSON.stringify(this.user))

      Row({ space: 20 }) {
        Text("姓名")
        TextInput({ placeholder: "请输入姓名", text: this.user.name })
          .onChange((value: string) => {
            this.user.name = value
          })
          .layoutWeight(1)
      }

      Row({ space: 20, }) {
        Text("年龄")
        TextInput({ placeholder: "请输入年龄", text: this.user.age.toString() })
          .layoutWeight(1)
          .onChange((value: string) => {
            this.user.age = parseInt(value)
          })
      }

      Row({ space: 20 }) {
        Text("性别")
        Select([
          { value: "男" },
          { value: "女" }
        ])
          .value(this.user.sex)
          .onSelect((index: number, value: string) => {
            this.user.sex = value as "男" | "女"
          })
          .layoutWeight(1)
      }

      Row({ space: 15 }) {
        Text("地址")
        TextInput({ text: this.user.address.province })
          .layoutWeight(1)
          .onChange((value: string) => {
            this.user.address.province = value
            this.user.address = new IAddressTypeModel(this.user.address)
          })
        TextInput({ text: this.user.address.city })
          .layoutWeight(1)
          .onChange((value: string) => {
            this.user.address.city = value
            this.user.address = new IAddressTypeModel(this.user.address)
          })
        TextInput({ text: this.user.address.area })
          .layoutWeight(1)
      }

      Row({ space: 10 }) {
        Button("修改姓名")
          .onClick(() => {
            this.user.name = "小王666"
          })

        Button("修改年龄")
          .onClick(() => {
            this.user.age++
          })

        Button("修改性别")
          .onClick(() => {
            this.user.sex = this.user.sex === "男" ? "女" : "男"
          })
      }

      Row() {
        Button("修改地址")
          .layoutWeight(1)
          .onClick(() => {
            //所有的鸿蒙的更新机制-关于对象层的， 所有的监听机制都只能监听到Object.keys(对象)中的可见属性，但凡超过一层，是监测不到变化的


            // 修改的是第二层, 也就是非本身或者第一层
            this.user.address.province = "陕西省"
            this.user.address.city = "西安市"
            this.user.address.area = "高新区"

            // 修改数据 --- 调用新增呢的IAddressTypeModel类
            this.user.address = new IAddressTypeModel(this.user.address)

            // 修改的是第一层
            // this.user.address = {
            //   province: "陕西省",
            //   city: "西安市",
            //   area: "高新区"
            // }

            // 弊端
            // this.user.address = {
            //   province: "北京",
            //   city: "北京市",
            //   area: "大兴区"
            // }

            // 修改的是自身
            // this.user = {
            //   name: "小王1",
            //   age: 201,
            //   sex: "男",
            //   address: {
            //     province: "陕西省",
            //     city: "西安市",
            //     area: "高新区"
            //   }
            // }
          })
      }
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
    .padding(20)
  }
}

@Observed
export class IUserTypeModel implements IUserType {
  name: string = ''
  age: number = 0
  sex: string = ''
  address: IAddressType = new IAddressTypeModel({} as IAddressType)

  constructor(model: IUserType) {
    this.name = model.name
    this.age = model.age
    this.sex = model.sex
    this.address = model.address
  }
}

export class IAddressTypeModel implements IAddressType {
  province: string = ''
  city: string = ''
  area: string = ''

  constructor(model: IAddressType) {
    this.province = model.province
    this.city = model.city
    this.area = model.area
  }
}
