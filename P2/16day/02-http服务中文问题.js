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

const http = require('http')


const server = http.createServer()


server.on("request", (request, response) => {
    // 设置响应头, 内容类型 普通的html文件 编码格式为utf-8
    response.setHeader("Content-Type", "text/html;charset=utf-8")

    // 给客户返回内容
    response.end("我想好好学习")
})


server.listen(3000, () => {
    console.log("Server started on port 3000")
})