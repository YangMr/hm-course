const list = [
    {
        id : 1,
        name : "张三"
    },
    {
        id : 2,
        name : "李四"
    },
    {
        id :32,
        name : "王五"
    }
]

// 1. 下载express
// 2. 导入express
const express = require("express")
// 3. 创建web服务器
const server = express()


// 静态资源目录
server.use(express.static("./public"))

const fs = require("fs");
const path = require("path");

// 设置前端允许跨域
// const cors = require("cors");
// server.use(cors())

// 5. 监听客户端的请求
server.get("/api/list", (req, res) => {
    res.setHeader("Content-Type", "application/json;charset=UTF-8")
    res.send(JSON.stringify(list))
})


server.get("/api/province", (req,res)=>{
    // 设置cors , 跨域资源共享
    // res.setHeader("Access-Control-Allow-Origin", "*");
    fs.readFile(path.join(__dirname, "data", "province.json"), "utf8", (err, data) => {
        if(err){
            console.log(err)
        }else{
            res.setHeader("Content-Type", "application/json;charset=UTF-8")
            res.send(data)
        }
    })
})


// 处理不是指定接口返回的数据内容
server.all("*", (req, res) => {
    res.send("您要访问的资源不存在")
})




// 4. 启动服务器并设置的端口号
server.listen(8080, () => {
    console.log("Server listening on 8080")
})