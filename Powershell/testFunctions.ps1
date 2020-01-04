
################################################
## functions speed development
## are reliable when well tested
## Improve productivity
################################################

## Verb-Noun naming
## Use approved verbs
get-verb 


function Get-DriveSummary 
<#
.NOTES
'This is where notes go.'
#>
( 
    [CmdletBinding()]
    [Int32]$i
)
{
  #  
    foreach($drive in $volume)
    {
        $bytesSize = $bytesSize + $drive.Size
        $bytesSizeRemaining = $bytesSizeRemaining + $drive.SizeRemaining 
        
    }

    # "Total report for $(Get-Date -UFormat "%Y-%m-%d %H:%M:%S")"
    # "TB  Total: $([Math]::Round($bytesSize/[Math]::Pow(1024.0,4),2))"
    # "TB Remain: $([Math]::Round($bytesSizeRemaing/[Math]::Pow(1024.0,4),2))"
    # "Pct Remain: $(100*[Math]::Round($bytesSizeRemaing/$bytesSize,4))%"

    return 100*[Math]::Round($bytesSizeRemaing/$bytesSize,4)

}



