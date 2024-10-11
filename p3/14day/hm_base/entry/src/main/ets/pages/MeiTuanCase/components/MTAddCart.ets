import { CategoryItemType } from '../models'
import { CartStore } from '../utils/CartStore'

@Component
struct MTAddCart {
  goodItem: CategoryItemType = {} as CategoryItemType
  @StorageLink("cart_list")
  cart_list: CategoryItemType[] = []

  getCount() {
    const index = this.cart_list.findIndex((item: CategoryItemType) => this.goodItem.id === item.id)
    return this.cart_list[index]?.count.toString() || "0"
  }

  build() {
    Row({ space: 8 }) {
      if (Number(this.getCount()) > 0) {
        Row() {
          Image($r("app.media.ic_screenshot_line"))
            .width(10)
            .aspectRatio(1)
        }
        .width(16)
        .aspectRatio(1)
        .border({
          width: 1,
          color: $r("app.color.main_color")
        })
        .justifyContent(FlexAlign.Center)
        .borderRadius(4)
        .backgroundColor($r("app.color.white"))
        .onClick(() => {
          CartStore.addOrCutCart(this.goodItem, false)
        })
      }


      Text(this.getCount()).fontSize(14)

      Row() {
        Image($r("app.media.ic_public_add_filled"))
          .width(10)
          .aspectRatio(1)
      }
      .width(16)
      .aspectRatio(1)
      .backgroundColor($r("app.color.main_color"))
      .justifyContent(FlexAlign.Center)
      .borderRadius(4)
      .onClick(() => {
        CartStore.addOrCutCart(this.goodItem, true)
      })
    }
  }
}

export default MTAddCart