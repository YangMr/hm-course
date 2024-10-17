@Entry
@Component
struct RelativeContainerPage {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer(){
      RelativeContainer(){
        Row(){

        }
        .width("33%")
        .aspectRatio(1)
        .backgroundColor(Color.Red)
        .alignRules({
          middle : {
            anchor : "__container__",
            align : HorizontalAlign.Center
          }
        })

        Row(){}
        .width("33%")
        .aspectRatio(1)
        .backgroundColor(Color.Green)
        .alignRules({
          right : {
            anchor : "__container__",
            align: HorizontalAlign.End
          },
          center : {
            anchor : "__container__",
            align: VerticalAlign.Center
          }

        })


        Row(){}
        .width("33%")
        .aspectRatio(1)
        .backgroundColor(Color.Yellow)
        .alignRules({
          bottom :  {
            anchor : "__container__",
            align : VerticalAlign.Bottom
          },
          middle : {
            anchor : "__container__",
            align : HorizontalAlign.Center
          }
        })

        Row(){}
        .width("33%")
        .aspectRatio(1)
        .backgroundColor(Color.Black)
        .alignRules({
          center : {
            anchor : "__container__",
            align: VerticalAlign.Center
          },
        })
      }
      .width("60%")
      .aspectRatio(1)
      .backgroundColor(Color.Pink)
      .alignRules({
        center : {
          anchor : "__container__",
          align : VerticalAlign.Center
        },
        middle : {
          anchor : "__container__",
          align : HorizontalAlign.Center
        }
      })


      Row(){
        Text("返回顶部")
          .fontColor("#fff")
      }
      .width(40)
      .height(40)
      // .padding(10)
      .backgroundColor(Color.Black)
      .offset({
        x : -10,
        y : - 10

      })
      .alignRules({
        right : {
          anchor : "__container__",
          align : HorizontalAlign.End
        },
        bottom : {
          anchor : "__container__",
          align : VerticalAlign.Bottom
        }
      })

    }
    .width("100%")
    .height("100%")
    .backgroundColor(Color.Gray)
  }
}