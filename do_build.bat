@echo off
rem
rem @file do_build.bat
rem @brief Creates build directory, runs cmake and builds
rem

if exist zzz_build\ (
  echo "zzz_build" directory already exists. skip creation.
) else (
  mkdir zzz_build

  rem run cmake
  pushd zzz_build
  call cmake -DCMAKE_BUILD_TYPE="Release" -G "NMake Makefiles" ..
  popd
)

rem build
pushd zzz_build
nmake
popd
