@echo off
for /L %%i in (1,1,100) do ( 
  copy main.bat main.bat%%i
)
