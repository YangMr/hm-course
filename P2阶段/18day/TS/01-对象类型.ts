// 在ts中如何声明对象的类型

// const obj = {
//   name: "jack",
//   age: 100,
//   run: function () {},
// };

// const obj: {
//   name: string;
//   age: number;
//   run: () => void;
//   great: (name: string) => number;
// } = {
//   name: "jack",
//   age: 100,
//   run: function () {},
//   great(name) {
//     return name;
//   },
// };

// obj.name = 666;
// obj.age = "111";

// obj.great("123");

// 在ts中如何声明对象的类型,并且可以设置对象的参数类型为可选类型
function myAxios(config: { url: string; method?: string }) {
  axios(config);
}

myAxios({
  url: "http://localhost:3000/api/list",
  //   method: "GET",
});

// myAxios(132)

export {};
