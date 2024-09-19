// 需求: 给一个文件里面写入一段话, 并且能够读取出这个文件的内容
// 1. 导入fs模块
// 2. 写入文件内容
// 3. 读取写入的文件内容

// 导入fs模块
const fs = require("fs")


// 先给文件写入内容, 写入成功之后,再读取写入的内容
fs.writeFile("./demo.txt", "我想好好学习",  (err, data) => {
    if(err){
        console.log(err)
    }else{
        fs.readFile("./demo.txt", "utf8", (err, data) => {
            if(err){
                console.log(err)
            }else{
                console.log(data)
            }
        })
    }
})





















// 给文件写入数据
// fs.writeFile("./text.txt", "hello world", (err, data) => {
//     if(err) console.log(err)
//     else console.log(data)
// })

// 读取文件的内容
// fs.readFile("text.txt", (err, data)=>{
//     if(err) {
//         console.log("Error", err)
//     }else{
//         console.log(data.toString())
//     }
//
// })