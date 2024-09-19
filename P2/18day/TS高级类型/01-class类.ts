// 在ts中如何将class作为类型注解

class UserInfoType {
  name: string;
  nickName: string;
  age: number;
  avatar: string;
  province: string;
  city: string;
  address: string;
}

const userInfo: UserInfoType = {
  name: "张三",
  nickName: "zs",
  age: 20,
  avatar: "https://www.gravatar.com/avatar",
  province: "北京",
  city: "北京市",
  address: "北京海淀区",
};

// class Person {}

// const p = new Person();

export {};
