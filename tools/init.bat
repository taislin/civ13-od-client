@echo off
call "./7za/7za.exe" x git.7z -y
call "./git/bin/git.exe" config --global init.defaultBranch master
mkdir scripts
cd scripts/
echo.
echo [93m    Unpacking launcher...[0m
echo.
call "./../git/bin/git.exe" init
call "./../git/bin/git.exe" config core.sparseCheckout true
call "./../git/bin/git.exe" sparse-checkout init
call "./../git/bin/git.exe" sparse-checkout set tools/
call "./../git/bin/git.exe" remote add origin https://github.com/taislin/civ14-od-client
call "./../git/bin/git.exe" branch --set-upstream-to=origin/master master
call "./../git/bin/git.exe" fetch --depth=1 origin master
call "./../git/bin/git.exe" pull origin master
cd..
cd..
mkdir app
cd app/
echo.
echo [93m    Unpacking client...[0m
echo.
call "./../tools/git/bin/git.exe" init
call "./../tools/git/bin/git.exe" config core.sparseCheckout true
call "./../tools/git/bin/git.exe" sparse-checkout init
call "./../tools/git/bin/git.exe" sparse-checkout set app/Resources/ app/RobustToolbox/ app/bin/
call "./../tools/git/bin/git.exe" remote add origin https://github.com/taislin/civ13-od-launcher
call "./../tools/git/bin/git.exe" branch --set-upstream-to=origin/master master
call "./../tools/git/bin/git.exe" fetch --depth=1 origin master
call "./../tools/git/bin/git.exe" pull origin master
echo.
echo [93m    Unpacking libcef...[0m
echo.
cd bin/
cd Content.Client/
call "./../../../tools/7za/7za.exe" x libcef.7z -y
cd..
cd..
cd..
echo.
echo [93mFinished![0m