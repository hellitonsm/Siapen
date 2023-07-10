unit ImagemParaWEB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Buttons, jpeg;

type
  TFrmImagemParaWEB = class(TForm)
    Button1: TButton;
    Image1: TImage;
    DBImageFOTOInterno: TDBImage;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImagemParaWEB: TFrmImagemParaWEB;

implementation

uses Lib;

{$R *.dfm}

procedure TFrmImagemParaWEB.Button1Click(Sender: TObject);
var
  JPeg: TJPegImage;
begin

  JPeg := TJPEGImage.Create ;
  JPeg.Assign(CaptureImgRect(Rect(0,0,DBImageFOTOInterno.Width,DBImageFOTOInterno.Height))) ;
  Image1.picture.Bitmap.Assign(JPeg) ;
  FreeAndNil(JPeg) ;

end;

procedure TFrmImagemParaWEB.FormCreate(Sender: TObject);
begin

  self.Left := 0 ;
  self.Top := 0 ;

end;

procedure TFrmImagemParaWEB.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmImagemParaWEB.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled := false;
Button1Click(nil);
BitBtn1Click(nil);
end;

end.
