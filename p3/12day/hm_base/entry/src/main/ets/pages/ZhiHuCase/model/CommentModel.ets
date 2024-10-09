export interface CommentItemType {
  id: number,
  avatar: string,
  title: string,
  content: string
  time: string
  area: string
  likeNum: number
  likeFlag: boolean
}


@Observed
export class CommentItemTypeModel implements CommentItemType {
  id: number = 0
  avatar: string = ''
  title: string = ''
  content: string = ''
  time: string = ''
  area: string = ''
  likeNum: number = 0
  likeFlag: boolean = false

  constructor(model: CommentItemType) {
    this.id = model.id
    this.avatar = model.avatar
    this.title = model.title
    this.content = model.content
    this.time = model.time
    this.area = model.area
    this.likeNum = model.likeNum
    this.likeFlag = model.likeFlag
  }
}
