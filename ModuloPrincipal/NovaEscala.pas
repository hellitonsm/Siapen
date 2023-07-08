unit NovaEscala;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, ComCtrls, Buttons, DBCtrls, StdCtrls,
  FMTBcd, DB, SqlExpr;

type
  TFrmNovaEscala = class(TFrmModeloFormulario)
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DateTimePickerEscala: TDateTimePicker;
    Label1: TLabel;
    Button1: TButton;
    SqlExecute: TSQLQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNovaEscala: TFrmNovaEscala;

implementation

uses Equipe, DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmNovaEscala.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  FrmEquipe := TFrmEquipe.create(Application);
  FrmEquipe.showmodal;
  FreeAndNil(FrmEquipe);

  DM.DsEquipe.DataSet.Close;
  DM.DsEquipe.DataSet.Open;

end;

procedure TFrmNovaEscala.FormShow(Sender: TObject);
begin
  inherited;

  DM.DsEquipe.DataSet.Close;
  DM.DsEquipe.DataSet.Open;

  DateTimePickerEscala.Date := Date;

end;

procedure TFrmNovaEscala.Button1Click(Sender: TObject);
begin
  inherited;

  if not (DBLookupComboBox1.KeyValue > 0) then
  begin
    ShowMessage('Escolha a equipe.');
    Exit;
  end;

  if not (DateTimePickerEscala.Date >= date) then
  begin
    ShowMessage('Data menor que hoje.');
    Exit;
  end;

  DM.SQLConnect.ExecuteDirect('EXECUTE PROCEDURE SP_AGENDA_ESCALA_EQUIPE (' + inttostr(DBLookupComboBox1.KeyValue) + ','
    + Qs(FormatDateTime('dd.mm.yyyy', DateTimePickerEscala.Date)) + ')');

  ShowMessage('Escala Gerada Com sucesso!');

end;

end.

