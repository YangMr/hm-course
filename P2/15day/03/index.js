// 导入fs模块
const fs = require("fs")
// path路径模块
const path = require("path")

// console.log("path", path.join(__dirname, ".." , "text.txt"))

// 读取text.txt文件的内容
fs.readFile(path.join(__dirname, "..", "text.txt"), "utf8", (err, data) => {
    if (err) {
        console.error(err);
    }else{
        console.log(data.toString())
    }
})