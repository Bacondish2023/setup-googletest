@echo off
rem
rem @file do_clean.bat
rem @brief Removes deliverables and temporaries
rem

if exist zzz_build\ (
  rmdir /s /q zzz_build
)
