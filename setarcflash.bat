rem Определение имени архивного флеш диска

set ARCFLASH=

goto do_shift
:loop

copy %ARCFLASH%:\archive.lbl > null

if %ERRORLEVEL%==0 goto success

:do_shift
set ARCFLASH=%1
shift
if not %1==* goto loop

cls
set ARCFLASH=*
echo No Archive Flash Disk!
goto end_setarcflash

:success
echo Archive Flash Disk is %ARCFLASH%:

:end_setarcflash