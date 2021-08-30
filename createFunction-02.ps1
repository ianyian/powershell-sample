# DIR function: dis*


Function Display-Message ($yourMessage)
{
    write-host "your message is: $yourMessage"
}

<#
    display-Message("hello")
#>

<#
   best practice
   1. verb-noun format only
   2. valid approved verbs should be used
   3. nouns are more flexible
#>

Function Invoke-UdfSpeech
{
    [cmdletbinding()]
        param(
            [string]$speakit = 'a default thing to say.'
        )
    
        Write-Verbose $speakit

        $speaker = New-Object -COM SAPI.SPVoice

        $speaker.speak($speakit,1) | out-null

}

Invoke-UdfSpeech "Powershell is awesome !"