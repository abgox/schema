## 介绍

- 给 Scoop 应用清单 (App-Manifests) 的编写提供友好的提示和校验

---

- [什么是 Scoop ？](https://github.com/ScoopInstaller/Scoop)
- [什么是 Scoop 中的应用清单(App-Manifests) ？](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifests)

## 使用

- 在编写应用清单时，添加以下属性就可以获得来自编辑器的提示和校验

  > 推荐使用 [vscode](https://code.visualstudio.com)

  - 方式一: 在 json 中直接添加此属性
    ```json
    "$schema": "https://abgox.github.io/schema/Scoop/zh-CN/manifest-min.json",
    ```
  - 方式二: 可以在 vscode 配置文件(settings.json)中添加, 这会作用于所有匹配的 json 文件

    - 如果不是使用 vscode, 你需要查询所使用的编辑器官方的配置方法

    ```json
    "json.schemas": [
            {
                "url": "https://abgox.github.io/schema/Scoop/zh-CN/manifest-min.json",
                "fileMatch": [
                    "bucket/**/*.json",
                    "deprecated/**/*.json"
                ]
            }
        ]
    ```

  - 推荐使用方式二, 方式二不会对原始的 json 文件造成侵入性

- Url (移除文件名中的 `-min`，就是未压缩文件)

  - `https://abgox.github.io/schema/Scoop/zh-CN/manifest-min.json`

  - `https://abgox.github.io/schema/Scoop/en-US/manifest-min.json`

## Demo

![Demo](https://abgop.netlify.app/ScoopType/demo.gif)
