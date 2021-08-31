

write-host "the powershell module is loading" -ForegroundColor green
function Get-WelcomeMessage2
{
    Write-Output "hello world 2"
}

<#
    launch script
        import-module .\function-call-module-1.psm1   
        Get-WelcomeMessage2

        remove and load agian hte module
        import-module .\function-call-module-1.psm1 -Force -Verbose
    #>