// 封装 加 减 以及数据存储到本地
import { CategoryItemType } from '../models';

PersistentStorage.persistProp("cart_list", [])

export class CartStore {
  // 加法方法  减法方法


  static addOrCutCart(item: CategoryItemType, flag: boolean = true) {

    // 1. 获取本地存储的数据
    const list = AppStorage.get<CategoryItemType[]>("cart_list")!

    // 2. 判断添加的商品在本地是否存在
    const index = list.findIndex((goodItem: CategoryItemType) => item.id === goodItem.id)

    if (flag) {
      // 加的逻辑
      if (index < 0) {
        item.count = 1
        list.unshift(item)
      } else {
        list[index].count++
        list.splice(index, 1, list[index])
      }

    } else {
      // 减的逻辑
      list[index].count--

      if (list[index].count === 0) {
        list.splice(index, 1) // 昨天把单词写错了, 将splice写成slice, 所以导致数量为0时商品不能删除
      } else {
        list.splice(index, 1, list[index])
      }
    }

    AppStorage.setOrCreate("cart_list", list)
  }


  // 清空购物车的方法
  static clearCart() {
    AppStorage.set("cart_list", [])
  }
}

