@echo off
chcp 65001 >nul
echo Bulunulan klasör ve alt klasörlerdeki .bz2 dosyalarý siliniyor...
for /R %%i in (*.bz2) do del /q /f "%%i"
echo Ýþlem tamamlandý.
pause