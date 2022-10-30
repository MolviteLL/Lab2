@Echo off
chcp 1251

set way=%1
set size=%2
if exist %way% (
    forfiles /P %way% /S /C "cmd /c if @fsize lss %size% echo @FILE" > resultbat1.2.txt
) else (
    echo "No this catalog!"
)