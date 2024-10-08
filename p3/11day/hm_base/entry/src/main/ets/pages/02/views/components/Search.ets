@Component
struct SearchComponent{
  build() {
    Row(){
      Search({placeholder : "请输入您要搜索的内容"})
    }
  }
}

export default SearchComponent