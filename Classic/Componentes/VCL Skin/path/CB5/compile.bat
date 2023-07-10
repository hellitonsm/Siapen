SET OLDPATH=%PATH%
CD %1
SET ROOT=C:\PROGRA~1\Borland\CBUILDER5\
SET PATH=%ROOT%Projects\Bpl;%ROOT%Projects\Lib;%ROOT%bin
SET MAKE=%ROOT%bin\make.exe
SET BPRMAKE=%ROOT%bin\bpr2mak.exe
%BPRMAKE% winskinc5.bpk
%MAKE% -B -f winskinc5.mak
SET Path=%OLDPATH%
