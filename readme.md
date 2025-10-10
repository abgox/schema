<p align="center">
    <h1 align="center">✨schema ✨</h1>
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

## Introduce

Some json schemas with better json prompts and validation.

## How to use

- Add the `$schema` attribute to the json file. (Not recommended)

  ```json
  "$schema": "https://schema.abgox.com/scoop-manifest.zh-CN.json",
  ```

- vscode `settings.json`

  > [Invalid schema (vscode issue)](https://github.com/microsoft/vscode/issues/219855)

  ```json
    "json.schemas": [
      {
        "url": "https://schema.abgox.com/scoop-manifest.zh-CN.json",
        "fileMatch": [
            "bucket/**/*.json"
        ]
      }
    ]
  ```

- JetBrains IDE: `Settings` => `Languages & Frameworks` => `Schemas and DTDS`=>`JSON Schema Mappings`
