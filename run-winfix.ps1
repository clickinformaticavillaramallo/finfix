# FixWin 11.2.exe - Descarga y ejecución directa
$exeUrl = "https://github.com/clickinformaticavillaramallo/finfix/raw/main/FixWin%2011.2.exe"
$tmpExe = "$env:TEMP\FixWin-11.2.exe"

Write-Host "[*] Descargando FixWin 11.2..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $exeUrl -OutFile $tmpExe -UseBasicParsing

Unblock-File -Path $tmpExe
Write-Host "[*] Ejecutando FixWin 11.2..." -ForegroundColor Green
Start-Process $tmpExe -Wait