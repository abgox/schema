<p align="center">
    <h1 align="center">✨schema ✨</h1>
</p>
<p align="center">
    <a href="README.md">English</a> |
    <a href="README-CN.md">简体中文</a> |
    <a href="https://github.com/abgox/schema">Github</a> |
    <a href="https://gitee.com/abgox/schema">Gitee</a>
</p>


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
|[prettier/.prettierrc.json](https://abgox.github.io/schema/prettier/en-US/.prettierrc.json) `en-US`|[.prettierrc.json](https://json.schemastore.org/prettierrc.json)||
|[prettier/.prettierrc.json](https://abgox.github.io/schema/prettier/zh-CN/.prettierrc.json) `zh-CN`|||
|[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/en-US/completion.json) `en-US`|||
|[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completion.json) `zh-CN`|||
|[PSCompletions/completions.json](https://abgox.github.io/schema/PSCompletions/en-US/completions.json) `en-US`|||
|[PSCompletions/completions.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completions.json) `zh-CN`|||
|[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/en-US/config.json) `en-US`|||
|[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/zh-CN/config.json) `zh-CN`|||
|[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/en-US/manifest.json) `en-US`|||
|[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/zh-CN/manifest.json) `zh-CN`|||
