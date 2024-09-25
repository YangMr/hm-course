import ZhCommentItem from './components/ZhCommentItem';
import ZhHeader from './components/ZhHeader';
import ZhReplyInput from './components/ZhReplyInput';
import { CommentItemTypeModel } from './model/CommentModel';


@Entry
@Component
struct ZhiHuIndexPage {
  @State
  commentList: CommentItemTypeModel[] = [
    new CommentItemTypeModel({
      id: 1,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家",
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    }),
    new CommentItemTypeModel({
      id: 2,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家1",
      content: '更何况还分到一个摩洛哥[惊喜1]',
      time: "11-30",
      area: "山东",
      likeNum: 101,
      likeFlag: false
    }),
    new CommentItemTypeModel({
      id: 3,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家3",
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    }),
    new CommentItemTypeModel({
      id: 4,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家4",
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    }),
    new CommentItemTypeModel({
      id: 5,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家5",
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    }),
    new CommentItemTypeModel({
      id: 6,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家6",
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    })
  ]
  @State
  commentContent: CommentItemTypeModel = new CommentItemTypeModel({
    id: 9999,
    avatar: "https://foruda.gitee.com/avatar/1705232317138324256/1759638_itcast_panpu_1705232317.png!avatar30",
    title: "薄荷世界请良心",
    content: '21年携手同行 中国—东盟博览会面向未来',
    time: "12-30",
    area: "北京",
    likeNum: 9999,
    likeFlag: false
  })
  scroller: Scroller = new Scroller()

  // 点赞或者取消点赞的方法
  changeLike(id: number) {


    const index = this.commentList.findIndex((item: CommentItemTypeModel) => {
      return item.id === id
    })

    if (index === -1) {
      if (this.commentContent.likeFlag) {
        this.commentContent.likeNum--
      } else {
        this.commentContent.likeNum++
      }
      this.commentContent.likeFlag = !this.commentContent.likeFlag
    } else {
      if (this.commentList[index].likeFlag) {
        this.commentList[index].likeNum--
      } else {
        this.commentList[index].likeNum++
      }
      this.commentList[index].likeFlag = !this.commentList[index].likeFlag
    }

  }

  // 发布评论功能已实现
  publishContent(content: string) {
    this.commentList.unshift(new CommentItemTypeModel({
      id: Math.random() + 1,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "yangmr",
      content: content,
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    }))

    this.scroller.scrollEdge(Edge.Top)
  }

  build() {
    Column() {
      // TODO:
      // 1. 标题栏
      ZhHeader()
      // 2. 评论
      ZhCommentItem({
        replayItem: this.commentContent,
        changeLike: (id: number) => {
          this.changeLike(id)
        }
      })
      // 3. 分割线
      Divider().strokeWidth(5).color("#eee")

      // 4. 回复标题
      Row() {
        Text(`回复 ${this.commentList.length}`)
          .fontWeight(FontWeight.Bold)
      }
      .width("100%")
      .padding(12)


      // 5. 评论的回复列表
      List({ scroller: this.scroller }) {

        ForEach(this.commentList, (item: CommentItemTypeModel) => {
          ListItem() {
            ZhCommentItem({
              replayItem: item,
              changeLike: (id: number) => {
                this.changeLike(id)
              }
            })
          }
        }, (item: CommentItemTypeModel) => item.id.toString())

      }

      .width("100%")
      .height("100%")
      .layoutWeight(1)

      // 6. 回复输入框
      ZhReplyInput({
        publishContent: (content: string) => {
          this.publishContent(content)
        }
      })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}
