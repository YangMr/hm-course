
// 需求: 渲染图书列表
// 前提: 1. 获取到图书的数据 2. 才能进行渲染
const tbody = document.querySelector("tbody")
const creator = "YangLing1"
const modal = new bootstrap.Modal(document.querySelector(".modal"))
const name = document.querySelector("#bookName")
const author = document.querySelector("#author")
const publisher = document.querySelector("#publisher")
const cancel = document.querySelector(".cancel")
const btnClose = document.querySelector(".btn-close")
const topTitle = document.querySelector(".top-title")
const add = document.querySelector(".add")
const open = document.querySelector(".open")
let status = true
let id = ""

// 获取图书列表
function getBookList(){
    // 1. 获取到图书的数据
    axios({
        url : "https://hmajax.itheima.net/api/books",
        method : "GET",
        params : {
            creator
        }
    }).then(res => {

        const {data} = res.data

        console.log(data)

        // 2. 才能进行渲染
        const htmlStr = data.map((item,index) => {
            const {id, bookname , author, publisher} = item
            return `
                    <tr>
                        <td>${index + 1}</td>
                        <td>${bookname}</td>
                        <td>${author}</td>
                        <td>${publisher}</td>
                        <td>
                            <span data-index="${id}" class="del">删除</span>
                            <span data-index="${id}" class="edit">编辑</span>
                        </td>
                    </tr>
                `
        })

        tbody.innerHTML = htmlStr.join("")


    }).catch(err => {
        console.log(err)
    })

}
getBookList()


// 删除图书功能
function delBook(){
    // 监听点击的事件
    tbody.addEventListener("click", function (event){
        // 如果点击的是删除按钮
        if(event.target.className === "del"){
            // 获取当前删除按钮的id
            const id = event.target.dataset.index
            // 调用删除图书接口, 将id传递给后端
            axios({
                // url : "https://hmajax.itheima.net/api/books/" + id
                url : `https://hmajax.itheima.net/api/books/${id}`,
                method: "DELETE"
            }).then(res => {
                console.log(res)
                // alert(res.data.message)
                // 当删除成功之后, 重新获取图书列表
                getBookList()
            }).catch(err => {
                console.log(err)
            })
        }
    })
}
delBook()

// 打开弹窗
open.addEventListener("click", function (){
    modal.show()
    status = true
})

// 提交数据新增图书与修改图书数据功能
function addBook(){
    const bookForm = document.querySelector("#bookForm")

    add.addEventListener("click", function(){
        topTitle.innerHTML = "添加图书"
        const data = serialize(bookForm, {hash : true, empty : true})
        // const {bookbname, author, publisher} = serialize(bookForm, {hash : true, empty : true})
        console.log(data)
        add.innerHTML = "增加"
        if(status){
            axios({
                url : "https://hmajax.itheima.net/api/books",
                method : "POST",
                data : {
                    ...data,
                    creator
                }
            }).then(res => {


                // 1. 关闭弹窗
                modal.hide()

                // 2. 清空表格的数据
                resetModalForm()

                // 3. 重新更新列表
                getBookList()
            }).catch(err => {
                console.log(err)
            })
        }else{
            // 修改
            axios({
                url: `https://hmajax.itheima.net/api/books/${id}`,
                method : "PUT",
                data : {
                    ...data,
                    creator
                }
            }).then(res => {


                // 1. 关闭弹窗
                modal.hide()

                // 2. 清空表格的数据
                resetModalForm()

                // 3. 重新更新列表
                getBookList()
            }).catch(err => {
                console.log(err)
            })
        }


    })
}
addBook()

// 关闭弹窗
cancel.addEventListener("click", function (){
    modal.hide()
    // 2. 清空表格的数据
    resetModalForm()
})

btnClose.addEventListener("click", function(){
    modal.hide()
    // 2. 清空表格的数据
    resetModalForm()
})

// 重置表单
function resetModalForm(){
    name.value = ""
    author.value = ""
    publisher.value =""
}

// 打开编辑弹窗 - 进行数据回显
function editBook(){
    tbody.addEventListener("click", function(event){
        status = false
        if(event.target.className === "edit"){
            topTitle.innerHTML = "编辑图书"
            add.innerHTML = "修改"
            modal.show()
            id = event.target.dataset.index

            axios({
                url : `https://hmajax.itheima.net/api/books/${id}`,
                method : "GET"
            }).then(res => {
                console.log(res)
                const {author : authorData,bookname,publisher:publisherData} = res.data.data
                name.value = bookname
                author.value = authorData
                publisher.value = publisherData
            }).catch(err => {
                console.log(err)
            })
        }
    })
}
editBook()