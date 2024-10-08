/**
* 目标：编写 web 服务，监听请求的是 /index.html 路径的时候，返回 dist/index.html 时钟案例页面内容
* 步骤：
*  1. 基于 http 模块，创建 Web 服务
*  2. 使用 req.url 获取请求资源路径，并读取 index.html 里字符串内容返回给请求方
*  3. 其他路径，暂时返回不存在提示
*  4. 运行 Web 服务，用浏览器发起请求
*/


// 引入fs模块
const fs = require("fs")
// 引入path模块
const path = require("path")
// 引入http模块
const http = require('http')
// 创建http服务
const server = http.createServer()
// 监听前端的请求
server.on("request", (request, response) => {
    if(request.url === "/index.html"){
        fs.readFile(path.join(__dirname, "dist" ,"index.html"), (err, data)=>{
            if(err){
                console.log(err)
            }else{
                response.setHeader("Content-Type", "text/html;charset=UTF-8")
                response.end(data.toString())
                console.log(data.toString())
            }
        })

    }else{
        response.setHeader('Content-Type', 'text/html;charset=utf-8')
        response.end('你要访问的资源路径不存在')
    }

})
// 启动服务器, 并设置端口号
server.listen(8080, () => console.log('Listening on port 8080'))