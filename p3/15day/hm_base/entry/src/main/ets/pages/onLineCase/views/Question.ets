import { getHotList, getNewList, getWaitList } from '../api/question'
import { ResponseCategoryListType } from '../api/types/categoryType'
import CustomTab from '../components/common/CustomTab'
import SearchBar from '../components/common/SearchBar'
import { RequestParams, ResponseQuestionListItemType, ResponseQuestionListType } from '../api/types/questionType'

@Component
struct Question {
  @State
  @Watch("changeTab")
  activeIndex: number = 0
  @State
  categoryList: ResponseCategoryListType[] = [
    {
      "id": 1,
      "name": "热门回答",
      "labelList": []
    },
    {
      "id": 2,
      "name": "最新问题",
      "labelList": []
    },
    {
      "id": 3,
      "name": "等待回答",
      "labelList": []
    }
  ]
  @State
  queryParams: RequestParams = {
    current: 1,
    size: 10
  }
  @State
  total: number = 0
  @State
  questionList: ResponseQuestionListItemType[] = []

  aboutToAppear(): void {
    this.initQuestionList()
  }

  // tab切换的时候会触发这个方法
  changeTab() {
    this.initQuestionList()
  }

  // 获取问答列表的数据
  async initQuestionList() {
    try {
      let res: ResponseQuestionListType = {} as ResponseQuestionListType
      if (this.activeIndex === 0) {
        res = await getHotList(this.queryParams)
      } else if (this.activeIndex === 1) {
        res = await getNewList(this.queryParams)
      } else if (this.activeIndex === 2) {
        res = await getWaitList(this.queryParams)
      }

      this.total = res.total
      this.questionList = res.records
      // AlertDialog.show({
      //   message: this.activeIndex + JSON.stringify(this.questionList)
      // })
    } catch (e) {
      console.log(e)
    }
  }

  @Builder
  questionListBuilder() {
    List() {
      ForEach(this.questionList, (item: ResponseQuestionListItemType) => {
        ListItem() {
          Column({
            space: 10
          }) {
            Row() {
              Text(item.title)
                .fontWeight(FontWeight.Bold)
                .maxLines(2)
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })
            }

            Row() {
              Text() {
                Span(`${item.reply} 回答 ·`)
                Span(`${item.viewCount} 浏览`)
              }
              .fontSize(12)
              .fontColor("#999")

              Text() {
                Span(`${item.nickName}} ·`)
                Span(item.updateDate)
              }
              .fontSize(12)
              .fontColor("#999")
            }
            .width("100%")
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .alignItems(HorizontalAlign.Start)
          .padding(20)
          .border({
            width: {
              bottom: 1
            },
            color: "#eee"
          })
        }
      })

    }
    .width("100%")
    .height("100%")
    .layoutWeight(1)
  }

  build() {
    Column() {
      // 搜索栏
      SearchBar()

      // Tab栏
      CustomTab({
        activeIndex: this.activeIndex,
        categoryList: this.categoryList,
        customWidth: "33.33%",
        getContent: () => {
          this.questionListBuilder()
        }
      })
    }
    .width("100%")
    .height("100%")
  }
}

export default Question