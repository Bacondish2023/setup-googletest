@echo off
rem
rem @file do_test.bat
rem @brief Runs tests
rem

if exist zzz_build\ (
  pushd zzz_build
  nmake test
  popd
) else (
  echo "zzz_build" directory does not exist. skip test.
)
