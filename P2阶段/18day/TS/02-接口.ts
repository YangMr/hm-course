// 在ts中使用接口定义多个对象的类型

// 通过接口定义对象的类型
interface ObjType {
  name: string;
  age: number;
  say: () => void;
}

// const obj1: { name: string; age: number; say: () => void } = {
//   name: "小王",
//   age: 30,
//   say() {},
// };

const obj1: ObjType = {
  name: "小王",
  age: 30,
  say() {},
};

const obj2: ObjType = {
  name: "小张",
  age: 40,
  say() {},
};

// const obj2: { name: string; age: number; say: () => void } = {
//   name: "小张",
//   age: 40,
//   say() {},
// };

//
interface Person {
  demo: string;
  type: string;
  test: (num1: number, num2: number) => number;
}
const obj3: Person = {
  demo: "周杰伦",
  type: ".mp4",
  test(num1, num2) {
    return num1 + num2;
  },
};

// 定义对象类型的方式有几种   3种
// 第一种obj : {name : string} 直接在变量后面写类型
// 第二种 使用interface接口定义类型, interface只能定义对象类型
// 第三种 使用type类型别名定义对象类型

// type 也可以类型重复声明的问题
// type 也可以定义对象类型

// type 与 interface

interface BasePersonType {
  name: string;
  age: number;
  like: string;
}

interface IPerson extends BasePersonType {
  run: () => void;
  type: number;
}

interface IPerson1 extends BasePersonType {
  say: () => void;
  status: number;
}

const test1: IPerson = {
  name: "jack",
  age: 100,
  like: "rose",
  run() {
    console.log("running");
  },
  type: 1,
};

const test2: IPerson1 = {
  name: "rose",
  age: 10,
  like: "tom",
  say() {
    console.log("saying");
  },
  status: 1,
};

export {};
