// 在ts中单独给函数的参数与函数的返回值指定类型

// function test(num1, num2) {
//   return num1 + num2;
// }

// test();

// 需求: 编写一个函数，接收一个number类型参数，返回number类型的值(第一种写法-普通函数写法)
// function test(num1: number, num2: number): number {
//   return num1 + num2;
// }

// test(10, 10);

// 需求: 编写一个函数，接收一个number类型参数，返回number类型的值(第二种写法-箭头函数写法)

const add = (num1: number, num2: number): number => {
  return num1 + num2;
};

add(1, 2);
