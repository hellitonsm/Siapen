unit SelecionarTipoVisita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TFrmSelecionarTipoVisita = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edithora: TEdit;
    Editlocal: TEdit;
    Editcontato: TEdit;
    DateTimePickerdata: TDateTimePicker;
    BitBtnConfirma: TBitBtn;
    BitBtnCancela: TBitBtn;
    Label6: TLabel;
    EditIndividuo: TEdit;
    EditEntradaSaida: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelecionarTipoVisita: TFrmSelecionarTipoVisita;

implementation

uses ControlePortaria;

{$R *.dfm}

procedure TFrmSelecionarTipoVisita.FormShow(Sender: TObject);
begin
  DateTimePickerdata.Date:= Date;
  Edithora.Text := TimeToStr(Now);
  
end;

end.
