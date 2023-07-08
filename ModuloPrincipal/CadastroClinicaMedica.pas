unit CadastroClinicaMedica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, Menus, jpeg, dbcgrids;

type
  TFrmCadastroClinicaMedica = class(TFrmModeloInterno)
    SQLclinicamedica: TSQLQuery;
    DSPclinicamedica: TDataSetProvider;
    CDSclinicamedica: TClientDataSet;
    DSclinicamedica: TDataSource;
    TabSheet1: TTabSheet;
    DateTimePickerHistorico: TDateTimePicker;
    Label53: TLabel;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    CDSclinicamedicaID_HISTORICO_CLINICA_MEDICA: TIntegerField;
    CDSclinicamedicaDESCRICAO: TStringField;
    CDSclinicamedicaDATA: TSQLTimeStampField;
    CDSclinicamedicaID_FUNCIONARIO: TIntegerField;
    CDSclinicamedicaID_INTERNO: TIntegerField;
    CDSclinicamedicaFUNCIONRIO: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroClinicaMedica: TFrmCadastroClinicaMedica;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroClinicaMedica.Button1Click(Sender: TObject);
begin
  inherited;
  
  DSclinicamedica.DataSet.Append;
  DSclinicamedica.DataSet.fieldbyname('ID_HISTORICO_CLINICA_MEDICA').AsInteger := 0;
  DSclinicamedica.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSclinicamedica.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSclinicamedica.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  DSclinicamedica.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  DSclinicamedica.DataSet.Post;

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroClinicaMedica.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin
  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DSclinicamedica.DataSet.State in [dsedit, dsinsert] then
      DSclinicamedica.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DSclinicamedica.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    DSclinicamedica.DataSet.Refresh;
    PanelCadastro.Enabled := False;
    ShowMessage('Registro Salvo com Sucesso!');
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;

  PageControlPrincipal.ActivePageIndex := 0;

  DSclinicamedica.DataSet.Close;
  DSclinicamedica.DataSet.OPEN;
end;

procedure TFrmCadastroClinicaMedica.FormShow(Sender: TObject);
begin
  inherited;
  DSclinicamedica.DataSet.Close;
  DSclinicamedica.DataSet.OPEN;

  DateTimePickerHistorico.Date := Date;
end;

procedure TFrmCadastroClinicaMedica.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroClinicaMedica.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CLINICAMEDICA)
    and ContemValor('E', PERMISSAO_CLINICAMEDICA)
    and not ContemValor('D', PERMISSAO_CLINICAMEDICA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroClinicaMedica.CancelarClick(Sender: TObject);
begin
  inherited;
  DSclinicamedica.DataSet.Close;
  DSclinicamedica.DataSet.OPEN;
end;

procedure TFrmCadastroClinicaMedica.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.
