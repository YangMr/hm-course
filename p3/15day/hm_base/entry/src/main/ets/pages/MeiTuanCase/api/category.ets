import { CategoryType } from '../models'
import { Http } from '../utils/http'

export const getCategoryList = (): Promise<CategoryType[]> => {
  return Http.get<CategoryType[]>("/takeaway.json")
}