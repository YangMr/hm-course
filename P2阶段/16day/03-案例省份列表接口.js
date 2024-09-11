/**
 * 目标：基于 Web 服务，开发-省份列表数据接口
 * 步骤：
 *  1. 创建 Web 服务
 *  2. 使用 req.url 获取请求的资源路径，读取 json 文件数据返回
 *  3. 其他请求的路径，暂时返回不存在的提示
 *  4. 运行 Web 服务，用浏览器请求地址查看效果
 */

// 引入fs模块
const fs = require('fs');
// 引入path模块
const path = require('path');

// 引入http模块
const http = require("http")
// 创建web服务器
const server = http.createServer()
// 监听客户端的请求
server.on("request", (request, response) => {

    // 如果客户端请求的接口地址是 /api/province 则给客户端返回world , 如果不是 /api/province  , 则给客户端返回 的是hello
    if(request.url === "/api/province"){
        // 读取data目录下province这个文件的数据
        fs.readFile(path.resolve(__dirname, 'data', "province.json"), (err, data) => {
            if(err){
                console.log(err)
            }else{
                // 然后返回给前端
                response.setHeader("Content-Type", "application/json;charset=UTF-8")
                response.end(data.toString())
            }
        })

    }else{
        response.setHeader("Content-Type", "text/plain;charset=UTF-8")
        response.end("你要访问的资源路径不存在")
    }


})
// 启动服务器, 并设置监听的端口号
server.listen(3000, () => {
    console.log("服务端接口地址http://localhost:3000")
})