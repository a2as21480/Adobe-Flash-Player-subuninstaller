@echo off
title Adobe Flash Player ���� ���ű�

:main
cls
echo ������ �������� ������ �ּ���!
echo Adobe Flash Player ���ظ� ���� �մϴ� ��� �Ͻðڽ��ϱ�?
echo.

set /p a=�����Ͻ÷��� y�� ���Ḧ ���Ͻø� n�� �Է����ּ���.(�׳� �ݾƵ� �Ǳ� �մϴ�..) 
if %a%==y goto excution
if %a%==n goto deny

:deny
goto exit

:excution
print ���� ������ ���� ������ ����մϴ�.
timeout /t 1 < nul
takeown.exe /f C:\Windows\system32\Macromed\Flash /R /D Y
takeown.exe /f C:\Windows\SysWOW64\Macromed\Flash /R /D Y
takeown.exe /f C:"%appdata%\Adobe\Flash Player" /R /D Y
takeown.exe /f C:"%appdata%\Macromedia\Flash Player" /R /D Y
timeout /t 1 <nul

print ������ ����� ������ �����մϴ�.
timeout /t 1 <nul
del /S /Q "C:\Windows\system32\Macromed\Flash" * "C:\Windows\SysWOW64\Macromed\Flash" * "C:"%appdata%\Adobe\Flash Player"" * "C:"%appdata%\Macromedia\Flash Player""

print ������ �Ϸ� �Ǿ����ϴ�. �ƹ� Ű�� �����ø� ����˴ϴ�.(�׳� �ݾƵ� �Ǳ� �մϴ�..)
pause



