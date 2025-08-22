@echo off
chcp 65001 >nul
color 0a
setlocal enabledelayedexpansion

:: YÜKLENİYOR EKRANI
set /a i=0
:loading
set /a i+=5
echo [##########                         ] !i!%%
ping localhost -n 1 >nul
cls
if !i! LSS 100 goto loading

:: SAHTE HACK DÖNGÜSÜ
:loop
echo IP adresi bulunuyor...
timeout /t 1 >nul
echo Hash kirmaya baslaniyor...
timeout /t 1 >nul
echo Ana sistem taraniyor...
timeout /t 1 >nul
echo Veriler kopyalaniyor...
timeout /t 1 >nul

cls

:: IP ADRESİ ALMA
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr "IPv4"') do (
    set "ip=%%a"
)

echo.
echo [#] Hedef IP bulundu: !ip:~1!
ping localhost -n 1 -w 500 >nul

echo İp kopyalandı

start "" wscript "C:\Users\ASUS\Desktop\fake-hack\fake-hackvbs.vbs"

timeout /t 3 >nul

exit