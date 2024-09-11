
import axios from "axios"

// nodeJS
// const obj = require("./common")

// js
// import obj from "./common"



// import {baseURL} from "./common"

import {baseURL , a} from "./common.js"

console.log(baseURL)
console.log(a)

// 获取省的数据
axios({
    url : baseURL + "/province",
    method : "GET",
}).then(res => {
    console.log(res.data);
}).catch(err => {
    console.log(err);
})


// 获取市的数据

axios({
    url : baseURL+ "/city",
    method : "GET",
    params : {
        pname : "陕西省"
    }
}).then(res => {
    console.log(res.data);
}).catch(err => {
    console.log(err);
})