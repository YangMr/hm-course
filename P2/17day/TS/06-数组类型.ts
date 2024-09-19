// 在ts中如何声明数组类型的变量

// 声明一个number类型的数组(第一种写法)
// const arr: number[] = [1, 2, 3, 4, 5];

// 声明一个number类型的数组(第二种写法)
// const arr1: Array<number> = [1, 2, 3, 4, 5];

// 声明一个string类型的数组(第一种写法)
// const arr: string[] = ["1", "2", "3", "4", "5"];

// 需求: 数组里面有number类型的数据, 还有string类型的数据

// 联合类型
// 添加小括号，表示：首先是数组，然后，这个数组中能够出现 number 或 string 类型的元素
// const arr: (number | string)[] = ["1", "2", "3", "4", "5", 1, 2, 3];

// 不添加小括号，表示：arr 既可以是 number 类型，又可以是 string[]
// let arr: number | string[] = ["1", "2", "3", "4", "5"];

// GET POST PUT DELETE
// let Method: "GET" | "POST" | "PUT" | "DELETE" = "GET";

// Method = "POST";

// Method = "PUT";

// Method = "DELETE";

// Method = "A";
