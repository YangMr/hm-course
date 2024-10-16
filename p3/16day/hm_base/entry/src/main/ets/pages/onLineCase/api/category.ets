// http://m.mengxuegu.com/api/article/api/category/label/list

import { Http } from '../utils/http'
import { ResponseCategoryListType } from './types/categoryType'


export const getCategoryList = (): Promise<ResponseCategoryListType[]> => {
  return Http.get<ResponseCategoryListType[]>("/api/article/api/category/label/list")
}