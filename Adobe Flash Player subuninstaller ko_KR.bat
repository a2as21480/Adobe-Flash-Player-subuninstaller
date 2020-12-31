@echo off
title Adobe Flash Player subunistaller ko_KR

:main
cls
echo 관리자 권한으로 실행해 주세요!
echo Adobe Flash Player 잔해를 삭제 합니다 계속 하시겠습니까?
echo.

set /p a=진행하시려면 y를 종료를 원하시면 n을 입력해주세요.(그냥 닫아도 되긴 합니다..) 
if %a%==y goto excution
if %a%==n goto deny

:deny
goto exit

:excution
print 파일 삭제를 위한 권한을 취득합니다.
timeout /t 1 < nul
takeown.exe /f C:\Windows\system32\Macromed\Flash /R /D Y
takeown.exe /f C:\Windows\SysWOW64\Macromed\Flash /R /D Y
takeown.exe /f C:"%appdata%\Adobe\Flash Player" /R /D Y
takeown.exe /f C:"%appdata%\Macromedia\Flash Player" /R /D Y
timeout /t 1 <nul

print 권한을 취득한 파일을 삭제합니다.
timeout /t 1 <nul
del /S /Q "C:\Windows\system32\Macromed\Flash" * "C:\Windows\SysWOW64\Macromed\Flash" * "C:"%appdata%\Adobe\Flash Player"" * "C:"%appdata%\Macromedia\Flash Player""

print 삭제가 완료 되었습니다. 아무 키나 누르시면 종료됩니다.(그냥 닫아도 되긴 합니다..)
pause



