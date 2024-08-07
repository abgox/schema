<p align="center">
    <h1 align="center">✨schema ✨</h1>
</p>
<p align="center">
    <a href="README.md">English</a> |
    <a href="README-CN.md">简体中文</a> |
    <a href="https://github.com/abgox/schema">Github</a> |
    <a href="https://gitee.com/abgox/schema">Gitee</a>
</p>

## 如何使用

1. 直接在 json 文件中添加 `$schema` 属性(不推荐)

```json
"$schema": "https://abgox.github.io/schema/biomejs/zh-CN/biome-min.json",
```

2. vscode `settings.json`

- [schema 未生效(vscode issue)](https://github.com/microsoft/vscode/issues/219855)

```json
  "json.schemas": [
    {
      "url": "https://abgox.github.io/schema/biomejs/zh-CN/biome-min.json",
      "fileMatch": [
        "biome.json"
      ]
    }
  ]
```

3. WebStorm
   - 自行在设置中添加
   - 步骤：`设置` => `语言与框架` => `架构和 DTD` => `JSON 架构映射`

## List

- 在文件末尾添加 `-min` 则获取压缩后的 JSON Schema，以 `biome.json` 为例

  - 未压缩版本: https://abgox.github.io/schema/biomejs/zh-CN/biome.json
  - 已压缩版本: https://abgox.github.io/schema/biomejs/zh-CN/biome-min.json

<!-- prettier-ignore-start -->
|Schema|Source|
|:-:|:-:|
|[biomejs/biome.json](https://abgox.github.io/schema/biomejs/en-US/biome.json '点击获取未压缩版本') `en-US`<br><a href="https://abgox.github.io/schema/biomejs/en-US/biome-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|[https://biomejs.dev/schemas/1.8.3/schema.json](https://biomejs.dev/schemas/1.8.3/schema.json)|
|[biomejs/biome.json](https://abgox.github.io/schema/biomejs/zh-CN/biome.json '点击获取未压缩版本') `zh-CN`<br><a href="https://abgox.github.io/schema/biomejs/zh-CN/biome-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|
|[eslint/.eslintrc.json](https://abgox.github.io/schema/eslint/en-US/.eslintrc.json '点击获取未压缩版本') `en-US`<br><a href="https://abgox.github.io/schema/eslint/en-US/.eslintrc-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|[https://json.schemastore.org/eslintrc.json](https://json.schemastore.org/eslintrc.json)|
|[eslint/.eslintrc.json](https://abgox.github.io/schema/eslint/zh-CN/.eslintrc.json '点击获取未压缩版本') `zh-CN`<br><a href="https://abgox.github.io/schema/eslint/zh-CN/.eslintrc-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|
|[prettier/.prettierrc.json](https://abgox.github.io/schema/prettier/en-US/.prettierrc.json '点击获取未压缩版本') `en-US`<br><a href="https://abgox.github.io/schema/prettier/en-US/.prettierrc-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|[https://json.schemastore.org/prettierrc.json](https://json.schemastore.org/prettierrc.json)|
|[prettier/.prettierrc.json](https://abgox.github.io/schema/prettier/zh-CN/.prettierrc.json '点击获取未压缩版本') `zh-CN`<br><a href="https://abgox.github.io/schema/prettier/zh-CN/.prettierrc-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|
|[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/en-US/completion.json '点击获取未压缩版本') `en-US`<br><a href="https://abgox.github.io/schema/PSCompletions/en-US/completion-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />||
|[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completion.json '点击获取未压缩版本') `zh-CN`<br><a href="https://abgox.github.io/schema/PSCompletions/zh-CN/completion-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|
|[PSCompletions/completions.json](https://abgox.github.io/schema/PSCompletions/en-US/completions.json '点击获取未压缩版本') `en-US`<br><a href="https://abgox.github.io/schema/PSCompletions/en-US/completions-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />||
|[PSCompletions/completions.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completions.json '点击获取未压缩版本') `zh-CN`<br><a href="https://abgox.github.io/schema/PSCompletions/zh-CN/completions-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|
|[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/en-US/config.json '点击获取未压缩版本') `en-US`<br><a href="https://abgox.github.io/schema/PSCompletions/en-US/config-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />||
|[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/zh-CN/config.json '点击获取未压缩版本') `zh-CN`<br><a href="https://abgox.github.io/schema/PSCompletions/zh-CN/config-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|
|[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/en-US/manifest.json '点击获取未压缩版本') `en-US`<br><a href="https://abgox.github.io/schema/Scoop/en-US/manifest-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />||
|[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/zh-CN/manifest.json '点击获取未压缩版本') `zh-CN`<br><a href="https://abgox.github.io/schema/Scoop/zh-CN/manifest-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|
|[typescript/tsconfig.json](https://abgox.github.io/schema/typescript/en-US/tsconfig.json '点击获取未压缩版本') `en-US`<br><a href="https://abgox.github.io/schema/typescript/en-US/tsconfig-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|[https://json.schemastore.org/tsconfig.json](https://json.schemastore.org/tsconfig.json) <img src="https://img.shields.io/badge/-update-yellow" />|
|[typescript/tsconfig.json](https://abgox.github.io/schema/typescript/zh-CN/tsconfig.json '点击获取未压缩版本') `zh-CN`<br><a href="https://abgox.github.io/schema/typescript/zh-CN/tsconfig-min.json" title="点击获取压缩版本"><img src="https://img.shields.io/badge/-点我获取压缩版本-blue" />|
<!-- prettier-ignore-end -->
