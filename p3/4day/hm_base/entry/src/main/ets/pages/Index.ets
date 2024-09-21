import {TabBarType} from "./types/index"
import Article from "./01/article"
import Home from "./01/home"
import My from "./01/my"
import Question from "./01/question"
import Category from "./01/category"
@Entry
@Component
struct Index {

  @State tabBars: TabBarType[] = [
    {
      name : "home",
      title : "首页",
      icon : $r('app.media.ic_public_message'),
      selectedIcon : $r('app.media.ic_public_message_filled')
    },
    {
      name : "category",
      title : "分类",
      icon: $r('app.media.ic_public_contacts_group'),
      selectedIcon:  $r('app.media.ic_public_contacts_group_filled')
    },
    {
      name : "article",
      title : "阅读",
      icon : $r('app.media.ic_public_message'),
      selectedIcon : $r('app.media.ic_public_message_filled')
    },
    {
      name : "question",
      title : "问答",
      icon: $r('app.media.ic_public_contacts_group'),
      selectedIcon:  $r('app.media.ic_public_contacts_group_filled')
    },
    {
      name : "my",
      title : "我的",
      icon: $r('app.media.ic_public_contacts_group'),
      selectedIcon:  $r('app.media.ic_public_contacts_group_filled')
    }
  ]

  @State currentIndex : number = 0

  @Builder
  TabBarItem(item : TabBarType){
    Column(){
      Image(item.name === this.tabBars[this.currentIndex].name ? item.selectedIcon : item.icon)
        .width(20)
        .height(20)

      Text(item.title)
        .fontSize(12)
        .fontColor(item.name === this.tabBars[this.currentIndex].name ? '#f60' : '#000')
        .margin({top : 5})
    }
  }

  build() {
    Tabs({index : $$this.currentIndex}){
      ForEach(this.tabBars, (item : TabBarType)=>{
        TabContent(){
          if(item.name === 'article'){
            Article()
          }else if(item.name === 'category'){
            Category()
          }else if(item.name === 'question'){
            Question()
          }else if(item.name === 'my'){
            My()
          }else if(item.name === "home"){
            Home()
          }


        }.tabBar(this.TabBarItem(item))
      }, (item:TabBarType) => item.name)




      // TabContent(){
      //   Text("分类")
      // }.tabBar("分类")
      //
      // TabContent(){
      //   Text("阅读")
      // }.tabBar("阅读")
      //
      // TabContent(){
      //   Text("问答")
      // }.tabBar("问答")
      //
      // TabContent(){
      //   Text("我的")
      // }.tabBar("我的")


    }.barPosition(BarPosition.End)
  }
}