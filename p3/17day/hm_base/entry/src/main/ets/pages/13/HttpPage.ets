// https://zhousg.atomgit.net/harmonyos-next/takeaway.json
// import { http } from '@kit.NetworkKit';
import { promptAction } from '@kit.ArkUI';

import http from '@ohos.net.http';
import axios, { AxiosResponse } from '@ohos/axios';

@Entry
@Component
struct HttpPage {
  @State message: string = 'Hello World';

  // 1. 引入http
  // 2. 创建http实例对象
  // 3. 发送请求


  async sendHttp() {
    // 创建http实例对象
    const req = http.createHttp()
    //  发送请求
    const res = await req.request("https://zhousg.atomgit.net/harmonyos-next/takeaway.json")
    // 打印请求的数据
    promptAction.showDialog({
      message: res.result as string
    })
  }

  async sendAxios() {
    // 1. 引入axios
    // 2. 创建http实例对象
    const service = axios.create({
      baseURL: "https://zhousg.atomgit.net/harmonyos-next",
      timeout: 5000
    })
    // 3. 发送请求
    const res = await service.get<object, AxiosResponse<object, null>>("/takeaway.json")
    // 打印请求的数据
    promptAction.showDialog({
      message: JSON.stringify(res.data)
    })
  }

  build() {
    Column() {
      Button("发送HTTP请求")
        .onClick(() => {
          this.sendHttp()
        })

      Button("使用axios发送http请求")
        .onClick(() => {
          this.sendAxios()
        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#fff")
  }
}