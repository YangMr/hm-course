export interface RequestArticleListParams {
  categoryId?: number
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