//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "WinSkinData.hpp"
#include <ComCtrls.hpp>
#include <Menus.hpp>
#include <Buttons.hpp>
#include "WinSkinStore.hpp"
#include <Grids.hpp>
#include "SkinCaption.hpp"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TSkinData *SkinData1;
        TStatusBar *StatusBar1;
        TMainMenu *MainMenu1;
        TMenuItem *File1;
        TMenuItem *Open1;
        TMenuItem *Save1;
        TMenuItem *Close1;
        TMenuItem *N1;
        TMenuItem *Exit1;
        TMenuItem *MenuItem1;
        TMenuItem *Copy1;
        TMenuItem *Paste1;
        TMenuItem *SelectAll1;
        TMenuItem *Skin41;
        TMenuItem *Skin51;
        TMenuItem *Help1;
        TMenuItem *Content1;
        TMenuItem *HomePage1;
        TMenuItem *N2;
        TMenuItem *About1;
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TSpeedButton *SpeedButton1;
        TComboBox *ComboBox1;
        TCheckBox *CheckBox1;
        TCheckBox *CheckBox2;
        TRadioButton *RadioButton1;
        TRadioButton *RadioButton2;
        TProgressBar *ProgressBar1;
        TButton *Button1;
        TBitBtn *BitBtn1;
        TTabSheet *TabSheet2;
        TMemo *Memo1;
        TTabSheet *TabSheet3;
        TStringGrid *StringGrid1;
        TTabSheet *TabSheet4;
        TListBox *ListBox1;
        TSkinStore *SkinStore1;
        TSkinCaption *SkinCaption1;
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Copy1Click(TObject *Sender);
        void __fastcall Paste1Click(TObject *Sender);
        void __fastcall SelectAll1Click(TObject *Sender);
        void __fastcall Skin41Click(TObject *Sender);
        void __fastcall Skin51Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
