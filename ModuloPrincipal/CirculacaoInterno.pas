unit CirculacaoInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, adpDBDateTimePicker, Mask, Buttons, Menus;

type
  TFrmCirculacaoInterno = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    DBLookupComboBoxup: TDBLookupComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    SQLvinccirculacaopreso: TSQLQuery;
    dspvinccirculacaopreso: TDataSetProvider;
    cdsvinccirculacaopreso: TClientDataSet;
    dsvinccirculacaopreso: TDataSource;
    cdsvinccirculacaopresoID_VINC_CIRCULACAO_PRESO: TIntegerField;
    cdsvinccirculacaopresoID_CIRCULACAO_PRESO: TIntegerField;
    cdsvinccirculacaopresoID_INTERNO: TIntegerField;
    cdsvinccirculacaopresoHORA_ENTRADA: TTimeField;
    cdsvinccirculacaopresoHORA_SAIDA: TTimeField;
    cdsvinccirculacaopresoID_FUNCIONARIO: TIntegerField;
    cdsvinccirculacaopresoOBS: TStringField;
    cdsvinccirculacaopresoFuncionrio: TStringField;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    Label10: TLabel;
    DBLookupComboBoxinterno: TDBLookupComboBox;
    Button1: TButton;
    lbl12: TLabel;
    DBLookupComboBoxID_FUNCIONARIO: TDBLookupComboBox;
    Btnincluir: TBitBtn;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    cdsvinccirculacaopresoID_POSTO_LOCAL: TIntegerField;
    cdsvinccirculacaopresoSetor: TStringField;
    Label56: TLabel;
    Memoobs: TMemo;
    EditMATRICULA: TEdit;
    Label6: TLabel;
    PopupMenuIsolamento: TPopupMenu;
    Liberar1: TMenuItem;
    DBGrid2: TDBGrid;
    SQLvincgeral: TSQLQuery;
    dspvincgeral: TDataSetProvider;
    cdsvincgeral: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    TimeField1: TTimeField;
    TimeField2: TTimeField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    StringField3: TStringField;
    IntegerField5: TIntegerField;
    StringField4: TStringField;
    dsvincgeral: TDataSource;
    cdsvinccirculacaopresoNOME_INTERNO: TStringField;
    cdsvincgeralNOME_INTERNO: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure BtnincluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EditMATRICULAExit(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCirculacaoInterno: TFrmCirculacaoInterno;

implementation

uses DmPrincipal, Lib, PostoTrabalho, SenhaFuncionario;

{$R *.dfm}

procedure TFrmCirculacaoInterno.Button1Click(Sender: TObject);

var
  interno: variant;
begin
  inherited;
  interno := BuscaGeral(nil, 'INTERNO', '', 100, 100, self.Width, 400);
  if VarToStrDef(interno, '') <> '' then
  begin
    DBLookupComboBoxInterno.KeyValue := interno;
    //    Editprontuario.Text := DM.DsInterno.dataset.fieldbyname('RGI').asstring;
    //    if Editprontuario.CanFocus then
    //      Editprontuario.SetFocus;
  end;

end;

procedure TFrmCirculacaoInterno.BtnincluirClick(Sender: TObject);
var
  funcionario, contfuncionario: integer;
begin
  inherited;
  contfuncionario := 0;

  if DBLookupComboBoxinterno.KeyValue = null then
  begin
    showmessage('Digite o Interno!');
    exit;
  end;

  if DBLookupComboBoxPostoTrabalho.KeyValue = null then
  begin
    showmessage('Digite o Setor!');
    exit;
  end;

  if DBLookupComboBoxID_FUNCIONARIO.KeyValue = null then
  begin
    showmessage('Digite o Funcionário!');
    exit;
  end;

  if EditMATRICULA.Text = '' then
  begin
    showmessage('Digite a Matrícula do Funcionário Escoltante!');
    exit;
  end;
  funcionario := dsvinccirculacaopreso.DataSet.FieldByName('id_funcionario').AsInteger;

  dsvinccirculacaopreso.DataSet.First;
  while not dsvinccirculacaopreso.DataSet.Eof do
  begin
    if (funcionario = dsvinccirculacaopreso.DataSet.FieldByName('id_funcionario').AsInteger) and
      (dsvinccirculacaopreso.DataSet.FieldByName('hora_entrada').AsString = '') then
      contfuncionario := contfuncionario + 1;

    dsvinccirculacaopreso.DataSet.Next;
  end;

  if contfuncionario > 1 then
  begin
    ShowMessage('Funcionário Escoltando Mais de 2 Interno!');
    if EditMATRICULA.CanFocus then
      EditMATRICULA.SetFocus;
  end
  else
  begin
    dsvinccirculacaopreso.DataSet.Append;
    dsvinccirculacaopreso.DataSet.fieldbyname('ID_VINC_CIRCULACAO_PRESO').AsInteger := 0;
    dsvinccirculacaopreso.DataSet.fieldbyname('ID_CIRCULACAO_PRESO').AsInteger :=
      DsCadastro.DataSet.fieldbyname('ID_CIRCULACAO_PRESO').AsInteger;
    dsvinccirculacaopreso.DataSet.fieldbyname('hora_saida').AsString := FormatDateTime('hh:mm', now);
    dsvinccirculacaopreso.DataSet.fieldbyname('id_funcionario').AsString := DBLookupComboBoxID_FUNCIONARIO.KeyValue;
    dsvinccirculacaopreso.DataSet.fieldbyname('id_posto_local').AsString := DBLookupComboBoxPostoTrabalho.KeyValue;
    dsvinccirculacaopreso.DataSet.fieldbyname('ID_interno').AsInteger := DBLookupComboBoxinterno.KeyValue;
    dsvinccirculacaopreso.DataSet.fieldbyname('obs').AsString := Memoobs.Lines.Text;
    dsvinccirculacaopreso.DataSet.Post;

    DBLookupComboBoxPostoTrabalho.KeyValue := null;
    DBLookupComboBoxID_FUNCIONARIO.KeyValue := null;
    DBLookupComboBoxinterno.KeyValue := null;
    Memoobs.Lines.Clear;
    editmatricula.text := '';
  end;
end;

procedure TFrmCirculacaoInterno.FormCreate(Sender: TObject);
begin
  inherited;
  dm.DsUP.DataSet.Close;
  dm.DsUP.DataSet.OPEN;

  dsvinccirculacaopreso.DataSet.Close;
  dsvinccirculacaopreso.DataSet.OPEN;

  dsvincgeral.DataSet.Close;
  dsvincgeral.DataSet.OPEN;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCirculacaoInterno.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.fieldbyname('id_CIRCULACAO_PRESO').AsInteger := DBGenerator('id_CIRCULACAO_PRESO');
  DsCadastro.DataSet.fieldbyname('id_up').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.FieldByName('data').AsDateTime := date;

end;

procedure TFrmCirculacaoInterno.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  FrmPostoTrabalho := TFrmPostoTrabalho.create(Application);
  FrmPostoTrabalho.showmodal;
  FreeAndNil(FrmPostoTrabalho);

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;
end;

procedure TFrmCirculacaoInterno.EditMATRICULAExit(Sender: TObject);
begin
  inherited;
  if EditMATRICULA.Text <> '' then
  begin

    Frmsenhafuncionario := TFrmsenhafuncionario.Create(Self);
    Frmsenhafuncionario.ShowModal;

    DM.SqlExecute.sql.text := 'SELECT f.nome_funcionario, f.id_funcionario FROM funcionario f where f.matricula =' + Qs(EditMATRICULA.Text)
      + ' and f.id_up = ' + IntToStr(GLOBAL_ID_UP) + 'and f.senha = ' + QS(Senha(Frmsenhafuncionario.Edit1.Text));
    DM.DsExecute.dataset.close;
    DM.DsExecute.dataset.open;

    FreeAndNil(Frmsenhafuncionario);

    if DM.DsExecute.dataset.recordcount > 0 then
    begin
      DBLookupComboBoxID_FUNCIONARIO.KeyValue := DM.DsExecute.DataSet.fieldbyname('id_funcionario').AsInteger;
      if Memoobs.CanFocus then
        Memoobs.SetFocus;
    end
    else
    begin
      showmessage('Funcionário e/ou Senha Inválido!');
      if EditMATRICULA.canfocus then
        EditMATRICULA.SetFocus;
    end;

    DM.DsExecute.dataset.close;

  end;

end;

procedure TFrmCirculacaoInterno.Liberar1Click(Sender: TObject);
begin
  inherited;

  if MessageDlg('Confirma Entrada do Interno?', mtConfirmation, [mbYes, mbno], 0) = mryes then
  begin
    dsvinccirculacaopreso.DataSet.Edit;
    dsvinccirculacaopreso.DataSet.FieldByName('hora_entrada').AsString := FormatDateTime('hh:mm', now);
    dsvinccirculacaopreso.DataSet.Post;
  end;

end;

procedure TFrmCirculacaoInterno.SalvarClick(Sender: TObject);
begin
  inherited;
  
  dsvinccirculacaopreso.DataSet.Close;
  dsvinccirculacaopreso.DataSet.OPEN;

  dsvincgeral.DataSet.Close;
  dsvincgeral.DataSet.OPEN;

end;

procedure TFrmCirculacaoInterno.FormShow(Sender: TObject);
begin
  inherited;
  DBGridConsulta.SelectedIndex := 2;
end;

procedure TFrmCirculacaoInterno.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CIRCULACAOINTERNO)
    and ContemValor('E', PERMISSAO_CIRCULACAOINTERNO)
    and not ContemValor('D', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

