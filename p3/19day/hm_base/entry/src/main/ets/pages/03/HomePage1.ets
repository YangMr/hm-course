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
     // .height("100%")


     Column({space : 20}){
       Column(){}
       .width(200)
       .height(100)
       .backgroundColor('#000')

       Column(){}
       .width(200)
       .height(100)
       .backgroundColor('#cfcf')

       Column(){}
       .width(200)
       .height(100)
       .backgroundColor('#f60')
     }

   }
    .width("100%")
    .height("100%")
    .backgroundColor("#ccc")
  }
}