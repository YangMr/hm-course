// http://m.mengxuegu.com/api/article/api/article/search

import { Http } from '../utils/http'
import { RequestArticleListParams, ResponseArticleListType } from './types/articleType'

export const getArticleList = (data: RequestArticleListParams): Promise<ResponseArticleListType> => {
  return Http.post<ResponseArticleListType>("/api/article/api/article/search", data)
}

