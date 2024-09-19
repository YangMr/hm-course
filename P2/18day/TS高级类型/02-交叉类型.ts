interface Obj1Type {
  name: string;
}

interface Obj2Type {
  name: string;
  age: number;
}

// name : string | number

type Obj3Type = Obj1Type & Obj2Type;

const obj1: Obj1Type = {
  name: "jack",
};

// const obj2: Obj2Type = {
//   age: 20,
// };

// const obj3: Obj2Type = {
//   age: 20,
// };

// 交叉类型
// type NewObjType = Obj1Type & Obj2Type;
// {
//     name : string
//     age : number
// }
const newObj: Obj3Type = {
  name: "jack",
  age: 20,
};
