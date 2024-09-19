// 在ts中同时给函数的参数与函数的返回值指定类型

const add2: (num1: number, num2: number) => number | string = (num1, num2) => {
  return num1 + num2 + "123";
};

type FunType = (num1: number, num2: number) => string | number;
const add1: FunType = (num1, num2) => {
  return num1 + num2 + "hello";
};

add2(1, 2);
