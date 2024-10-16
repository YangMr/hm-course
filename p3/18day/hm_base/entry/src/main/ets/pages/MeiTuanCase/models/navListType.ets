export interface NavListType {
  id: number
  active: boolean
  title: string
  subtitle?: string | number
}

@Observed
export class NavListModel implements NavListType {
  id: number = 0
  active: boolean = false
  title: string = ""
  subtitle?: string | number = ""

  constructor(model: NavListType) {
    this.id = model.id
    this.active = model.active
    this.title = model.title
    this.subtitle = model.subtitle
  }
}