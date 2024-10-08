function getList {
    $list = @()
    $excludeDir = @(".github", "script", "node_modules", ".git", ".vscode", ".github")
    Get-ChildItem "$PSScriptRoot/../" -Directory | ForEach-Object {
        if ($_.BaseName -notin $excludeDir) {
            foreach ($_ in Get-ChildItem $_.FullName -File -Recurse -Filter "*.json") {
                if ($_.BaseName -notlike "*-min") {
                    $list += $_
                }
            }
        }
    }
    return $list
}

function generateInfo($language) {
    $resulst = @()
    $list = getList
    foreach ($_ in $list) {
        $info = @()
        $dir = $_.Directory.Parent.BaseName
        $lang = $_.Directory.BaseName

        # generate compressed json schema
        $json = Get-Content $_.FullName -Raw | ConvertFrom-Json -AsHashtable -Depth 100
        $compressedJson = $json | ConvertTo-Json -Compress -Depth 100
        $compressedJson | Out-File "$($_.Directory.FullName)\$($_.BaseName)-min.json" -Encoding utf8 -Force

        # Schema
        if ($language -eq "zh-CN") {
            $info += "``$($lang)``<br>[$dir/$($_.Name)](https://abgox.github.io/schema/$($dir)/$($lang)/$($_.Name) '点击获取未压缩版本')<br>[$dir/$($_.BaseName)-min.json](https://abgox.github.io/schema/$($dir)/$($lang)/$($_.BaseName)-min.json '点击获取压缩版本')"
        }
        else {
            $info += "``$($lang)``<br>[$($dir)/$($_.Name)](https://abgox.github.io/schema/$($dir)/$($lang)/$($_.Name) 'Click to get uncompressed version')<br>[$dir/$($_.BaseName)-min.json](https://abgox.github.io/schema/$($dir)/$($lang)/$($_.BaseName)-min.json 'Click to get compressed version')"
        }

        # Source
        if ($lang -eq "en-US") {
            $schemaList = Get-Content "$PSScriptRoot/../list.jsonc" | ConvertFrom-Json -AsHashtable
            $obj = $schemaList."$($dir)/$($_.Name)"
            $id = if ($obj) { $obj.from }else { "" }
            if ($id) {
                $info += "[$($obj.from)]($($id))"
            }
            else {
                $info += ""
            }
        }
        $resulst += "|" + ($info -join "|") + "|"
    }
    return ($resulst | Sort-Object { $_ -replace "(en-US)|(zh-CN)", "" })
}


function handle($path, $language) {
    $content = generateInfo $language
    function getStaticContent($path) {
        $content = Get-Content -Path $path -Encoding UTF8

        $match = $content | Select-String -Pattern "\|:-:\|:-:\|"

        if ($match) {
            $matchLineNumber = ([array]$match.LineNumber)[0]
            $result = $content | Select-Object -First $matchLineNumber
            $result
        }
    }
    (getStaticContent $path) + $content + "<!-- prettier-ignore-end -->" | Out-File $path -Encoding UTF8 -Force
}
handle "$PSScriptRoot\..\README-CN.md" "zh-CN"
handle "$PSScriptRoot\..\README.md" "en-US"
