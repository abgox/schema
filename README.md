<p align="center">
    <h1 align="center">✨schema ✨</h1>
</p>
<p align="center">
    <a href="README.md">English</a> |
    <a href="README-CN.md">简体中文</a> |
    <a href="https://github.com/abgox/schema">Github</a> |
    <a href="https://gitee.com/abgox/schema">Gitee</a>
</p>

## How to use

1. Add the `$schema` attribute to the json file. (Not recommended)

```json
"$schema": "https://abgox.github.io/schema/biomejs/zh-CN/biome-min.json",
```

2. vscode `settings.json`

- [Invalid schema (vscode issue)](https://github.com/microsoft/vscode/issues/219855)

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
   - Add it yourself in Settings
   - `Settings` => `Languages & Frameworks` => `Schemas and DTDS`=>`JSON Schema Mappings`

## List

- Add the `-min` from the file name, which means the compressed file. (e.g. `biome.json`)

  - Uncompressed version: https://abgox.github.io/schema/biomejs/zh-CN/biome.json
  - Compressed version: https://abgox.github.io/schema/biomejs/zh-CN/biome-min.json

<!-- prettier-ignore-start -->
|Schema|Source|
|:-:|:-:|
|`zh-CN`<br>[biomejs/biome.json](https://abgox.github.io/schema/biomejs/zh-CN/biome.json 'Click to get uncompressed version')<br>[biomejs/biome-min.json](https://abgox.github.io/schema/biomejs/zh-CN/biome-min.json 'Click to get compressed version')|
|`en-US`<br>[biomejs/biome.json](https://abgox.github.io/schema/biomejs/en-US/biome.json 'Click to get uncompressed version')<br>[biomejs/biome-min.json](https://abgox.github.io/schema/biomejs/en-US/biome-min.json 'Click to get compressed version')|[https://biomejs.dev/schemas/1.8.3/schema.json](https://biomejs.dev/schemas/1.8.3/schema.json)|
|`zh-CN`<br>[eslint/.eslintrc.json](https://abgox.github.io/schema/eslint/zh-CN/.eslintrc.json 'Click to get uncompressed version')<br>[eslint/.eslintrc-min.json](https://abgox.github.io/schema/eslint/zh-CN/.eslintrc-min.json 'Click to get compressed version')|
|`en-US`<br>[eslint/.eslintrc.json](https://abgox.github.io/schema/eslint/en-US/.eslintrc.json 'Click to get uncompressed version')<br>[eslint/.eslintrc-min.json](https://abgox.github.io/schema/eslint/en-US/.eslintrc-min.json 'Click to get compressed version')|[https://json.schemastore.org/eslintrc.json](https://json.schemastore.org/eslintrc.json)|
|`zh-CN`<br>[prettier/.prettierrc.json](https://abgox.github.io/schema/prettier/zh-CN/.prettierrc.json 'Click to get uncompressed version')<br>[prettier/.prettierrc-min.json](https://abgox.github.io/schema/prettier/zh-CN/.prettierrc-min.json 'Click to get compressed version')|
|`en-US`<br>[prettier/.prettierrc.json](https://abgox.github.io/schema/prettier/en-US/.prettierrc.json 'Click to get uncompressed version')<br>[prettier/.prettierrc-min.json](https://abgox.github.io/schema/prettier/en-US/.prettierrc-min.json 'Click to get compressed version')|[https://json.schemastore.org/prettierrc.json](https://json.schemastore.org/prettierrc.json)|
|`zh-CN`<br>[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completion.json 'Click to get uncompressed version')<br>[PSCompletions/completion-min.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completion-min.json 'Click to get compressed version')|
|`en-US`<br>[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/en-US/completion.json 'Click to get uncompressed version')<br>[PSCompletions/completion-min.json](https://abgox.github.io/schema/PSCompletions/en-US/completion-min.json 'Click to get compressed version')||
|`zh-CN`<br>[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/zh-CN/config.json 'Click to get uncompressed version')<br>[PSCompletions/config-min.json](https://abgox.github.io/schema/PSCompletions/zh-CN/config-min.json 'Click to get compressed version')|
|`en-US`<br>[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/en-US/config.json 'Click to get uncompressed version')<br>[PSCompletions/config-min.json](https://abgox.github.io/schema/PSCompletions/en-US/config-min.json 'Click to get compressed version')||
|`zh-CN`<br>[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/zh-CN/manifest.json 'Click to get uncompressed version')<br>[Scoop/manifest-min.json](https://abgox.github.io/schema/Scoop/zh-CN/manifest-min.json 'Click to get compressed version')|
|`en-US`<br>[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/en-US/manifest.json 'Click to get uncompressed version')<br>[Scoop/manifest-min.json](https://abgox.github.io/schema/Scoop/en-US/manifest-min.json 'Click to get compressed version')||
|`zh-CN`<br>[typescript/tsconfig.json](https://abgox.github.io/schema/typescript/zh-CN/tsconfig.json 'Click to get uncompressed version')<br>[typescript/tsconfig-min.json](https://abgox.github.io/schema/typescript/zh-CN/tsconfig-min.json 'Click to get compressed version')|
|`en-US`<br>[typescript/tsconfig.json](https://abgox.github.io/schema/typescript/en-US/tsconfig.json 'Click to get uncompressed version')<br>[typescript/tsconfig-min.json](https://abgox.github.io/schema/typescript/en-US/tsconfig-min.json 'Click to get compressed version')|[https://json.schemastore.org/tsconfig.json](https://json.schemastore.org/tsconfig.json)|
<!-- prettier-ignore-end -->
