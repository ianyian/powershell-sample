$cow = "hello world"
$cow
Write-Host "this is variable here " $cow "that is cool"
Write-Host "this is variable here $cow that is cool"
Write-Host 'this is variable $cow here ' $cow "that is cool"

#Fancy tip


$pig = Get-ChildItem -Attributes !Directory
Foreach ($thing in $pig)
{
    Write-Host "the file name is :" $thing.Name
}

$math= 5+5

for($i=1;$i -lt 10;$i++) # -lt is LessThen
{
    write-host "Math is: $math"
    write-host "I is     $i" 
    $math = $math + $i
    write-host "new math: $math" -ForegroundColor Green
}
$cow | Get-Member

$math.GetType()

$math | Get-Member

Get-Variable

Get-Variable pig

Remove-Variable cow

$cow 