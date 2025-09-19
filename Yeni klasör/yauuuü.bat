@echo off
color 0a

echo Hey! Saka basliyor...
timeout /t 2 >nul

echo Bip sesi geliyor!
rem PowerShell ile 4 saniye bip sesi
powershell -c "for ($i=0; $i -lt 8; $i++) { [console]::beep(800,500); Start-Sleep -Milliseconds 500 }"

echo Bip sesi bitti, rahatla!
timeout /t 2 >nul
