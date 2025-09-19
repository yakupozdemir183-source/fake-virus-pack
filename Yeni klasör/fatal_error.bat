@echo off
color 0a

echo Hey! 4 saniyelik ses geliyor...
timeout /t 1 >nul

rem Ses dosyasını Windows Media Player ile çalıyoruz, sessiz kapanması için /close parametresi
start /min wmplayer "C:\Windows\Media\chimes.wav" /close

timeout /t 4 >nul

echo Ses bitti, devam!
timeout /t 2 >nul
