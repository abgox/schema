<p align="center">
    <h1 align="center">✨<a href="https://schema.abgox.com">schema</a>✨</h1>
</p>

<p align="center">
    <a href="README.zh-CN.md">简体中文</a> |
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
  <strong>Star ⭐️ or <a href="https://me.abgox.com/donate">Donate 💰</a> if you like it!</strong>
</p>

## Introduce

Some JSON Schema with better json prompts, validation, and multilingual support.

## How to use

> [!TIP]
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

## License

[MIT](./LICENSE) © [abgox](https://me.abgox.com)
