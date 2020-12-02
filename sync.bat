@echo off

rem sync the build folder of the useeio-widgtes project with the
rem docs folder. assumes that this repository is located next to
rem useeio-widgets repository.

if "%~1" == "clean" (
    rmdir /s/q docs
    mkdir docs
    goto end
)

robocopy ..\useeio-widgets\build .\docs /e

:end
