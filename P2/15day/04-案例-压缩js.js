/**
 * 目标二：压缩 js 里代码，并整合到 html 中一起运行
 *  2.1 读取 public/index.js 内容
 *  2.2 使用正则替换内容字符串里的，回车符\r 换行符\n 打印语句console.log('xxx');
 *  2.3 确认后，拼接 html 内容写入到 dist/index.html 内
 */

// 1. 导入fs模块
const fs = require("fs")
// 2. 导入path模块
const path = require("path")

// 3. 读取html文件的内容
fs.readFile(path.join(__dirname, "public/index.html"),(err, data) => {
    if (err) {
        console.log(err)
    }else{
        // 4. 将读取到的文件内容交给变量保存
        const htmlStr = data.toString()

        // 5. 将文件的内容换行符与空格替换为空
        const resultStr = htmlStr.replace(/[\n\r]/g,"")

        // 6. 读取 public/index.js 内容
        fs.readFile(path.join(__dirname, "public/index.js"), (err, data) => {
            if(err){
                console.log(err)
            }else{
                // 7. 将读取到的文件内容交给变量保存
                const jsStr = data.toString()


                // 8. 使用正则替换内容字符串里的，回车符\r 换行符\n 打印语句console.log('xxx');
                const jsResultStr = jsStr.replace(/[\r\n]/g,'').replace(/console.log\(.+?\);/g, '')

                // 9. 将刚才处理的js逻辑放到script标签里面
                const result = `<script>${jsResultStr}</script>`

                // 10.  确认后，拼接 html 内容写入到 dist/index.html 内
                fs.writeFile(path.join(__dirname, "dist/index.html"), resultStr + result, (err, data) => {
                    if(err){
                        console.log(err)
                    }else{
                        console.log("写入成功")
                    }
                })
            }
        })
    }
})