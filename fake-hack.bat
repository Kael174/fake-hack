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

:: IP ADRESİ ALMA
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr "IPv4"') do (
    set "ip=%%a"
)

cls
echo [#] Hedef IP bulundu: !ip:~1!
ping localhost -n 2 >nul
cls

:: EFEKT DÖNGÜSÜ
:loop
echo [*]  IP adresi kopyalaniyor...
timeout /t 1 >nul
echo [*]  Hash kirmaya baslaniyor...
timeout /t 1 >nul
echo [*]  Ana sistem taraniyor...
timeout /t 1 >nul
echo [*]  Veriler kopyalaniyor...
timeout /t 1 >nul
echo.
echo [!] HACK TAMAMLANDI - KAEL.EXE SISTEMI ELE GECIRDI
pause >nul
exit
