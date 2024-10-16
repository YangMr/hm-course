export interface RequestParams {
  current: number
  size: number
}

export interface ResponseQuestionListType {
  total: number
  records: []
}

export interface ResponseQuestionListItemType {
  "id": number
  "userId": number,
  "nickName": string
  "userImage": string
  "title": string
  "viewCount": number
  "thumhup": number
  "reply": number
  "status": number
  "createDate": string
  "updateDate": string
}