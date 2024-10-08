import CommentComponent from './components/CommentComponent'
import HeaderComponent from './components/HeaderComponent'
import { ICommentType } from './types/CommentType'


@Entry
@Component
struct CommentPage {
  @State
  commentList: ICommentType[] = [
    {
      id: 1,
      avatar: "https://img1.baidu.com/it/u=1465664392,2808406094&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=800",
      username: "老张1",
      content: "写布局的口诀是从上到下,从左到右,从大到小,从外往里！🔥",
      time: "10-21",
      address: "北京",
      like: 100
    },
    {
      id: 2,
      avatar: "https://img1.baidu.com/it/u=1465664392,2808406094&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=800",
      username: "老张2",
      content: "写布局的口诀是从上到下,从左到右,从大到小,从外往里！🔥",
      time: "10-21",
      address: "北京",
      like: 100
    },
    {
      id: 3,
      avatar: "https://img1.baidu.com/it/u=1465664392,2808406094&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=800",
      username: "老张3",
      content: "写布局的口诀是从上到下,从左到右,从大到小,从外往里！🔥",
      time: "10-21",
      address: "北京",
      like: 100
    },
    {
      id: 4,
      avatar: "https://img1.baidu.com/it/u=1465664392,2808406094&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=800",
      username: "老张4",
      content: "写布局的口诀是从上到下,从左到右,从大到小,从外往里！🔥",
      time: "10-21",
      address: "北京",
      like: 100
    }
  ]

  build() {
    Column() {
      // 标题
      HeaderComponent({
        title: "评论回复"
      })

      // 标题
      HeaderComponent({
        title: "精彩评论"
      })

      // 评论
      ForEach(this.commentList, (item: ICommentType) => {
        CommentComponent({
          commentItem: item
        })
      }, (item: ICommentType) => item.id.toString())


    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}



