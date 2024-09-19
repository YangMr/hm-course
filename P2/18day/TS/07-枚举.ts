// let status: number = 1;

let type: number = 1;
let text: string = "";

// 1 : success

// 2 : warning

// 3 : error

// 4 : disable
// 定义枚举值  ---
enum Type {
  success = 10,
  warning = 20,
  error = 30,
  disable = 40,
}

// if(state === 1)
if (type === Type.success) {
  text = "成功";
} else if (type === Type.warning) {
  text = "警告";
} else if (type === Type.error) {
  text = "失败";
} else if (type === Type.disable) {
  text = "禁用";
}

// 更多状态

// if (type === 10) {
//   text = "成功";
// } else if (type === 20) {
//   text = "警告";
// } else if (type === 30) {
//   text = "失败";
// } else if (type === 40) {
//   text = "禁用";
// }

// if (type === 1) {
//   text = "成功";
// } else if (type === 2) {
//   text = "警告";
// } else if (type === 3) {
//   text = "失败";
// } else if (type === 4) {
//   text = "禁用";
// }

// 枚举值
// if (type === 1) {
//   text = "成功";
// } else if (type === 2) {
//   text = "警告";
// } else if (type === 3) {
//   text = "失败";
// } else if (type === 4) {
//   text = "禁用";
// }

export {};
