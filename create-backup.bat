@echo off

set WSL_NAME=%1

if "%WSL_NAME%"=="" (
  echo Invalid argument. Ex: create-backup.bat WSL_NAME
  echo WSL list:
  wsl -l -v
) else (
  wsl --export %WSL_NAME% %WSL_NAME%-%date:~6,4%-%date:~3,2%-%date:~0,2%.tar
)

