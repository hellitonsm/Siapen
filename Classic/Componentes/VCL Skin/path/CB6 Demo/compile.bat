SET OLDPATH=%PATH%
CD %1
SET ROOT=C:\PROGRA~1\Borland\CBUILDER6\
SET PATH=%ROOT%Projects\Bpl;%ROOT%Projects\Lib;%ROOT%bin
SET MAKE=%ROOT%bin\make.exe
SET BPRMAKE=%ROOT%bin\bpr2mak.exe
%BPRMAKE% project1.bpr
%MAKE% -B -f project1.mak
SET Path=%OLDPATH%
