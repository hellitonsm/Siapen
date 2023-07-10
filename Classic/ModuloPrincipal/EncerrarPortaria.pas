unit EncerrarPortaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, adpDBDateTimePicker, Buttons;

type
  TFrmEncerrar_portaria = class(TForm)
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEncerrar_portaria: TFrmEncerrar_portaria;

implementation

{$R *.dfm}

procedure TFrmEncerrar_portaria.FormShow(Sender: TObject);
begin
     adpDBDateTimePicker1.Date:= date;
end;

end.
