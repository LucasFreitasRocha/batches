echo escreva o usuario para procurar na maquina
@echo off
set /P myname=

for /F %%i IN ('net user ^| find /I /C "%myname% "') do (
if not "%%i"=="0" (
   echo found %%i user with this username 
  ) else (
   echo %%i matches found.
 )
)
pause