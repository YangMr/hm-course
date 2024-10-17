// 1. 引入axios
import axios, { AxiosError, AxiosResponse, InternalAxiosRequestConfig } from '@ohos/axios';

// 2. 创建axios实例对象
const request = axios.create({
  baseURL: "http://m.mengxuegu.com",
  timeout: 10000
})

// 3. 创建请求拦截器

request.interceptors.request.use((config: InternalAxiosRequestConfig) => {
  return config;
}, (error: AxiosError) => {
  return Promise.reject(error);
});


// 4. 创建响应拦截器
request.interceptors.response.use((response: AxiosResponse) => {

  return response.data.data;
}, (error: AxiosError) => {
  return Promise.reject(error);
});


// 5. 封装自定义请求
export class Http {
  static get<T>(url: string, params?: object) {
    return request.get<null, T>(url, {
      params
    })
  }

  static post<T>(url: string, data?: object) {
    return request.post<null, T>(url, data)
  }

  static put<T>(url: string, data?: object) {
    return request.put<null, T>(url, data)
  }

  static delete<T>(url: string, data?: object) {
    return request.delete<null, T>(url, data)
  }
}

// 6. 导出实例对象或者自定义请求方法

export default request



