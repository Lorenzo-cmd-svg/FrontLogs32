$g='Green';$b='Blue';$r='Red';$y='Yellow';$o='DarkYellow'
$path="$env:USERPROFILE\Desktop\ScreenShare\LOGS"
if (!(Test-Path $path)) {New-Item -ItemType Directory -Path $path | Out-Null}
$i=(Get-ChildItem $path -Filter 'LOGS*.txt').Count + 1
$logFile=Join-Path $path ("LOGS$($i).txt")
$pid=Get-Random -Minimum 1000 -Maximum 9999
$ip="192.168.$(Get-Random -Minimum 0 -Maximum 255).$(Get-Random -Minimum 1 -Maximum 254)"
$mod=('Vape','Lunar','Forge','Badlion','CheatBreaker') | Get-Random

Write-Host '███████╗██████╗  ██████╗ ███╗   ██╗████████╗██╗      ██████╗  ██████╗ ███████╗' -ForegroundColor $g
Write-Host '██╔════╝██╔══██╗██╔═══██╗████╗  ██║╚══██╔══╝██║     ██╔═══██╗██╔════╝ ██╔════╝' -ForegroundColor $g
Write-Host '█████╗  ██████╔╝██║   ██║██╔██╗ ██║   ██║   ██║     ██║   ██║██║  ███╗█████╗  ' -ForegroundColor $g
Write-Host '██╔══╝  ██╔═══╝ ██║   ██║██║╚██╗██║   ██║   ██║     ██║   ██║██║   ██║██╔══╝  ' -ForegroundColor $g
Write-Host '███████╗██║     ╚██████╔╝██║ ╚████║   ██║   ███████╗╚██████╔╝╚██████╔╝███████╗' -ForegroundColor $g
Write-Host '╚══════╝╚═╝      ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝ ╚═════╝  ╚═════╝ ╚══════╝' -ForegroundColor $g
Write-Host ''
Write-Host 'Executing file >mod >cheat >hack -Command Write host' -ForegroundColor $b
Write-Host ''
Write-Host 'Executing minecraft.exe injector litepayl successfully' -ForegroundColor $b
Write-Host ''
Write-Host 'Executing wifi powershell host:injecting host' -ForegroundColor $b
Write-Host ''
for ($s=2; $s -le 15; $s++) {
    for ($p=0; $p -le 100; $p+=20) {
        Write-Host "Caricamento $s su 15 [$p%]" -ForegroundColor $r
        Start-Sleep -Milliseconds (Get-Random -Minimum 100 -Maximum 400)
    }
}
Start-Sleep -Seconds 2
Write-Host ''
Write-Host 'Loaded complete successfully' -ForegroundColor $y
Start-Sleep -Milliseconds 1500
Write-Host ''
Write-Host 'LOGS caricati con successo' -ForegroundColor $o

Add-Content $logFile "[INFO] FRONTLOGS injector initialized successfully"
Add-Content $logFile "[INFO] Minecraft.exe linked to process ID $pid"
Add-Content $logFile "[INFO] Detected mod: $mod"
Add-Content $logFile "[INFO] Network host injected via powershell tunnel [$ip]"
Add-Content $logFile "[SUCCESS] Scan completed at $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
