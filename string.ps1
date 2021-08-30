$cow = "hello world"

Write-Host $cow.ToUpper()
write-host $cow.Contains("lo")
Get-ChildItem | where-object{$_.name.contains("ps1")}
$myDir = Get-ChildItem | where-object{$_.name.contains("ps1")}
$myDir

$cow = $cow.Replace("hello","what the")

$cow

Get-ChildItem | where-object{$_.name.contains("test")}
Get-ChildItem | Where-Object{$_.name.contains("test-01")} | ForEach-Object{Rename-Item $_ -NewName $_.name.Replace("01","v01")}

Write-Host $cow.Substring(3)
Write-Host $cow.Substring(3,6)