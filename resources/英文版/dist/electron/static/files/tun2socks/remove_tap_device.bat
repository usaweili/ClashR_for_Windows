@echo off
setlocal

set DEVICE_NAME=cfw-tap
set DEVICE_HWID=tap0901

set PATH=%PATH%;%SystemRoot%\system32;%SystemRoot%\system32\wbem;%SystemRoot%\system32\WindowsPowerShell/v1.0

echo Removing old TAP network device...
%1\amd64\tapinstall remove %DEVICE_HWID%
if %errorlevel% neq 0 (
  echo Could not remove TAP network device. >&2
  exit /b 1
)