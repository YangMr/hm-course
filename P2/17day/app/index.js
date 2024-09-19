// 导入http模块
const http = require("http")

// 创建服务器
const server = http.createServer()

// 监听客户端请求
server.on("request", (request, response) => {
    response.end("Hello World! 123 789")
})

// 启动服务器, 并设置监听的端口号
server.listen(3001, () => {
    console.log("Server started on port 3000")
})

