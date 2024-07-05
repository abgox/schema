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
            $diffList += $schemaList.$_.to
        }
    }
    catch {}
}

if ($diffList) {
    throw "Some schema need to be updated: $($diffList)"
}