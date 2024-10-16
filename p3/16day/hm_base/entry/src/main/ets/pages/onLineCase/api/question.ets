import { Http } from '../utils/http'
import { RequestParams, ResponseQuestionListType } from './types/questionType'


// 热门回答接口
export const getHotList = (data: RequestParams): Promise<ResponseQuestionListType> => {
  return Http.post<ResponseQuestionListType>("/api/question/api/question/hot", data)
}

// 最新问题接口
export const getNewList = (data: RequestParams): Promise<ResponseQuestionListType> => {
  return Http.post<ResponseQuestionListType>("/api/question/api/question/new", data)
}

// 等待回答接口
export const getWaitList = (data: RequestParams): Promise<ResponseQuestionListType> => {
  return Http.post<ResponseQuestionListType>("/api/question/api/question/wait", data)
}