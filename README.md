<p align="center">
    <h1 align="center">✨schema ✨</h1>
</p>
<p align="center">
    <a href="README.md">English</a> |
    <a href="README-CN.md">简体中文</a> |
    <a href="https://github.com/abgox/schema">Github</a> |
    <a href="https://gitee.com/abgox/schema">Gitee</a>
</p>

### How to use

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

### List

- Add the `-min` from the file name, which means the compressed file. (e.g. `.prettierrc.json`)

  - uncompressed: https://abgox.github.io/schema/prettier/zh-CN/.prettierrc.json
  - compressed: https://abgox.github.io/schema/prettier/zh-CN/.prettierrc-min.json

- <img src="https://img.shields.io/badge/-Need%20Update-red" />

  - It means that there is a difference between Schema and `Source` in the repository and need update.

|Schema|Source|Tag|
|:-:|:-:|:-:|
|[prettier/.prettierrc.json](https://abgox.github.io/schema/prettier/en-US/.prettierrc.json) `en-US`|[.prettierrc.json](https://json.schemastore.org/prettierrc.json)|<img src="https://img.shields.io/badge/-Need%20Update-red" />|
|[prettier/.prettierrc.json](https://abgox.github.io/schema/prettier/zh-CN/.prettierrc.json) `zh-CN`|||
|[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/en-US/completion.json) `en-US`|||
|[PSCompletions/completion.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completion.json) `zh-CN`|||
|[PSCompletions/completions.json](https://abgox.github.io/schema/PSCompletions/en-US/completions.json) `en-US`|||
|[PSCompletions/completions.json](https://abgox.github.io/schema/PSCompletions/zh-CN/completions.json) `zh-CN`|||
|[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/en-US/config.json) `en-US`|||
|[PSCompletions/config.json](https://abgox.github.io/schema/PSCompletions/zh-CN/config.json) `zh-CN`|||
|[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/en-US/manifest.json) `en-US`|||
|[Scoop/manifest.json](https://abgox.github.io/schema/Scoop/zh-CN/manifest.json) `zh-CN`|||
