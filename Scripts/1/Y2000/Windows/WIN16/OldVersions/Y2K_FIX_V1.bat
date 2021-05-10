:: Start of script
@ECHO OFF
TIME SET "01-01-85"
DATE SET "01-01-85"
:: I don't know how to modify time in Windows 1.0 to Windows 10 through batch files. This example needs to be corrected for Windows 1.0 to Windows 3.11 (but not Windows NT 3.1, Windows NT 3.5, and later versions
:: Display the name to make sure it is correct
echo/Today is: %year%-%month%-%day% 
goto :EOF 
setlocal ENABLEEXTENSIONS 
set t = 2&if "%date%z" LSS "A" set t = 1 

for /f "skip=1 tokens = 2-4 delims = (-)" %%a in ('echo/^|date') do ( 
   for /f "tokens = %t%-4 delims=.-/ " %%d in ('date/t') do ( 
      set %%a=%%d&set %%b=%%e&set %%c=%%f)) 
endlocal&set %1=%yy%&set %2=%mm%&set %3=%dd%&goto :EOF
PAUSE

:: File info
:: File type: 16 bit MS-DOS Batch file (*.bat)
:: File version: 1 (Sunday, May 9th 2021 at 5:24 pm)
:: Line count (including blank lines and compiler line): 26

:: Script made with help from TutorialsPoint >> https://www.tutorialspoint.com/batch_script/batch_script_date_time.htm 

:: End of script
