/**
 * 目标：使用 http 模块，创建 Web 服务
 * Web服务：一个程序，用于提供网上信息浏览服务
 * 步骤：
 *  1. 引入 http 模块，创建 Web 服务对象
 *  2. 监听 request 事件，对本次请求，做一些响应处理
 *  3. 启动 Web 服务监听对应端口号
 *  4. 运行本服务在终端，用浏览器访问 http://localhost:3000/ 发起请求（localhost 是本机域名）
 * 注意：终端里启动了服务，如果想要终止按 ctrl c 停止即可
 */

// 端口号
const port = 3000

// 1. 引入http模块
const http = require('http');

// 2. 创建web服务器
const server = http.createServer()

// 3. 监听客服端是否向服务端发送了请求
server.on("request", (req, res) => {
    res.end("hello world")
})

// 4. 启动服务器(设置端口号)
server.listen(port, () => {
    console.log("服务器已经启动了")
    console.log(`服务器的接口地址:http://localhost:${port}`)
})