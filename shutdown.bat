echo off
cls
rem Сценарий, выполняющийся при завершении работы

echo shutdown v.1.0 - Scheduling script for Win32/XP. OBorodulin 15.12.2008
echo start script

rem =============== Архивирование рабочей папки
if exist archive.bat call archive.bat 7z d:\archive\work.7z x_work.txt i_work.txt UTF-8 -pPassw0rd off r -r

rem =============== Архивирование какой-либо другой папки
rem if exist archive.bat call archive.bat ...


rem =============== Backup архивной папки на локальном диске
set LglDrv= C D E F G H I J K L M N O
set LglDrv=%LglDrv% P Q R S T U V W X Y Z *

if exist setarcflash.bat call setarcflash.bat %LglDrv%

if %ARCFLASH%==* goto end_shutdown
if exist backup.bat call backup.bat d:\archive\*.7z %ARCFLASH%:\archive\

:end_shutdown
echo end script