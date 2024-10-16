export interface CategoryType {
  tag: string
  name: string
  foods: CategoryItemType[]
}

export interface CategoryItemType {
  "id": number
  "name": string
  "like_ratio_desc": string
  "month_saled": number
  "unit": string
  "food_tag_list": string[]
  "price": number
  "picture": string
  "description": string
  "tag": string
  "count": number
}
