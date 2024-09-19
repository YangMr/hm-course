// 在ts中使用泛型 来定义类型

// 如何定义泛型: 使用< 中间可以任何的大写字母 >

function test<T>(value: T): T {
  return value;
}

// 第一个同事: number
let num = test<number>(123);

// test<string>("hello");

// test<{
//   name: string;
//   age: number;
// }>({
//   name: "John",
//   age: 100,
// });

// 调用接口

// login token : string

// info userinfo : 对象类型
