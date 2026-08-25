@echo off
chcp 65001 > nul
title Half-Life FastDL .bz2 Sýkýþtýrma Aracý

:: 7-Zip'in sistemdeki varsayýlan yolunu kontrol et
set "SEVENZIP=C:\Program Files\7-Zip\7z.exe"

if not exist "%SEVENZIP%" (
    echo [HATA] 7-Zip bulunamadý! Lütfen bilgisayarýnýzda 7-Zip'in kurulu olduðundan emin olun.
    echo Beklenen konum: %SEVENZIP%
    pause
    exit
)

echo ========================================================
echo Half-Life Dosyalari .bz2 Formatina Sýkýþtýrýlýyor...
echo ========================================================
echo.

:: Bulunduðu dizin ve alt dizinlerdeki hedeflenen uzantýlarý tara
for /R %%f in (*.mdl *.bmp *.tga *.spr *.wav *.mp3 *.wad *.bsp) do (
    :: Eðer dosyanýn daha önce oluþturulmuþ bir .bz2 hali yoksa sýkýþtýr
    if not exist "%%f.bz2" (
        echo [Sýkýþtýrýlýyor] %%~nxf
        "%SEVENZIP%" a -tbzip2 -mx9 "%%f.bz2" "%%f" > nul
    ) else (
        echo [Atlandý - Zaten Var] %%~nxf.bz2
    )
)

echo.
echo ========================================================
echo Ýþlem Tamamlandý! Bütün dosyalar baþarýyla sýkýþtýrýldý.
echo ========================================================
pause