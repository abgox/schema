<p align="center">
    <h1 align="center">✨<a href="https://schema.abgox.com">schema</a> ✨</h1>
</p>

<p align="center">
    <a href="readme.zh-CN.md">简体中文</a> |
    <a href="readme.md">English</a> |
    <a href="https://github.com/abgox/schema">Github</a> |
    <a href="https://gitee.com/abgox/schema">Gitee</a>
</p>

<p align="center">
    <a href="https://github.com/abgox/schema/blob/main/license">
        <img src="https://img.shields.io/github/license/abgox/schema" alt="license" />
    </a>
    <a href="https://github.com/abgox/schema">
        <img src="https://img.shields.io/github/languages/code-size/abgox/schema" alt="code size" />
    </a>
    <a href="https://github.com/abgox/schema">
        <img src="https://img.shields.io/github/repo-size/abgox/schema" alt="repo size" />
    </a>
    <a href="https://github.com/abgox/schema">
        <img src="https://img.shields.io/github/created-at/abgox/schema" alt="created" />
    </a>
</p>

---

<p align="center">
  <strong>Star ⭐️ or <a href="https://abgox.com/donate">Donate 💰</a> if you like it!</strong>
</p>

## Introduce

Some JSON Schema with better json prompts, validation, and multilingual support.

## How to use

> [!Tip]
>
> Take [scoop-manifest.en-US.json](./schemas/scoop-manifest.en-US.json) as an example.

- Define in the json file.

  ```json
  "$schema": "https://schema.abgox.com/scoop-manifest.en-US.json",
  ```

- Define in the [settings.json](https://code.visualstudio.com/docs/configure/settings) of vscode.

  - Install the [json-schema-plus](https://json-schema-plus.abgox.com) extension, it provides multilingual dynamic schema matching for JSON Schema.
  - Configure `json-schema-plus.schemas`.

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

    <summary>Use the built-in 'json.schemas' configuration</summary>

    > The `json.schemas` defined in [settings.json](https://code.visualstudio.com/docs/configure/settings) has lower priority than the schema provided by the extension, please refer to [the issue](https://github.com/microsoft/vscode/issues/219855).

    ```json
    "json.schemas": [
      {
        "fileMatch": [
          "bucket/**/*.json"
        ],
        "url": "https://schema.abgox.com/scoop-manifest.en-US.json"
      }
    ]
    ```

    </details>

- JetBrains IDE: `Settings` => `Languages & Frameworks` => `Schemas and DTDS`=>`JSON Schema Mappings`

## Schema List

> [!Tip]
>
> Check on the official website: https://schema.abgox.com/schema-list

- [English](./schema-list.md)
- [简体中文](./schema-list.zh-CN.md)
