unit MotivoDispensaTrabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, adpDBDateTimePicker;

type
  TFrmMotivoDispensaTrabalho = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Editdocumento: TEdit;
    adpDBDateTimePickerdtsaida: TadpDBDateTimePicker;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMotivoDispensaTrabalho: TFrmMotivoDispensaTrabalho;

implementation

{$R *.dfm}

procedure TFrmMotivoDispensaTrabalho.FormShow(Sender: TObject);
begin
  adpDBDateTimePickerdtsaida.Date:= date;
end;

end.
