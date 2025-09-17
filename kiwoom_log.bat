@echo off
setlocal enabledelayedexpansion

REM 시간 문자열에서 : 제거 (파일명에 : 못 들어감)
set DATESTR=%DATE:~0,10%
set TIMESTR=%TIME:~0,8%
set TIMESTR=%TIMESTR::=%   REM : 제거
set TIMESTR=%TIMESTR: =0% REM 공백을 0으로

REM 로그 파일명 만들기
set LOGFILE=log_%DATESTR%_%TIMESTR%.txt


"C:\Users\stone\anaconda3\envs\py38_32\python.exe" "c:\PySrc\Kiwoom\Kiwoom_ystone.py" > "log_%DATE%_%time:~0,2%_%time:~3,2%_%time:~6,2%.txt"

pause

