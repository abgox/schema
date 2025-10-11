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

<p align="center">
  <strong>喜欢这个项目？请给它 Star ⭐️ 或 <a href="https://abgox.com/donate">赞赏 💰</a></strong>
</p>

## 介绍

一些 json schema，提供更好的 json 提示和校验

## 如何使用

> [!Tip]
>
> 以 [scoop-manifest.zh-CN.json](./schemas/scoop-manifest.zh-CN.json) 为例

- 在 json 文件中定义

  ```json
  "$schema": "https://schema.abgox.com/scoop-manifest.zh-CN.json",
  ```

- 在 vscode 的 [settings.json](https://code.visualstudio.com/docs/configure/settings) 中定义

  > [settings.json](https://code.visualstudio.com/docs/configure/settings) 中定义的 schema 优先级低于扩展提供的 schema，参考 [issue](https://github.com/microsoft/vscode/issues/219855)

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
