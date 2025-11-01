#Requires -PSEdition Core

param(
    [array]$PathList = @("schema-list.md", "schema-list.zh-CN.md")
)

$schemas = Get-ChildItem "$PSScriptRoot\..\schemas" -Recurse -Filter *.json | Sort-Object { $_.BaseName }

function Get-StaticContent($path) {
    $content = Get-Content -Path $path -Encoding UTF8

    $match = $content | Select-String -Pattern "<!-- prettier-ignore-start -->"

    if ($match) {
        $matchLineNumber = ([array]$match.LineNumber)[0]
        $result = $content | Select-Object -First $matchLineNumber
        $result
    }
}


foreach ($path in $PathList) {
    $content = @("|Schema ($($schemas.Length))|URL|Description|", "|-|:-:|-|")

    $isCN = $path -like "*cn*.md"

    foreach ($mp in $schemas) {

        $json = Get-Content $mp.FullName -Raw -Encoding UTF8 | ConvertFrom-Json -AsHashtable
        $info = @()

        $schema = $mp.Name

        $info += "[$schema](./schemas/$schema)"

        $info += "[https://schema.abgox.com/$schema](https://schema.abgox.com/$schema)"


        ## description
        if ($json.description) {
            $info += $json.description
        }
        else {
            $info += $json.title
        }

        $content += "|" + ($info -join "|") + "|"
    }

    (Get-StaticContent $path) + $content + "`n<!-- prettier-ignore-end -->" | Out-File $path -Encoding UTF8 -Force
}
