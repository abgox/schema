$schemaList = Get-Content "$PSScriptRoot/../list.jsonc" | ConvertFrom-Json -AsHashtable
$wc = New-Object System.Net.WebClient
$diffList = @()
$eqList = @()
foreach ($_ in $schemaList.Keys) {
    $oldPath = "$(New-Guid)-old.json"
    $newPath = "$(New-Guid)-new.json"

    try {
        $wc.DownloadFile($schemaList.$_.from, $oldPath)
        $wc.DownloadFile($schemaList.$_.to, $newPath)
        $old = Get-Content $oldPath -Raw | ConvertFrom-Json | ConvertTo-Json -Depth 100 -Compress
        $new = Get-Content $newPath -Raw | ConvertFrom-Json | ConvertTo-Json -Depth 100 -Compress
        if ($new -eq $old) {
            $eqList += $schemaList.$_.from
        }
        else {
            $diffList += $schemaList.$_.from
        }
    }
    catch {}
    Remove-Item $oldPath -Force -ErrorAction SilentlyContinue
    Remove-Item $newPath -Force -ErrorAction SilentlyContinue
}

$imgTag = "<img src=`"https://img.shields.io/badge/update-yellow`" />"
foreach ($url in $diffList) {
    foreach ($_ in @("README.md", "README-CN.md")) {
        $path = "$PSScriptRoot/../$_"
        $content = (Get-Content $path -Raw).TrimEnd()
        $content -replace "\($url\)(?! $imgTag)", "($url) $imgTag" | Out-File $path -Force
    }
}
foreach ($url in $eqList) {
    foreach ($_ in @("README.md", "README-CN.md")) {
        $path = "$PSScriptRoot/../$_"
        $content = (Get-Content $path -Raw).TrimEnd()
        $content -replace "\($url\) $imgTag", "($url)" | Out-File $path -Force
    }
}
