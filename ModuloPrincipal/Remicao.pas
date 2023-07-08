unit Remicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, adpDBDateTimePicker, Mask, Buttons;

type
  TFrmRemicao = class(TFrmModeloCadastro)
    Label2: TLabel;
    dbeditcodigo: TDBEdit;
    Label7: TLabel;
    DBLookupComboBoxNomeInterno: TDBLookupComboBox;
    Label4: TLabel;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    lbl7: TLabel;
    DBLookupComboBoxFuncionario: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBEdit7: TDBEdit;
    Label75: TLabel;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    DspConsulta: TDataSetProvider;
    SqlConsulta: TSQLQuery;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    SaveDialogDoc: TSaveDialog;
    OpenDialogDoc: TOpenDialog;
    BtnVisuzalizarDocDigitalizador: TBitBtn;
    BtnIncluirDocDigitalizado: TBitBtn;
    DBText1: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure CdsCadastroAfterInsert(DataSet: TDataSet);
    procedure NovoClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure SalvarClick(Sender: TObject);
    procedure BtnIncluirDocDigitalizadoClick(Sender: TObject);
    procedure BtnVisuzalizarDocDigitalizadorClick(Sender: TObject);
  private
    { Private declarations }
  public
    ID_INTERNO: integer;
    { Public declarations }
  end;

var
  FrmRemicao: TFrmRemicao;

implementation

uses DmPrincipal, Lib, VisualizadorOLE;

{$R *.dfm}

procedure TFrmRemicao.FormCreate(Sender: TObject);
begin
  inherited;

  ID_INTERNO := 0;
  SqlConsulta.Params[0].Value := GLOBAL_ID_UP;
  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DM.DsInterno.DataSet.Close;
  DM.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  DM.DsInterno.DataSet.Open;

  DM.dsfuncionario.DataSet.Close;
  DM.dsfuncionario.DataSet.OPEN;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_REMICAO)
    and not ContemValor('E', PERMISSAO_REMICAO)
    and not ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAO)
    and not ContemValor('E', PERMISSAO_REMICAO)
    and not ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAO)
    and ContemValor('E', PERMISSAO_REMICAO)
    and not ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAO)
    and ContemValor('E', PERMISSAO_REMICAO)
    and ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAO)
    and not ContemValor('E', PERMISSAO_REMICAO)
    and ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAO)
    and not ContemValor('E', PERMISSAO_REMICAO)
    and ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAO)
    and ContemValor('E', PERMISSAO_REMICAO)
    and not ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmRemicao.CdsCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DsCadastro.DataSet.fieldbyname('IDREMICAO').AsInteger := 0;
  DsCadastro.DataSet.fieldbyname('DATA_LANCAMENTO').AsDateTime := Date;
  DsCadastro.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;

end;

procedure TFrmRemicao.NovoClick(Sender: TObject);
begin
  inherited;
  if ID_INTERNO > 0 then
  begin
    DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger := ID_INTERNO;
  end;

end;

procedure TFrmRemicao.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.dataset do
  begin

    if not active then
      exit;

    if IsEmpty then
      exit;

    if not (state in [dsedit, dsinsert]) then
      exit;

  end;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_REMICAO)
    and not ContemValor('E', PERMISSAO_REMICAO)
    and not ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAO)
    and not ContemValor('E', PERMISSAO_REMICAO)
    and not ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAO)
    and ContemValor('E', PERMISSAO_REMICAO)
    and not ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAO)
    and ContemValor('E', PERMISSAO_REMICAO)
    and ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAO)
    and not ContemValor('E', PERMISSAO_REMICAO)
    and ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAO)
    and not ContemValor('E', PERMISSAO_REMICAO)
    and ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAO)
    and ContemValor('E', PERMISSAO_REMICAO)
    and not ContemValor('D', PERMISSAO_REMICAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmRemicao.SalvarClick(Sender: TObject);
begin

  if DsCadastro.DataSet.FieldByName('ID_INTERNO').AsInteger <= 0 then
  begin
    ShowMessage('Informe o interno!');
    exit;
  end;

  inherited;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmRemicao.BtnIncluirDocDigitalizadoClick(Sender: TObject);
var
  s_mensagem: array[0..1000] of Char;
begin
  inherited;

  try
    if DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString <> '' then
    begin

      StrPCopy(s_mensagem, 'Substituir este registro (' + DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString + ')?');

      if Application.MessageBox(s_mensagem,
        'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
      begin
        if OpenDialogDoc.Execute then
        begin
          DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString := ExtractFileName(OpenDialogDoc.FileName);
          try
            self.enabled := false;
            SalvarBlobDatabase(DsCadastro, 'ARQUIVO', OpenDialogDoc.FileName);
          except
          end;
          Self.Enabled := true;
        end;
      end;

    end
    else if OpenDialogDoc.Execute then
    begin
      DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString := ExtractFileName(OpenDialogDoc.FileName);
      try
        self.enabled := false;
        SalvarBlobDatabase(DsCadastro, 'ARQUIVO', OpenDialogDoc.FileName);
      except
      end;
      Self.Enabled := true;
    end;

    Self.SetFocus;

  except
    ShowMessage('Não gravou, tente novamente!');
  end;

end;

procedure TFrmRemicao.BtnVisuzalizarDocDigitalizadorClick(Sender: TObject);
var
  nome_arquivo: string;
  Dir: string;
  liberado_acesso: Boolean;
  s_mensagem: array[0..1000] of Char;
  s_senha_digitada: string;
  s_senha_calculada: string;
begin
  inherited;

  if DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString = '' then
  begin
    showmessage('Não existe arquivo.');
    exit;
  end;

  Dir := GLOBAL_MEUS_DOCUMENTOS + '\view\' + IntToStr(GLOBAL_ID_FUNCIONARIO) + '\';

  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);

  nome_arquivo := Dir + DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString;

  (DsCadastro.DataSet.FieldByName('ARQUIVO') as TBlobField).SaveToFile(nome_arquivo);
  if FileExists(nome_arquivo) then
  begin

    FrmVisualizadorOLE := TFrmVisualizadorOLE.Create(Application);

    with FrmVisualizadorOLE do
    begin
      ObjectFileName := nome_arquivo;
      JaFez := false;
      ShowModal;
    end;

    FreeAndNil(FrmVisualizadorOLE);

  end;

  DeleteFile(nome_arquivo);

end;

end.

