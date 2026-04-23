@echo off
TITLE Civ13-OpenDream Client Updater
cd scripts/
call "./../git/bin/git.exe" reset --hard origin/master
call "./update.bat"
cd..
echo Finished updating the launcher.
