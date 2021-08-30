function Invoke-udfAdd2Numbers {
    [cmdletBinding()]
    param(
        [int]$Number1,
        [int]$Number2
    )  
 
    write-verbose "The numbers you passed where:"
    write-verbose "============================="
    write-verbose "`t Number1: $Number1"
    write-verbose "`n`t Number2: $Number2"
    Write-Output 'Always print thanks you !'
    Write-Information 'Info thank you !' -InformationAction continue

    $NumberSum = $Number1 + $Number2

    return $NumberSum
}

<#
    dir function:inv*

    clear-host
    Invoke-udfAdd2Numbers 5 4
    Invoke-udfAdd2Numbers -Number1 5 -Number2 10
    Invoke-udfAdd2Numbers -Number1 5 -Number2 10 -verbose
    $result = Invoke-udfAdd2Numbers 5 3
    $result
    help Invoke-udfAdd2Numbers 

    show-command Invoke-udfAdd2Numbers
    
    ## dot space dot follow by ps file
    ## which to put the ps1 in memory
    . .\createFunction-03.ps1 
#>