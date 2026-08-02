<p align="center">
    <h1 align="center">✨<a href="https://schema.abgox.com">schema</a>✨</h1>
</p>

<p align="center">
    <a href="README.md">English</a> |
    <a href="https://github.com/abgox/schema">GitHub</a> |
    <a href="https://gitee.com/abgox/schema">Gitee</a>
</p>

<p align="center">
    <a href="https://github.com/abgox/schema/blob/main/LICENSE">
        <img src="https://img.shields.io/github/license/abgox/schema" alt="license" />
    </a>
    <a href="https://schema.abgox.com/schemas">
        <img src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fschema.abgox.com%2Fschemas.json&query=%24.count&label=schemas" alt="schemas" />
    </a>
    <a href="https://github.com/abgox/schema">
        <img src="https://img.shields.io/github/created-at/abgox/schema" alt="created" />
    </a>
</p>

---

<p align="center">
  <strong>喜欢这个项目？请给它 Star ⭐️ 或 <a href="https://me.abgox.com/donate">赞赏 💰</a></strong>
</p>

## 介绍

一些 JSON Schema，提供更好的 json 提示和校验，同时支持多语言。

## 如何使用

> [!TIP]
>
> 以 [scoop-manifest.zh-CN.json](./schemas/scoop-manifest.zh-CN.json) 为例

- 在 json 文件中定义

  ```json
  "$schema": "https://schema.abgox.com/scoop-manifest.zh-CN.json",
  ```

- 在 vscode 的 [settings.json](https://code.visualstudio.com/docs/configure/settings) 中定义
  - 安装 [json-schema-plus](https://json-schema-plus.abgox.com) 扩展，它为 JSON Schema 提供了多语言的动态架构匹配
  - 配置 `json-schema-plus.schemas`

    ```json
    "json-schema-plus.schemas": [
      {
        "fileMatch": [
          "bucket/**/*.json"
        ],
        "url": "https://schema.abgox.com/scoop-manifest.en-US.json",
        "urls": [
          {
            "language": "zh",
            "url": "https://schema.abgox.com/scoop-manifest.zh-CN.json"
          },
        ]
      }
    ]
    ```

    <details>

    <summary>使用内置的 json.schemas 配置</summary>

    > [settings.json](https://code.visualstudio.com/docs/configure/settings) 中定义的 `json.schemas` 优先级低于扩展提供的 schema，参考 [issue](https://github.com/microsoft/vscode/issues/219855)

    ```json
    "json.schemas": [
      {
        "fileMatch": [
          "bucket/**/*.json"
        ],
        "url": "https://schema.abgox.com/scoop-manifest.zh-CN.json"
      }
    ]
    ```

    </details>

- JetBrains IDE: `设置` => `语言与框架` => `架构和 DTD` => `JSON 架构映射`

## License

[MIT](./LICENSE) © [abgox](https://me.abgox.com)
