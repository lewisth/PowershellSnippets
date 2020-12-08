Param (
    [Parameter(Mandatory=$true)]
    [string] $filePath,
    [Parameter(Mandatory=$true)]
    [string] $targetPattern,
    [Parameter(Mandatory=$true)]
    [string] $replacePattern
)

$data = (Get-Content -path $filePath -Raw)
$data = $data.Replace($targetPattern, $replacePattern)
$data | Out-File -FilePath $filePath -Force