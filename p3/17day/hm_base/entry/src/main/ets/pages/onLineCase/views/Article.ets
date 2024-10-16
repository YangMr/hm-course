import { getArticleList } from '../api/article'
import { getCategoryList } from '../api/category'
import { RequestArticleListParams, ResponseArticleListItemType } from '../api/types/articleType'
import { ResponseCategoryListType } from '../api/types/categoryType'
import CustomTab from '../components/common/CustomTab'
import SearchBar from '../components/common/SearchBar'

@Component
struct Article {
  @State
  categoryList: ResponseCategoryListType[] = []
  @State
  @Watch("changeTab")
  activeIndex: number = 0
  @State
  queryParams: RequestArticleListParams = {
    current: 1,
    size: 10
  }
  @State
  total: number = 0
  @State
  articleList: ResponseArticleListItemType[] = [] as ResponseArticleListItemType[]

  // 组件加载完毕的方法
  async aboutToAppear() {
    await this.initCategoryList()
    await this.initArticleList()
  }

  async changeTab() {
    const id = this.categoryList[this.activeIndex].id || ""
    this.queryParams.categoryId = id as number
    await this.initArticleList()
  }

  // 加载分类列表的方法
  async initCategoryList() {
    try {
      const res = await getCategoryList()
      // AlertDialog.show({
      //   message: JSON.stringify(res)
      // })
      const customCategoryItem: ResponseCategoryListType = {
        id: 0,
        name: "推荐",
        labelList: []
      }

      this.categoryList = [customCategoryItem, ...res]
    } catch (e) {
      console.log(e)
    }
  }

  // 加载文章列表数据
  async initArticleList() {
    try {
      const res = await getArticleList(this.queryParams)
      this.total = res.total
      this.articleList = res.records
    } catch (e) {
      console.log(e)
    }
  }

  @Builder
  articleListBuilder() {
    List() {
      ForEach(this.articleList, (item: ResponseArticleListItemType) => {
        ListItem() {
          Row() {
            Column({ space: 5 }) {
              Text(item.title)
                .maxLines(2)
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })
                .fontWeight(FontWeight.Bold)

              Text(item.summary)
                .fontSize(12)
                .fontColor("#999")
                .maxLines(1)
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })

              Row() {
                Text(item.nickName)
                  .fontSize(12)

                Text() {
                  Span("· " + item.updateDate)

                  Span(`· ${item.viewCount} 赞`)
                }
                .fontColor("#999")
                .fontSize(12)
              }
              .width("100%")
            }
            .alignItems(HorizontalAlign.Start)
            .layoutWeight(1)
            .width("100%")
            .margin({
              right: 20
            })

            if (item.imageUrl) {
              Image(item.imageUrl)
                .width(110)
                .height(70)
                .borderRadius(10)
            }

          }
          .width("100%")
          .padding(20)
          .border({
            width: {
              bottom: 1
            },
            color: "#eee"
          })
          .alignItems(VerticalAlign.Top)

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
      // tab切换
      CustomTab({
        categoryList: this.categoryList,
        activeIndex: this.activeIndex,
        getContent: () => {
          this.articleListBuilder()
        }
      })
    }
    .width("100%")
    .height("100%")
  }
}

export default Article