/**
 * 目标一：压缩 html 里代码
 * 需求：把 public/index.html 里的，回车/换行符去掉，写入到 dist/index.html 中
 *  1.1 读取 public/index.html 内容
 *  1.2 使用正则替换内容字符串里的，回车符\r 换行符\n
 *  1.3 确认后，写入到 dist/index.html 内
 */


// 1. 引入fs模块
const fs = require("fs")

// 2. 引入path模块
const path = require("path")

// 3. 读取 public/index.html 内容
// fs.readFile(path.join(__dirname, "public", "index.html"))
fs.readFile(path.join(__dirname,"public/index.html"), (err, data)=>{
    if(err){
        console.log("Error", err)
    }else{
        // 4. 将读取出来的文件内容交给一个变量保存
        const htmlStr = data.toString()

        // 5. 使用正则替换内容字符串里的，回车符\r 换行符\n
        const resultStr = htmlStr.replace(/[\n\r]/g,"")

        // 6. 确认后，写入到 dist/index.html 内
        fs.writeFile(path.join(__dirname,"dist/index.html"), resultStr, (err, data) => {
           if(err){
               console.log(err)
           }else{
               console.log("写入成功")
           }
        })
    }
})