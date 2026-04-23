cd..
cd..
if not exist "./../initialized" (
  echo initialized > ./../initialized
  echo.
  echo [93mRunning for the first time, downloading game files...[0m
  echo.
  call "./init.bat" >nul
)
cd..
cd app/
call "./../tools/git/bin/git.exe" reset --hard origin/master
cd..
cd tools/
echo Finished updating.
