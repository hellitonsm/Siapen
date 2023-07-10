// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'SkinCaption.pas' rev: 5.00

#ifndef SkinCaptionHPP
#define SkinCaptionHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <SysUtils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Skincaption
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TSkinCaption;
class PASCALIMPLEMENTATION TSkinCaption : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	unsigned FUserForm;
	Byte FAlpha;
	AnsiString FAuthor;
	void __fastcall SetActive(bool value);
	bool __fastcall GetActive(void);
	void __fastcall SetAuthor(AnsiString Value);
	
protected:
	virtual void __fastcall Loaded(void);
	
public:
	__fastcall virtual TSkinCaption(Classes::TComponent* AOwner);
	__fastcall virtual ~TSkinCaption(void);
	void __fastcall DLL_InitSkin(unsigned Value);
	void __fastcall DLL_UnLoadSkin(void);
	void __fastcall DLL_SetSkinFile(AnsiString Value);
	void __fastcall DLL_SetActive(bool Value);
	void __fastcall DLL_LoadSkinRes(Classes::TStream* Value);
	void __fastcall DLL_Add3rdControl( System::ShortString &Value);
	Classes::TComponent* __fastcall DLL_GetSkinManager(void);
	
__published:
	__property bool Active = {read=GetActive, write=SetActive, default=1};
	__property AnsiString Author = {read=FAuthor, write=SetAuthor};
	__property Byte SkinAlpha = {read=FAlpha, write=FAlpha, default=0};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Skincaption */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Skincaption;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SkinCaption
