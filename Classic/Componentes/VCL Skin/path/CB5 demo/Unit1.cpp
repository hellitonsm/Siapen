//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "WinSkinDlg.hpp"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "WinSkinData"
#pragma link "WinSkinStore"
#pragma link "WinSkinDlg"
#pragma link "SkinCaption"
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
       // SkinManager->AddForm((unsigned)Handle);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
  SkinData1->Active =  !SkinData1->Active;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Copy1Click(TObject *Sender)
{
 SkinData1->LoadFromCollection(SkinStore1,0);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Paste1Click(TObject *Sender)
{
 SkinData1->LoadFromCollection(SkinStore1,1);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SelectAll1Click(TObject *Sender)
{
 SkinData1->LoadFromCollection(SkinStore1,2);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Skin41Click(TObject *Sender)
{
 SkinData1->LoadFromCollection(SkinStore1,3);

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Skin51Click(TObject *Sender)
{
 SkinData1->LoadFromCollection(SkinStore1,4);

}
//---------------------------------------------------------------------------
