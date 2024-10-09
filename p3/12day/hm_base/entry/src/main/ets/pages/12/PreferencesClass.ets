// 封装创建仓库, 设置数据, 读取数据的方法
import { preferences } from '@kit.ArkData'

// 引入其他页面要用我当前封装的方法,所以需要使用export进行导出
export class PreferencesClass {
  static defaultStore: string = "DEFAULT_STORE"
  static tokenKEY: string = "token"

  // 1. 创建仓库(有了就获取，没有就新建)
  static getStore(content: Context, storeName: string) {
    const store = preferences.getPreferencesSync(content, {
      // 仓库名称
      name: storeName || PreferencesClass.defaultStore
    })
    return store
  }


  // 2. 给仓库中添加数据
  static async setToken(content: Context, storeName: string, value: string) {
    // 获取创建的仓库
    const store = PreferencesClass.getStore(content, storeName)
    // 给仓库里面添加数据
    await store.put(PreferencesClass.tokenKEY, value)
    // 将数据写入到磁盘
    await store.flush()
  }

  // 3. 获取仓库中的数据
  static getToken(content: Context, storeName: string, tokenKey?: string) {
    // 获取创建的仓库
    const store = PreferencesClass.getStore(content, storeName)

    // 获取需要的数据
    const token = store.getSync(tokenKey || PreferencesClass.tokenKEY, "")

    // 返回给getToken方法
    return token
  }
}

