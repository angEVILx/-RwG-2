@echo off
chcp 65001
echo 7-Zip ile BZ2 Sýkýþtýrma Ýþlemi Baþlýyor...
echo ===================================

REM 7-Zip'in bilgisayardaki varsayýlan kurulum yeri kontrol edilir
set "sz=C:\Program Files\7-Zip\7z.exe"

if not exist "%sz%" (
    echo [HATA] 7-Zip bulunamadý! Lütfen C:\Program Files\7-Zip klasöründe olduðundan emin ol.
    pause
    exit
)

for /r %%i in (*.bsp *.mdl *.wad *.wav *.spr *.tga *.bmp) do (
    if not exist "%%i.bz2" (
        echo Sýkýþtýrýlýyor: %%~nxi
        "%sz%" a -tbzip2 -mx=9 "%%i.bz2" "%%i" >nul
    )
)

echo ===================================
echo Tüm iþlemler tamamlandý!
pause