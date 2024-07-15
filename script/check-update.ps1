$schemaList = Get-Content "$PSScriptRoot/../list.jsonc" | ConvertFrom-Json -AsHashtable
$wc = New-Object System.Net.WebClient
$diffList = @()
foreach ($_ in $schemaList.Keys) {
    $oldPath = "$(New-Guid)-old.json"
    $newPath = "$(New-Guid)-new.json"

    try {
        $wc.DownloadFile($schemaList.$_.from, $oldPath)
        $wc.DownloadFile($schemaList.$_.to, $newPath)
        $old = Get-Content $oldPath
        $new = Get-Content $newPath
        $isDiff = Compare-Object $old $new -PassThru
        if ($isDiff) {
            $diffList += $schemaList.$_.from
        }
        Remove-Item $oldPath, $newPath -Force
    }
    catch {}
}

if ($diffList) {
    foreach ($url in $diffList) {
        foreach ($_ in @("README.md", "README-CN.md")) {
            $path = "$PSScriptRoot/../$_"
            $content = Get-Content $path -Raw
            $content -replace "\($url\)", "($url) <img src=`"https://img.shields.io/badge/-update-yellow`" />" | Out-File $path -Force
        }
    }
}