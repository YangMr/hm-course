// 在ts中什么场景下使用类型别名

// 1. 给定义重新定义一个名称
// 2. 把重复的类型重新定义, 达到复用的目的 (使用定义的类型别名可以作为变量的类型注解)
type CustomArrayType = (number | string)[];

let arr1: CustomArrayType = [1, 2, 3, 4, 5, "jack", "rose"];

let arr2: CustomArrayType = ["nick", "TOM", 1, 2, 3, 4];

let arr3: CustomArrayType = ["张三", "李四", 1, 2, 3, 4];
