## option 1 > keep in MEM with variable
$un="xingjian.yian@flex.com"
$pw="1234567"
$sp= $pw | ConvertTo-SecureString -AsPlainText -Force
$sp
$plainCred = New-Object System.Management.Automation.PSCredential -ArgumentList $un, $sp
connect-MssolService -credential $plainCred

## option 2 > keep in MEM with prompting dialog
$askCred = Get-Credential
$askCred
connect-MssolService -credential $askCred

## option 3 > keep in file
$credentials = Get-Credential
$filename = '.\secureString.txt'
$credentials | Export-Clixml -path $filename  ## this file credential only allow to run in this machine
connect-MSsolservice -credential $filename

## option 4 > retrive from windows credential -> generic credential (create:oMy365)
    ## install third party module > install-module -Name credentialManager
    ## get-executionPolicy
    ## set-executionpolicy remotesigned
    ## get-command -Module credentialManager
$managedCred = get-storedCredential -target oMy365
connect-msolservice -credential $managedCred
