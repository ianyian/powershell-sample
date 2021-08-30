$Array = @()

$processes = Get-Process

foreach ($proc in $processes)
{
    if($proc.ws/1mb -gt 100) #ws = WorkingSet
    {
        $Array += New-object psobject -Property @{'ProcessName' = $Proc.Name ; 'WorkingSet' = $Proc.ws}
    }
}

$Array | select 'processName', 'workingSet' | Export-Csv .\file.csv -NoTypeInformation

$csvimport = @()
$csvimport = Import-Csv .\file.csv

foreach ($obj in $csvimport) {
    write-host "Process Name: " $obj.Processname "working set:" $obj.workingset
}

#Just wantt to look at it in a prettier way ?
$csvimport | Format-Table -AutoSize

#other tricks to kep in your pocket
$csvimport[1].ProcessName