unit Sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, pngimage;

type
  TFrmsobre = class(TForm)
    Panel1: TPanel;
    ProductName: TLabel;
    Version: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmsobre: TFrmsobre;

implementation

{$R *.dfm}

procedure TFrmsobre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  close;
end;

procedure TFrmsobre.FormActivate(Sender: TObject);
begin
  Self.Color := clBlack;
end;

end.
