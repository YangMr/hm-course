import obj from "./common"

// 获取商品列表的数据
axios({
    url : obj.baseURL+ "/category/top",
    method : "GET",
}).then(res => {
    console.log(res);
}).catch(err => {
    console.log(err);
})


// 获取省市区
axios({
    url : obj.baseURL+ "/area",
    method : "GET",
    params : {
        pname : "陕西省",
        cname : "西安市"
    }
}).then(res => {
    console.log(res);
}).catch(err => {
    console.log(err);
})