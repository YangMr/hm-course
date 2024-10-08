import { CommentItemType, CommentItemTypeModel } from '../model/CommentModel'

@Component
struct ZhCommentItem {
  // 、父组件传递过来的数据
  @State
  replayItem: CommentItemTypeModel = new CommentItemTypeModel({} as CommentItemType)
  changeLike: (id: number) => void = () => {
  }

  build() {
    Row({ space: 20 }) {
      Image(this.replayItem.avatar)
        .width(40)
        .aspectRatio(1)
        .borderRadius(20)

      Column({ space: 12 }) {
        Text(this.replayItem.title)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)

        Text(this.replayItem.content)
          .maxLines(5)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
          .fontColor("#555")

        Row() {
          Text(`${this.replayItem.time} IP:属地${this.replayItem.area}`)
            .fontSize(12)
            .fontColor("#b5a8a8")

          Row() {
            Image($r("app.media.ic_like_fill"))
              .width(20)
              .aspectRatio(1)
              .fillColor(this.replayItem.likeFlag ? Color.Red : "#b5a8a8")
            Text(this.replayItem.likeNum.toString())
              .fontSize(12)
              .fontColor(this.replayItem.likeFlag ? Color.Red : "#b5a8a8")
          }.onClick(() => {
            // 子组件里面告诉父组件 我需要对那条数据进行点赞或者取消点赞
            // promptAction.showToast({
            //   message: "hello"
            // })

            this.changeLike(this.replayItem.id)
          })
        }.width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .width("100%")
    .alignItems(VerticalAlign.Top)
    .padding({
      left: 16,
      right: 16,
      top: 8,
      bottom: 8
    })

  }
}

export default ZhCommentItem