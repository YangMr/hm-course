@Builder
export function layoutFunction(leftText: string, rightText: string) {
  Row() {
    Text(leftText)

    Text(rightText)
  }
  .width("100%")
  .justifyContent(FlexAlign.SpaceBetween)
  .backgroundColor("#fff")
  .padding(20)
  .borderRadius(6)
}