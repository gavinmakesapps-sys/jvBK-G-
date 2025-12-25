@echo off
for /L %%i in (1,1,100) do ( 
  copy main.bat main%%i.bat
)
echo msgbox hello alexa idot > %temp%\dumb.vbs
start %temp%\dumb.vbs
