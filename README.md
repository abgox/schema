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
   - Add it yourself in Settings
   - `Settings` => `Languages & Frameworks` => `Schemas and DTDS`=>`JSON Schema Mappings`

## List

- Add the `-min` from the file name, which means the compressed file. (e.g. `.prettierrc.json`)

  - Uncompressed version: https://abgox.github.io/schema/prettier/zh-CN/.prettierrc.json
  - Compressed version: https://abgox.github.io/schema/prettier/zh-CN/.prettierrc-min.json

|Schema|Source|
|:-:|:-:|
|[biomejs/biome.json](https://abgox.github.io/schema/biomejs/en-US/biome.json) `en-US`|[https://biomejs.dev/schemas/1.8.3/schema.json](https://biomejs.dev/schemas/1.8.3/schema.json)|
|[biomejs/biome.json](https://abgox.github.io/schema/biomejs/zh-CN/biome.json) `zh-CN`|[https://biomejs.dev/schemas/1.8.3/schema.json](https://biomejs.dev/schemas/1.8.3/schema.json)|
|[eslint/.eslintrc.json](https://abgox.github.io/schema/eslint/en-US/.eslintrc.json) `en-US`|[https://json.schemastore.org/eslintrc.json](https://json.schemastore.org/eslintrc.json)|
|[eslint/.eslintrc.json](https://abgox.github.io/schema/eslint/zh-CN/.eslintrc.json) `zh-CN`|[https://json.schemastore.org/eslintrc.json](https://json.schemastore.org/eslintrc.json)|
|[prettier/.prettierrc.json](https://abgox.github.io/schema/prettier/en-US/.prettierrc.json) `en-US`|[https://json.schemastore.org/prettierrc.json](https://json.schemastore.org/prettierrc.json)|
|[prettier/.prettierrc.json](https://abgox.github.io/schema/prettier/zh-CN/.prettierrc.json) `zh-CN`|[https://json.schemastore.org/prettierrc.json](https://json.schemastore.org/prettierrc.json)|
|[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/en-US/completion.json) `en-US`||
|[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completion.json) `zh-CN`||
|[PSCompletions/completions.json](https://abgox.github.io/schema/PSCompletions/en-US/completions.json) `en-US`||
|[PSCompletions/completions.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completions.json) `zh-CN`||
|[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/en-US/config.json) `en-US`||
|[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/zh-CN/config.json) `zh-CN`||
|[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/en-US/manifest.json) `en-US`||
|[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/zh-CN/manifest.json) `zh-CN`||
|[typescript/tsconfig.json](https://abgox.github.io/schema/typescript/en-US/tsconfig.json) `en-US`|[https://json.schemastore.org/tsconfig.json](https://json.schemastore.org/tsconfig.json)|
|[typescript/tsconfig.json](https://abgox.github.io/schema/typescript/zh-CN/tsconfig.json) `zh-CN`|[https://json.schemastore.org/tsconfig.json](https://json.schemastore.org/tsconfig.json)|
