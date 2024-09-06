// 简易版的axios
function axios(config){
    return new Promise(function (resolve, reject){
        // 创建XMLHttpRequest
        const xhr = new XMLHttpRequest()

        // get请求方式, 传参的问题就解决了
        // 判断有没有传递params数据,
        if(config.params){
            const params = new URLSearchParams(config.params).toString();
            config.url += `?${params}`
        }

        // 设置请求的方式 以及 请求的url地址
        xhr.open(config.method || "GET" , config.url)

        // 接受请求的结果
        xhr.addEventListener("loadend", function () {
            if(xhr.status >= 200 && xhr.status <= 300){
                const res = JSON.parse(xhr.response)
                resolve(res)
            }else{
                reject(new Error(xhr.response))
            }

        })

        // 发送请求
        if(config.method.toLocaleUpperCase() === "POST" && config.data){
            xhr.setRequestHeader("Content-Type" , "application/json")
            xhr.send(JSON.stringify(config.data))
        }else{
            xhr.send()
        }


    })
}