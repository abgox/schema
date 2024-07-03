## Schema

### 如何使用

1. 直接在 json 文件中添加 `$schema` 属性(不推荐)

```json
"$schema": "https://abgox.github.io/schema/prettier/zh-CN/.prettierrc-min.json",
```

2. vscode `settings.json`

```json
"json.schemas": [
        {
            "url": "https://abgox.github.io/schema/prettier/zh-CN/.prettierrc-min.json",
            "fileMatch": [
                ".prettierrc.json"
            ]
        }
    ]
```

3. WebStorm
   - 自行在设置中添加
   - 步骤：`设置` => `语言与框架` => `架构和 DTD` => `JSON 架构映射`

### List

- 在文件末尾添加 `-min` 则获取压缩后的 JSON Schema，以 `.prettierrc.json` 为例

  - 未压缩: https://abgox.github.io/schema/prettier/zh-CN/.prettierrc.json
  - 已压缩: https://abgox.github.io/schema/prettier/zh-CN/.prettierrc-min.json

- <img src="https://img.shields.io/badge/-Need%20Update-red" />

  - 表示仓库中的 Schema 和 `Source` 存在差异，需要更新

|Schema|Source|Tag|
|:-:|:-:|:-:|
