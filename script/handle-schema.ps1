function getList {
    $list = @()
    $excludeDir = @(".github", "script")
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

function generateInfo() {
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
        $info += "[$($dir)/$($_.Name)](https://abgox.github.io/schema/$($dir)/$($lang)/$($_.Name)) ``$($lang)``"

        # Source
        $source = ""
        if ($json.'$id') {
            $source = "[$($_.Name)]($($json.'$id'))"
        }
        $info += $source

        # Tag
        $updateTip = ""
        if ($json.'$id') {
            $wc = New-Object System.Net.WebClient
            $oldPath = "$(New-Guid)-old.json"
            $newPath = "$(New-Guid)-new.json"
            $wc.DownloadFile($json.'$id', $oldPath)
            try {
                $wc.DownloadFile("https://abgox.github.io/schema/$($dir)/$($lang)/$($_.Name)", $newPath)
            }
            catch {
                "{}" | Out-File $newPath -Encoding UTF8 -Force
            }
            $old = Get-Content $oldPath
            $new = Get-Content $newPath
            if (Compare-Object $old $new -PassThru) {
                $updateTip = '<img src="https://img.shields.io/badge/-Need%20Update-red" />'
            }
            Remove-Item $oldPath
            Remove-Item $newPath
        }
        $info += $updateTip
        $resulst += "|" + ($info -join "|") + "|"
    }
    return ($resulst | Sort-Object)
}

$content = generateInfo

function handle($path) {
    function getStaticContent($path) {
        $content = Get-Content -Path $path -Encoding UTF8

        $match = $content | Select-String -Pattern "\|:-:\|:-:\|:-:\|"

        if ($match) {
            $matchLineNumber = ([array]$match.LineNumber)[0]
            $result = $content | Select-Object -First $matchLineNumber
            $result
        }
    }
    (getStaticContent $path) + $content | Out-File $path -Encoding UTF8 -Force
}
handle "$PSScriptRoot\..\README.md"
handle "$PSScriptRoot\..\README-CN.md"