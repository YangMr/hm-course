
const a = 1
// 命名导出
export const b = 3

function list(){}

// 命名导出
export function fun() {
    
}

// 默认导出
export default {
    a,
    list
}





// 什么情况下使用命名导出? 什么情况下使用默认导出?
// 按需加载  命名导出
// 全部加载  默认导出