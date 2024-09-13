// 类型断言:  将不具体(不确定)的类型指定为一个具体的类型 as
function get(num?: string) {
  let str: string = "";

  // 如果num有值的话, str = "hello"
  if (num) {
    str = "hello";
  } else {
    // as 写法就叫做类型断言
    str = num as string;
  }
}

get();
