

# $disk = Get-Disk -Number 0
#  $disk.AllocatedSize / [Math]::Pow(1024.0,3) 
# $disk.free

## EXPAND
## shift-alt-E
## ls  goes to Get-ChildItem
### note that spelling close has tab completion 
##  getv goes to Get-Volume


Clear-Host 

$volume = Get-Volume

# $volume  

# $volume.SizeRemaining.GetValue(0) / [Math]::Pow(1024.0,3) 

# $volume.Size.GetValue(0) / [Math]::Pow(1024.0,3) 

$bytesSize = 0
$bytesSizeRemaining = 0
          

foreach($drive in $volume)
{
    $bytesSize = $bytesSize + $drive.Size
    $bytesSizeRemaining = $bytesSizeRemaining + $drive.SizeRemaining 


    "$($drive.DriveLetter) $([Math]::Round($drive.Size/[Math]::Pow(1024.0,4),5))  $([Math]::Round($drive.SizeRemaining/[Math]::Pow(1024.0,4),5))"  # |Format-Table

}

"Total report for $(Get-Date -UFormat "%Y-%m-%d %H:%M:%S")"
"TB  Total: $([Math]::Round($bytesSize/[Math]::Pow(1024.0,4),2))"
"TB Remain: $([Math]::Round($bytesSizeRemaing/[Math]::Pow(1024.0,4),2))"
"Pct Remain: $(100*[Math]::Round($bytesSizeRemaing/$bytesSize,4))%"



# $ratioRemain = $bytesSizeRemaing / $bytesSize

# $ratioRemain

# Get-Date -UFormat "%Y-%m-%d %H:%M:%S"

