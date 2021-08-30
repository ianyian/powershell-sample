<#
    stop-process -Name notepad -whatIf
    stop-process -Name notepad -confrim
#>

Function out-udfCarefulMessage
{
    <#
        Description
        output message and may delete a file so uses support
    #>
    [cmdletbinding(supportsShouldprocess=$true, confirmimpact='high')]
    param()
    <#
        param(
            [parameter(Mandatory=$true)]
            [Validateset("Tom","Dick","Jane")]
            [String]
            $name

            [validateRange(21,65)]
            [int]
            $Age

            [validatescript({Test-path $_ -pathType 'container'})]
            [string]
            $path

            write-output "Wow $Name. you are $age years old"
            write-output "file path: $path verified"
            write-verbose "just a verbose message"
        )
    #>

    write-output "writing a message is not risky"
    write-output "`nBut the following code is..."
    "xxx" > testfile.txt

    # risky code follows
    IF ($PScmdlet.ShouldProcess("remove testfile.txt"))
    {
        Remove-Item('testFile.txt')
    }
}

<#
    stop-process -name notepad -whatid
    stop-process -name notepad -confrim

    custom function example ....

    out-udfCarefulMessage
    out-udfCarefulMessage -whatif
    out-udfCarefulMessage -confrim
#>