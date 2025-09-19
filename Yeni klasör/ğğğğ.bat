@echo off

rem Ses dosyasını çal
powershell -c (New-Object Media.SoundPlayer "C:\Windows\Media\chimes.wav").PlaySync();

rem Hata mesajı popup'u göster
powershell -command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Sistem hatası oluştu! Panik yapma.', 'Hata', 'OK', 'Error')"
