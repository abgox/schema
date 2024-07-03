## Schema

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