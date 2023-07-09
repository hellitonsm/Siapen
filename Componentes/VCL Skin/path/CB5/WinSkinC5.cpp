//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("WinSkinC5.res");
USEPACKAGE("vcl50.bpi");
USERES("WinSkinReg.dcr");
USEPACKAGE("vclx50.bpi");
USEOBJ("WinSkinReg.obj");
//---------------------------------------------------------------------------
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Package source.
//---------------------------------------------------------------------------

#pragma argsused
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void*)
{
        return 1;
}
//---------------------------------------------------------------------------
