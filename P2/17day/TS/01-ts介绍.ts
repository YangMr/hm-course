// let age = 10
// age = 789
//
//
// // ts编译阶段
//
// function result(){
//     return age + 10
// }
//
// console.log(result())


type ItemType = {
    id : number
    name : string
    age : number
    love: string
}

const list:ItemType[] = [
    {
        id : 1,
        name : "张三1",
        age : 20,
        love : "唱歌1"
    },
    {
        id : 2,
        name : "张三2",
        age : 20,
        love : "唱歌2"
    },
    {
        id : 3,
        name : "张三3",
        age : 20,
        love : "唱歌3"
    },
    {
        id : 4,
        name : "张三4",
        age : 20,
        love : "唱歌4"
    },
    {
        id : 5,
        name : "张三5",
        age : 20,
        love : "唱歌5"
    }
]


const newList = list.map((item:ItemType) => {
    return {
        id : item.id + 1,
        name : item.name + 1,
        age : item.age + 1,
        love : item.love + 1

    }
})

console.log(newList)
