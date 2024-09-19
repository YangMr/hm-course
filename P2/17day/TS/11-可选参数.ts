// 在ts中给函数的参数设置为可选参数

// function test(value?: string) {
//   if (value) {
//     console.log("success");
//   } else {
//     console.log("error");
//   }
// }

// test();

type MethodType = "GET" | "POST" | "PUT" | "DELETE";

// 注意: 可选参数只能写到参数的最后面
const login = (url: string, method: MethodType, data?: {}) => {
  return axios({
    url,
    method,
    [method === "GET" ? "params" : "data"]: data,
  });
};

login("/api/login", "GET");
