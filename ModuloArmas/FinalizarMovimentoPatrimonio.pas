unit FinalizarMovimentoPatrimonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, jpeg, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmFinalizarMovimentoPatrimonio = class(TFrmModeloFormulario)
    LabelFuncionario: TLabel;
    LabelDocumento: TLabel;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    EditSenha: TEdit;
    Button1: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label4: TLabel;
    EditObservacao: TEdit;
    EditDadosAdicionais: TEdit;
    Label5: TLabel;
    BitBtnConfirma: TBitBtn;
    BitBtnCancela: TBitBtn;
    BtnAutoriza: TButton;
    DspExecute: TDataSetProvider;
    CdsExecute: TClientDataSet;
    DsExecute: TDataSource;
    Label1: TLabel;
    EditMissao: TEdit;
    PanelDataDev: TPanel;
    Label2: TLabel;
    MaskEditData: TMaskEdit;
    SqlExecute: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure EditSenhaChange(Sender: TObject);
    procedure BtnAutorizaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinalizarMovimentoPatrimonio: TFrmFinalizarMovimentoPatrimonio;

implementation

uses DmPrincipal, Lib, MovimentoPatrimonio, DateUtils;

{$R *.dfm}

procedure TFrmFinalizarMovimentoPatrimonio.Button1Click(Sender: TObject);
begin
  inherited;

  ShowMessage('Em desenvolvimento...');

end;

procedure TFrmFinalizarMovimentoPatrimonio.EditSenhaChange(
  Sender: TObject);
begin
  inherited;
  BitBtnConfirma.Enabled := False;
end;

procedure TFrmFinalizarMovimentoPatrimonio.BtnAutorizaClick(Sender: TObject);
begin
  inherited;

  if PanelDataDev.Visible then
  begin

    if not DataValida(MaskEditData.Text) then
    begin

      ShowMessage('Informe uma data validada para devolução.');
      MaskEditData.SetFocus;
      Exit;
    end;

    if StrToDate(MaskEditData.Text)<Date then
    begin

      ShowMessage('Informe uma data maior ou igual a hoje.');
      MaskEditData.SetFocus;
      Exit;
    end;

  end;

  SqlExecute.SQL.Text := 'select nome_funcionario from funcionario '
    + 'where senha = ' + Qs(senha(EditSenha.Text))
    + ' and  id_funcionario=' + IntToStr(FrmMovimentoPatrimonio.DBLookupComboBoxFuncionario.KeyValue);

  with DsExecute.DataSet do
  begin
    Close;
    Open;
    if not IsEmpty then
    begin
      ShowMessage('Autorização confirmada pelo funcionário: ' + fieldbyname('nome_funcionario').AsString);
      BitBtnConfirma.Enabled := True;
      EditSenha.Enabled := False;
      BtnAutoriza.Enabled := False;
    end
    else
    begin
      ShowMessage('Senha não localizada.');
      EditSenha.Enabled := True;
      BtnAutoriza.Enabled := True;
      if EditSenha.CanFocus then
        EditSenha.SetFocus;
    end;
    Close;
  end;

end;

procedure TFrmFinalizarMovimentoPatrimonio.FormCreate(Sender: TObject);
begin
  inherited;
  MaskEditData.Text := FormatDateTime('DD/MM/YYYY',Date+1);
end;

end.

