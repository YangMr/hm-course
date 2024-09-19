/**
 * 目标：基于 Web 服务，开发-城市列表数据接口
 * 步骤：
 *  1. 判断 req.url 资源路径+查询字符串，路径前缀匹配/api/city
 *  2. 借助 querystring 模块的方法，格式化查询参数字符串
 *  3. 读取 city.json 城市数据，匹配省份名字下属城市列表
 *  4. 返回城市列表，启动 Web 服务测试
 */
const qs = require('querystring');

const fs = require('fs');
const path = require('path');

// 引入http
const http = require("http")
// 创建服务器
const server = http.createServer()
// 监听客户端的请求
server.on("request", (request, response) => {

    // 省份数据的处理
    if(request.url === "/api/province"){
        fs.readFile(path.join(__dirname, "data", "province.json"), "utf8", (err, data) => {
            if(err){
                console.log(err)
            }else{
                response.setHeader("Content-Type", "application/json;charset=UTF-8")
                response.end(data.toString())
            }
        })
    }else if(request.url.startsWith("/api/city")){
        const arr = request.url.split("?")
        const str = arr[1]
        const query = qs.parse(str)

        fs.readFile(path.join(__dirname, "data", "city.json"), "utf8", (err, data) => {
            if(err){
                console.log(err)
            }else{

                const obj = JSON.parse(data.toString())


                const cityList = obj[query.pname]

                console.log(cityList)
                // 设置后端允许跨域
                response.setHeader("Access-Control-Allow-Origin", "*")
                response.setHeader("Content-Type", "application/json;charset=UTF-8")
                response.end(JSON.stringify(cityList))
            }
        })
    }else{
        response.setHeader("Content-Type", "text/plain;charset=UTF-8")
        response.end("你要访问的资源路径不存在")
    }

    // const arr = request.url.split("?")
    // const str = arr[1]
    // // "pname=123" ==> {pname : "123"}
    // const query = qs.parse(str)
    // console.log(query)

    // response.end("Hello World!")
})
// 启动服务器,并设置端口号
server.listen(3000, () => {
    console.log("服务器的接口地址为: http://localhost:3000")
})