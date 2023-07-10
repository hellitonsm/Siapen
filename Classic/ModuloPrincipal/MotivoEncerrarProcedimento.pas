unit MotivoEncerrarProcedimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, StdCtrls;

type
  TFrmMotivoEncerrarProcedimento = class(TFrmModeloFormulario)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    IDMOV_PROCEDIMENTOS: Integer;
    { Public declarations }
  end;

var
  FrmMotivoEncerrarProcedimento: TFrmMotivoEncerrarProcedimento;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmMotivoEncerrarProcedimento.Button1Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Encerrar o procedimento?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    dm.SQLConnect.ExecuteDirect('UPDATE MOV_PROCEDIMENTOS SET ST=''E'', DATA_ENCERRAMENTO=CURRENT_TIMESTAMP,'
      + ' MOTIVO_ENCERRAMENTO=' + QS(Edit1.Text) + ' WHERE IDMOV_PROCEDIMENTOS=' + IntToStr(IDMOV_PROCEDIMENTOS));
    ModalResult := mrOk;
  end;
end;

procedure TFrmMotivoEncerrarProcedimento.Button2Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFrmMotivoEncerrarProcedimento.Edit1Change(Sender: TObject);
begin
  inherited;
  Button1.Enabled := (Trim(Edit1.Text) <> '');
end;

end.

