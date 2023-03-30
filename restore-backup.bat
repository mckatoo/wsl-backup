@echo off

set INSTALL_LOCATION=%1
set BACKUP_FILE_PATH=%2

if "%INSTALL_LOCATION%"=="" && "%BACKUP_FILE_PATH%" == "" (
  echo "Invalid arguments. Ex: restore-backup.bat INSTALL_LOCATION BACKUP_FILE_PATH"
) else (
  wsl --import Ubuntu INSTALL_LOCATION BACKUP_FILE_PATH
)
