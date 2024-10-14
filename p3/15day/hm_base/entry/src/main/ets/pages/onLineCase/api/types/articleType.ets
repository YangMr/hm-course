export interface RequestArticleListParams {
  categoryId?: number | null
  current: number
  size: number
}

export interface ResponseArticleListType {
  records: ResponseArticleListItemType[],
  total: number
}

export interface ResponseArticleListItemType {
  id: number
  imageUrl: string
  nickName: string
  summary: string
  thumhup: number
  title: string
  updateDate: string
  userId: number
  viewCount: number
}


@Observed
export class ResponseArticleListTypeModel implements ResponseArticleListType {
  records: ResponseArticleListItemType[] = []
  total: number = 0

  constructor(model: ResponseArticleListType) {
    this.records = model.records
    this.total = model.total
  }
}

@Observed
export class ResponseArticleListItemTypeModel implements ResponseArticleListItemType {
  id: number = 0
  imageUrl: string = ''
  nickName: string = ''
  summary: string = ''
  thumhup: number = 0
  title: string = ''
  updateDate: string = ''
  userId: number = 0
  viewCount: number = 0

  constructor(model: ResponseArticleListItemType) {
    this.id = model.id
    this.imageUrl = model.imageUrl
    this.nickName = model.nickName
    this.summary = model.summary
    this.thumhup = model.thumhup
    this.title = model.title
    this.updateDate = model.updateDate
    this.userId = model.userId
    this.viewCount = model.viewCount
  }
}
