<p align="center">
    <h1 align="center">✨schema ✨</h1>
</p>
<p align="center">
    <a href="readme.md">English</a> |
    <a href="readme.zh-CN.md">简体中文</a> |
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

## 介绍

一些 json schema，提供更好的 json 提示和校验

## 如何使用

- 直接在 json 文件中添加 `$schema` 属性(不推荐)

  ```json
  "$schema": "https://schema.abgox.com/scoop-manifest.zh-CN.json",
  ```

- vscode `settings.json`

  > [schema 未生效(vscode issue)](https://github.com/microsoft/vscode/issues/219855)

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

- JetBrains IDE: `设置` => `语言与框架` => `架构和 DTD` => `JSON 架构映射`
