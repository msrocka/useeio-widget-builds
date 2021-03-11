@echo off

rem sync the build folder of the useeio-widgtes project with the
rem docs folder. assumes that this repository is located next to
rem useeio-widgets repository.

set home=%cd%

echo clean the docs folder
rmdir /s/q docs
mkdir docs

echo run the build
cd ..\useeio-widgets
call npm run clean
call npm run build

echo create the API doc
call typedoc --disableSources --out %home%\docs\apidoc src

echo copy the files
cd %home%
robocopy ..\useeio-widgets\build .\docs /e
