// 在class类中定义函数时, 可以给函数的参数与返回值定义类型

class Person {
  name: string;
  // 类型推导
  gender = "male";

  // class默认提供的函数, 这个constructor在类进行实例化的时候就会触发
  constructor(name: string, gender: string) {
    this.name = name;
    this.gender = gender;
  }

  // 自己定义的函数
  getInstance(n: number): void {}
}

const p = new Person("张三", "男");
p.getInstance(123);

export {};
