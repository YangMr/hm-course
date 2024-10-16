import { ICommentType } from '../types/CommentType'

@Component
struct CommentComponent {
  commentItem: ICommentType = {
    id: 0,
    avatar: "",
    username: "",
    content: "",
    time: "",
    address: "",
    like: 0
  }

  build() {
    // 2. 评论
    Row({ space: 16 }) {
      Image(this.commentItem.avatar)
        .width(60)
        .borderRadius(30)

      Column({ space: 16 }) {
        Text(this.commentItem.username)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)

        Text(this.commentItem.content)
          .width("100%")

        Row() {
          Text(`${this.commentItem.time}·IP:${this.commentItem.address}`)
            .fontSize(12)
            .fontColor("#ccc")

          Row() {
            Image($r("app.media.ic_like_fill"))
              .width(20)
              .fillColor("#ccc")

            Text(this.commentItem.like.toString())
              .fontSize(12)
              .fontColor("#ccc")
          }
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)

        // .layoutWeight(1)
        // .backgroundColor("red")
        //
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)
    }
    // .backgroundColor(Color.Blue)
    .width("100%")
    .padding(16)
    .alignItems(VerticalAlign.Top)
  }
}


export default CommentComponent