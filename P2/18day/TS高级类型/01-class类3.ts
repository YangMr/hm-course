// 在class类中构造函数的参数指定类型

class Person {
  name: string;
  // 类型推导
  gender = "male";

  // 为构造函数的参数指定类型
  constructor(name: string, gender: string) {
    this.name = name;
    this.gender = gender;
  }
}

const p = new Person("张三", "男");

export {};
