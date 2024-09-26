@Entry
@Component
struct HomePage {
  @State message: string = 'Hello World';

  build() {
   Column(){
     Row({space : 20}){
       Column(){
       }.width(100)
       .height(200)
       .backgroundColor("#f60")

       Column(){

       }
       .width(100)
       .height(200)
       .backgroundColor("#ddd")

       Column(){

       }
       .width(100)
       .height(200)
       .backgroundColor("#999")
     }
     .height("100%")
     // .justifyContent(FlexAlign.Center)


   }
    .width("100%")
    .height("100%")
    .backgroundColor("#ccc")
  }
}