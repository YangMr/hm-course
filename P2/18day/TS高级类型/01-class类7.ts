// 在class类使用可见性修饰符

// public 公有的  在任何地方,不管是在类中 或者 子类中, 或者类外 都是可以访问的

// protected  受保护的 , 只能在当前类中 或者 子类中进行访问

// private 私有的  只能在当前类中使用, 不能在子类或者类外访问

// readonly  只读, 不能修改

class Test {
  readonly name: string = "hello";

  run() {
    this.name = "123";
  }
}

class Child extends Test {
  run() {
    console.log(this.name);
  }
}

const t = new Test();
console.log(t.name); // 输出: hello
// t.name = "666";

// console.log(t.name);
