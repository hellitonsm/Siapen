//------------------------------------------------------------------------------
// Modulo de captura da digital
//------------------------------------------------------------------------------
unit UnCaptDig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ExtCtrls, StdCtrls, Buttons, unCompBio, Dialogs;

type
  TfrmDigital = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    pnBot: TPanel;
    Panel4: TPanel;
    imgDig: TImage;
    btRet: TBitBtn;
    btSalv: TBitBtn;
    pnLog: TPanel;
    pnQual: TPanel;
    procedure btRetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btSalvClick(Sender: TObject);
  private
    prvBio: TCompBio;
    procedure rEvtImg(var pBmp: TBitmap);
  public
    { Public declarations }
  end;

var
  frmDigital: TfrmDigital;
  plDig_bmp : TBitmap;
  plDig_hex : string;

implementation

{$R *.dfm}
//------------------------------------------------------------------------------
// Evento de associacao da imagem
//------------------------------------------------------------------------------
procedure TfrmDigital.rEvtImg(var pBmp: TBitmap);
begin
    imgDig.Picture.Bitmap.Assign(pBmp);
end;
//------------------------------------------------------------------------------
// Sair da tela
//------------------------------------------------------------------------------
procedure TfrmDigital.btRetClick(Sender: TObject);
begin
    Close();
end;
//------------------------------------------------------------------------------
// Quando o formulario for criado
//------------------------------------------------------------------------------
procedure TfrmDigital.FormCreate(Sender: TObject);
begin
  if (not fGriauleLoadLib()) then
    ShowMessage('Falha ao carregar a DLL (GrFinger.dll)');

// se a DLL estiver em outra pasta favor setar
//
    prvBio         := TCompBio.Create(Self);
    prvBio.plPn01  := pnLog;
    prvBio.plPn02  := pnQual;
    prvBio.plBmp   := plDig_bmp;
    prvBio.OnImg   := rEvtImg;
    btSalv.Visible := (prvBio.fInitGrFinger() = 0);
end;
//------------------------------------------------------------------------------
// Quando o formulario for destruido
//------------------------------------------------------------------------------
procedure TfrmDigital.FormDestroy(Sender: TObject);
begin
    prvBio.rFinalizeGrFinger();
    FreeAndNil(prvBio);
end;
//------------------------------------------------------------------------------
// Botao confirmar
//------------------------------------------------------------------------------
procedure TfrmDigital.btSalvClick(Sender: TObject);
begin
    plDig_hex := prvBio.fImpDigToHex();
    Self.ModalResult := mrOk;
end;

end.
