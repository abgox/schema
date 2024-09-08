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
|`zh-CN`<br>[biomejs/biome.json](https://abgox.github.io/schema/biomejs/zh-CN/biome.json '点击获取未压缩版本')<br>[biomejs/biome-min.json](https://abgox.github.io/schema/biomejs/zh-CN/biome-min.json '点击获取压缩版本')|
|`en-US`<br>[biomejs/biome.json](https://abgox.github.io/schema/biomejs/en-US/biome.json '点击获取未压缩版本')<br>[biomejs/biome-min.json](https://abgox.github.io/schema/biomejs/en-US/biome-min.json '点击获取压缩版本')|[https://raw.githubusercontent.com/biomejs/biome/main/packages/%40biomejs/biome/configuration_schema.json](https://raw.githubusercontent.com/biomejs/biome/main/packages/%40biomejs/biome/configuration_schema.json) <img src="https://img.shields.io/badge/update-yellow" />|
|`zh-CN`<br>[eslint/eslintrc.json](https://abgox.github.io/schema/eslint/zh-CN/eslintrc.json '点击获取未压缩版本')<br>[eslint/eslintrc-min.json](https://abgox.github.io/schema/eslint/zh-CN/eslintrc-min.json '点击获取压缩版本')|
|`en-US`<br>[eslint/eslintrc.json](https://abgox.github.io/schema/eslint/en-US/eslintrc.json '点击获取未压缩版本')<br>[eslint/eslintrc-min.json](https://abgox.github.io/schema/eslint/en-US/eslintrc-min.json '点击获取压缩版本')|[https://json.schemastore.org/eslintrc.json](https://json.schemastore.org/eslintrc.json)|
|`zh-CN`<br>[prettier/prettierrc.json](https://abgox.github.io/schema/prettier/zh-CN/prettierrc.json '点击获取未压缩版本')<br>[prettier/prettierrc-min.json](https://abgox.github.io/schema/prettier/zh-CN/prettierrc-min.json '点击获取压缩版本')|
|`en-US`<br>[prettier/prettierrc.json](https://abgox.github.io/schema/prettier/en-US/prettierrc.json '点击获取未压缩版本')<br>[prettier/prettierrc-min.json](https://abgox.github.io/schema/prettier/en-US/prettierrc-min.json '点击获取压缩版本')|[https://json.schemastore.org/prettierrc.json](https://json.schemastore.org/prettierrc.json)|
|`zh-CN`<br>[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completion.json '点击获取未压缩版本')<br>[PSCompletions/completion-min.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completion-min.json '点击获取压缩版本')|
|`en-US`<br>[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/en-US/completion.json '点击获取未压缩版本')<br>[PSCompletions/completion-min.json](https://abgox.github.io/schema/PSCompletions/en-US/completion-min.json '点击获取压缩版本')||
|`zh-CN`<br>[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/zh-CN/config.json '点击获取未压缩版本')<br>[PSCompletions/config-min.json](https://abgox.github.io/schema/PSCompletions/zh-CN/config-min.json '点击获取压缩版本')|
|`en-US`<br>[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/en-US/config.json '点击获取未压缩版本')<br>[PSCompletions/config-min.json](https://abgox.github.io/schema/PSCompletions/en-US/config-min.json '点击获取压缩版本')||
|`zh-CN`<br>[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/zh-CN/manifest.json '点击获取未压缩版本')<br>[Scoop/manifest-min.json](https://abgox.github.io/schema/Scoop/zh-CN/manifest-min.json '点击获取压缩版本')|
|`en-US`<br>[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/en-US/manifest.json '点击获取未压缩版本')<br>[Scoop/manifest-min.json](https://abgox.github.io/schema/Scoop/en-US/manifest-min.json '点击获取压缩版本')||
|`zh-CN`<br>[typescript/tsconfig.json](https://abgox.github.io/schema/typescript/zh-CN/tsconfig.json '点击获取未压缩版本')<br>[typescript/tsconfig-min.json](https://abgox.github.io/schema/typescript/zh-CN/tsconfig-min.json '点击获取压缩版本')|
|`en-US`<br>[typescript/tsconfig.json](https://abgox.github.io/schema/typescript/en-US/tsconfig.json '点击获取未压缩版本')<br>[typescript/tsconfig-min.json](https://abgox.github.io/schema/typescript/en-US/tsconfig-min.json '点击获取压缩版本')|[https://json.schemastore.org/tsconfig.json](https://json.schemastore.org/tsconfig.json) <img src="https://img.shields.io/badge/update-yellow" />|
<!-- prettier-ignore-end -->
