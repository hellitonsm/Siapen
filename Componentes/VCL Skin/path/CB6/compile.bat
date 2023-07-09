SET OLDPATH=%PATH%
CD %1
SET ROOT=C:\PROGRA~1\Borland\CBUILDER6\
SET PATH=%ROOT%Projects\Bpl;%ROOT%Projects\Lib;%ROOT%bin
SET MAKE=%ROOT%bin\make.exe
SET BPRMAKE=%ROOT%bin\bpr2mak.exe
%BPRMAKE% winskinc6.bpk
%MAKE% -B -f winskinc6.mak
SET Path=%OLDPATH%
