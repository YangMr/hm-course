// 封装axios
// 0. 引入axios
import axios, { AxiosError, AxiosResponse, InternalAxiosRequestConfig } from '@ohos/axios';

// 1. 创建axios实例对象
const request = axios.create({
  baseURL: "https://zhousg.atomgit.net/harmonyos-next",
  timeout: 10000
})
// 2. 创建请求拦截器

request.interceptors.request.use((config: InternalAxiosRequestConfig) => {
  return config;
}, (error: AxiosError) => {
  return Promise.reject(error);
});


// 3. 创建响应拦截器
request.interceptors.response.use((response: AxiosResponse) => {
  return response.data;
}, (error: AxiosError) => {
  return Promise.reject(error);
});

// 4. 封装自定义的请求方法
export class Http {
  static get<T>(url: string, params ?: object) {
    return request.get<null, T>(url, {
      params
    })
  }

  static post<T>(url: string, data ?: object) {
    return request.post<null, T>(url, data)
  }

  static put<T>(url: string, data ?: object) {
    return request.put<null, T>(url, data)
  }

  static delete<T>(url: string, data ?: object) {
    return request.delete<null, T>(url, data)
  }
}

// 5. 导出请求的实例对象或者封装的自定义请求方法
export default request
