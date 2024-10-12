@Builder
export function SelectIcon() {
  Row() {
    Image($r("sys.media.ohos_ic_public_add"))
      .width(30)
      .aspectRatio(1)
      .fillColor(Color.Gray)
  }
  .width("100%") // 相对
  .aspectRatio(1)
  .aspectRatio(1)
  .border({
    width: 1,
    color: Color.Gray,
    style: BorderStyle.Dashed
  })
  .justifyContent(FlexAlign.Center)
}