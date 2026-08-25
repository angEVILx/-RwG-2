@echo off
chcp 65001 > nul
title Half-Life FastDL .bz2 Hýzlý Sýkýþtýrma Aracý

:: 7-Zip'in sistemdeki varsayýlan yolunu kontrol et
set "SEVENZIP=C:\Program Files\7-Zip\7z.exe"

if not exist "%SEVENZIP%" (
    echo [HATA] 7-Zip bulunamadý! Lütfen bilgisayarýnýzda 7-Zip'in kurulu olduðundan emin olun.
    echo Beklenen konum: %SEVENZIP%
    pause
    exit
)

echo ========================================================
echo Eksik .bz2 Dosyalari Taranip Sýkýþtýrýlýyor...
echo ========================================================
echo.

:: Sadece uzantýlara göre arama yapar.
for /R %%f in (*.mdl *.bmp *.tga *.spr *.wav *.mp3 *.wad *.bsp) do (
    if not exist "%%f.bz2" (
        echo [Sýkýþtýrýlýyor] %%~nxf
        "%SEVENZIP%" a -tbzip2 -mx9 "%%f.bz2" "%%f" > nul
    )
)

echo.
echo ========================================================
echo Ýþlem Tamamlandý!
echo ========================================================
pause