<#
    this will keep file in C:\Users\snixjyian\Documents\WindowsPowerShell\function-call-module-2\function-call-module-2.psm1
#>
    $env:PSModulePath
    get-module
    write-host "get-module"
    get-module -ListAvailable

    write-host "import-module"
    import-module function-call-module-2
    
    write-host "remove-module"
    remove-module function-call-module-2
