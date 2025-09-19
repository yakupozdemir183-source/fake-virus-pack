@echo off
title Tahmin Oyunu
color 0a

set /a number=%random% %% 10 + 1
:guess
set /p "g=1 ile 10 arasında bir sayı tahmin et: "
if "%g%"=="%number%" (
    echo Tebrikler! Doğru tahmin :)
    pause
    exit
) else (
    echo Yanlış tahmin, tekrar dene.
    goto guess
)
