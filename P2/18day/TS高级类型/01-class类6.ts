// 在class类中使用implements关键字可以实现接口

// 这里接口表示的是类中必须要有接口中属性和方法

interface Message {
  text: string;

  nest: () => void;
}

class Person implements Message {
  text = "Hello";

  nest() {}
}

const p = new Person();
p.nest();

// class Person {
//   name: string;
//   // 类型推导
//   gender = "male";

//   // class默认提供的函数, 这个constructor在类进行实例化的时候就会触发
//   constructor(name: string, gender: string) {
//     this.name = name;
//     this.gender = gender;
//   }

//   // 自己定义的函数
//   getInstance(n: number): void {}
// }

// class Chlid extends Person {}

// const c = new Chlid("李四", "1");

// const p = new Person("张三", "男");
// p.getInstance(123);

// export {};

// // 继承 --->     你和宿舍兄弟没有关系 --- 叫爸爸 --- >  xifa
