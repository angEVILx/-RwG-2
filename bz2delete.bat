@echo off
chcp 65001 > nul
title Half-Life FastDL .bz2 Hýzlý Temizleme

:: Bulunduðu dizin ve alt dizinlerdeki bütün .bz2 dosyalarýný sormadan sessizce sil (/s: alt klasörler, /q: sessiz/onaysýz)
del /s /q "*.bz2"

exit