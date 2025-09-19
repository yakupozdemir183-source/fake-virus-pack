@echo off
color 0a
setlocal enabledelayedexpansion

set /a endtime=%time:~0,2%*3600 + %time:~3,2%*60 + %time:~6,2% + 10

:loop
cls
echo Hey! Bu sadece bir şaka. Panik yapma! :D
timeout /t 2 >nul
cls
echo Bilgisayarın tamamen güvende, rahat ol!
timeout /t 2 >nul

rem Şimdiki zamanı saniye cinsinden hesapla
for /f "tokens=1-4 delims=:.," %%a in ("%time%") do (
  set /a now=%%a*3600 + %%b*60 + %%c
)

if !now! GEQ %endtime% goto end

goto loop

:end
cls
echo Şaka bitti, hoşçakal!
timeout /t 2 >nul
exit
