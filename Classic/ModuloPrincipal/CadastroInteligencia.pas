unit CadastroInteligencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, dbcgrids, jpeg, OleCtrls, SHDocVw, Menus, OleCtnrs;

const
  OffsetMemoryStream: Int64 = 0;

type
  TFrmCadastroInteligencia = class(TFrmModeloInterno)
    SQLinteligencia: TSQLQuery;
    DSPinteligencia: TDataSetProvider;
    CDSinteligencia: TClientDataSet;
    DSinteligencia: TDataSource;
    CDSinteligenciaID_INTELIGENCIA: TIntegerField;
    CDSinteligenciaID_INTERNO: TIntegerField;
    CDSinteligenciaDATA: TSQLTimeStampField;
    CDSinteligenciaDESCRICAO: TStringField;
    CDSinteligenciaID_FUNCIONARIO: TIntegerField;
    CDSinteligenciaFuncionrio: TStringField;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    SqlArquivos: TSQLQuery;
    DspArquivos: TDataSetProvider;
    CdsArquivos: TClientDataSet;
    DsArquivos: TDataSource;
    DBCtrlGrid3: TDBCtrlGrid;
    Label48: TLabel;
    Label50: TLabel;
    DBText2: TDBText;
    DBNavigator3: TDBNavigator;
    Panel1: TPanel;
    DBText3: TDBText;
    OpenDialogDoc: TOpenDialog;
    Label51: TLabel;
    CdsArquivosID_INTELIGENCIA: TIntegerField;
    CdsArquivosID_INTERNO: TIntegerField;
    CdsArquivosDATA: TSQLTimeStampField;
    CdsArquivosDESCRICAO: TStringField;
    CdsArquivosID_FUNCIONARIO: TIntegerField;
    CdsArquivosFuncionrio: TStringField;
    CdsArquivosARQUIVO: TBlobField;
    PopupMenuArquivo: TPopupMenu;
    GravarArquivo1: TMenuItem;
    RecuperarArquivo1: TMenuItem;
    N1: TMenuItem;
    SaveDialogDoc: TSaveDialog;
    DBEdit37: TDBEdit;
    CdsArquivosHISTORICO: TStringField;
    DBText4: TDBText;
    BtnVisualizarArquivo: TButton;
    BtnAnexar: TButton;
    Label15: TLabel;
    CdsArquivosSENHA: TStringField;
    DBText14: TDBText;
    BtnInformaSuaSenha: TButton;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    Button1: TButton;
    MemoDescricao: TMemo;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    CDSinteligenciaVISIVEL_TODOS: TStringField;
    CDSinteligenciaPARECER_INCLUSAO: TStringField;
    CDSinteligenciaSUGESTAO_ID_UP: TIntegerField;
    CDSinteligenciaUNIDADE: TStringField;
    DsUP: TDataSource;
    CdsUP: TClientDataSet;
    DspUP: TDataSetProvider;
    SqlUP: TSQLQuery;
    lbl11: TLabel;
    DBLookupComboBoxID_UP: TDBLookupComboBox;
    CheckBoxVisivel: TCheckBox;
    CheckBoxInclusao: TCheckBox;
    Labeldecisao: TLabel;
    ComboBoxdecisaoparecer: TComboBox;
    Label14: TLabel;
    CDSinteligenciaDECISAO_PARECER: TStringField;
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSinteligenciaAfterInsert(DataSet: TDataSet);
    procedure CdsArquivosAfterInsert(DataSet: TDataSet);
    procedure RecuperarArquivo1Click(Sender: TObject);
    procedure BtnVisualizarArquivoClick(Sender: TObject);
    procedure DBText3DblClick(Sender: TObject);
    procedure BtnAnexarClick(Sender: TObject);
    procedure CdsArquivosCalcFields(DataSet: TDataSet);
    procedure BtnInformaSuaSenhaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure CheckBoxInclusaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroInteligencia: TFrmCadastroInteligencia;

implementation

uses DmPrincipal, Lib, Math, VisualizadorOLE, MensagemTexto, Aguarde;

{$R *.dfm}

procedure TFrmCadastroInteligencia.SalvarClick(Sender: TObject);
begin
  inherited;

  DSinteligencia.DataSet.Close;
  DSinteligencia.DataSet.OPEN;

  DsArquivos.DataSet.Close;
  DsArquivos.DataSet.OPEN;

end;

procedure TFrmCadastroInteligencia.FormCreate(Sender: TObject);
begin
  inherited;

  DSinteligencia.DataSet.Close;
  DSinteligencia.DataSet.Open;

  DsArquivos.DataSet.Close;
  DsArquivos.DataSet.Open;

  DsUP.DataSet.Close;
  DsUP.DataSet.Open;

end;

procedure TFrmCadastroInteligencia.CDSinteligenciaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DSinteligencia.DataSet.fieldbyname('id_inteligencia').AsInteger := 0;
  DSinteligencia.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSinteligencia.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSinteligencia.DataSet.fieldbyname('data').AsDateTime := Date;

end;

procedure TFrmCadastroInteligencia.CdsArquivosAfterInsert(
  DataSet: TDataSet);
begin

  inherited;

  DsArquivos.DataSet.fieldbyname('idarquivos').AsInteger := DBGenerator('idarquivos');
  DsArquivos.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DsArquivos.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DsArquivos.DataSet.fieldbyname('data').AsDateTime := Date;

  DsArquivos.DataSet.fieldbyname('HISTORICO').AsString := '(Digite um histórico)';
  if Application.MessageBox('Senha livre? Mostrar a senha no histórico?',
    'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
    DsArquivos.DataSet.fieldbyname('HISTORICO').AsString := 'Senha: ' + ConvSenhaLetra(FloatToStr(DsArquivos.DataSet.fieldbyname('idarquivos').AsInteger *
      DsArquivos.DataSet.fieldbyname('id_funcionario').AsInteger));

  if OpenDialogDoc.Execute then
  begin
    DsArquivos.DataSet.FieldByName('descricao').AsString := ExtractFileName(OpenDialogDoc.FileName);
    try
      self.enabled := false;
      SalvarBlobDatabase(DsArquivos, 'arquivo', OpenDialogDoc.FileName);
      DsArquivos.DataSet.Post;
    except
    end;
    Self.Enabled := true;
  end;

end;

procedure TFrmCadastroInteligencia.RecuperarArquivo1Click(Sender: TObject);
var
  Comando: array[0..1024] of Char;
begin
  inherited;

  SaveDialogDoc.DefaultExt := ExtractFileExt(DsArquivos.DataSet.FieldByName('descricao').AsString);
  SaveDialogDoc.FileName := Copy(DsArquivos.DataSet.FieldByName('descricao').AsString, 1,
    Pos(SaveDialogDoc.DefaultExt, DsArquivos.DataSet.FieldByName('descricao').AsString) - 1);

  SaveDialogDoc.Filter := 'Arquivos *' + SaveDialogDoc.DefaultExt + ' |*' +
    SaveDialogDoc.DefaultExt;

  if SaveDialogDoc.Execute then
  begin
    //    SalvarBlobDisco(DsArquivos, 'arquivo', SaveDialogDoc.FileName);
    (DsArquivos.DataSet.FieldByName('arquivo') as
      TBlobField).SaveToFile(SaveDialogDoc.FileName);
    StrPCopy(Comando, SaveDialogDoc.FileName);
    //WinExec(Comando, SW_SHOW);
  end;

end;

procedure TFrmCadastroInteligencia.BtnVisualizarArquivoClick(Sender: TObject);
var
  nome_arquivo: string;
  Dir: string;
  liberado_acesso: Boolean;
  s_mensagem: array[0..1000] of Char;
  s_senha_digitada: string;
  s_senha_calculada: string;
begin
  inherited;

  if not DsArquivos.DataSet.Active then
    Exit;

  if DsArquivos.DataSet.IsEmpty then
    Exit;

  if DsArquivos.DataSet.fieldbyname('idarquivos').AsInteger <= 0 then
  begin
    showmessage('Não pode visualizar antes de salvar dados do interno.');
    exit;
  end;

  Dir := GLOBAL_MEUS_DOCUMENTOS + '\view\' + IntToStr(GLOBAL_ID_FUNCIONARIO) + '\';

  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);

  nome_arquivo := Dir + DsArquivos.DataSet.FieldByName('descricao').AsString;

  (DsArquivos.DataSet.FieldByName('arquivo') as TBlobField).SaveToFile(nome_arquivo);
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

procedure TFrmCadastroInteligencia.DBText3DblClick(Sender: TObject);
begin
  inherited;

  BtnVisualizarArquivo.OnClick(nil);

end;

procedure TFrmCadastroInteligencia.BtnAnexarClick(Sender: TObject);
var
  s_mensagem: array[0..1000] of Char;
begin
  inherited;
  try
    if not (DsArquivos.DataSet.State in [dsedit, dsinsert]) then
    begin
      DsArquivos.DataSet.Append;
    end
    else
    begin
      if OpenDialogDoc.Execute then
      begin
        DsArquivos.DataSet.FieldByName('descricao').AsString := ExtractFileName(OpenDialogDoc.FileName);
        try
          self.enabled := false;
          SalvarBlobDatabase(DsArquivos, 'arquivo', OpenDialogDoc.FileName);
          DsArquivos.DataSet.Post;
        except
        end;
        Self.Enabled := true;
      end;
    end;

    Self.SetFocus;

  except
    ShowMessage('Não gravou, tente novamente!');
  end;

end;

procedure TFrmCadastroInteligencia.CdsArquivosCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (DsArquivos.DataSet.fieldbyname('idarquivos').AsInteger = 0) then
  begin
    DataSet.FieldByName('senha').AsString := 'Aguardando Salvar...';
  end
  else
  begin

    DataSet.FieldByName('senha').AsString := 'Senha: ******';

    if (DsArquivos.DataSet.fieldbyname('id_funcionario').AsInteger = GLOBAL_ID_FUNCIONARIO) then
    begin
      DataSet.FieldByName('senha').AsString := 'Senha: ' + ConvSenhaLetra(FloatToStr(DsArquivos.DataSet.fieldbyname('idarquivos').AsInteger *
        DsArquivos.DataSet.fieldbyname('id_funcionario').AsInteger))
    end;

  end;

end;

procedure TFrmCadastroInteligencia.BtnInformaSuaSenhaClick(
  Sender: TObject);
begin
  inherited;
  //
  with DsArquivos.DataSet do
  begin
    if not Active then
      Exit;
    if IsEmpty then
      Exit;

    FrmMensagemTexto := TFrmMensagemTexto.Create(Application);
    First;
    FrmMensagemTexto.Memo1.Lines.Clear;
    FrmMensagemTexto.Memo1.Lines.Add('------------------------------------------------------------------------------------------------------------------------');
    FrmMensagemTexto.Memo1.Lines.Add('Nome do Interno:' + DsCadastro.DataSet.fieldbyname('NOME_INTERNO').AsString);
    FrmMensagemTexto.Memo1.Lines.Add('------------------------------------------------------------------------------------------------------------------------');
    while not Eof do
    begin
      FrmMensagemTexto.Memo1.Lines.Add('Arquivo:' + fieldbyname('DESCRICAO').AsString
        + ' Responsável:' + fieldbyname('Funcionário').AsString);
      FrmMensagemTexto.Memo1.Lines.Add('       >>>' + fieldbyname('SENHA').AsString);
      Next;
    end;
    First;

    FrmMensagemTexto.ShowModal;
    FreeAndNil(FrmMensagemTexto);

  end;

end;

procedure TFrmCadastroInteligencia.Button1Click(Sender: TObject);
begin
  inherited;

  if CheckBoxInclusao.Checked then
  begin
    if ComboBoxdecisaoparecer.Text = '' then
    begin
      showmessage('Favor Informar a Decisão do Parecer!');
      exit;
    end;
  end;

  DSinteligencia.DataSet.Append;
  DSinteligencia.DataSet.fieldbyname('ID_INTELIGENCIA').AsInteger := 0;
  DSinteligencia.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSinteligencia.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSinteligencia.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  DSinteligencia.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  DSinteligencia.DataSet.fieldbyname('SUGESTAO_ID_UP').AsVariant := DBLookupComboBoxID_UP.KeyValue;

  DSinteligencia.DataSet.fieldbyname('VISIVEL_TODOS').AsString := 'N';
  if CheckBoxVisivel.Checked then
    DSinteligencia.DataSet.fieldbyname('VISIVEL_TODOS').AsString := 'S';

  DSinteligencia.DataSet.fieldbyname('PARECER_INCLUSAO').AsString := 'N';
  if CheckBoxInclusao.Checked then
  begin
    DSinteligencia.DataSet.fieldbyname('PARECER_INCLUSAO').AsString := 'S';
    DSinteligencia.DataSet.fieldbyname('decisao_parecer').AsString := ComboBoxdecisaoparecer.Text;
  end;
  DSinteligencia.DataSet.Post;

  MemoDescricao.Lines.Clear;
  DBLookupComboBoxID_UP.KeyValue := null;
 // CheckBoxVisivel.Checked := false;
 // CheckBoxInclusao.Checked := false;
  ComboBoxdecisaoparecer.ItemIndex := -1;

end;

procedure TFrmCadastroInteligencia.EditarClick(Sender: TObject);
begin
  inherited;
  DateTimePickerHistorico.Date := Date;
end;

procedure TFrmCadastroInteligencia.DBGridConsultaDblClick(Sender: TObject);
begin
  inherited;
  DateTimePickerHistorico.Date := Date;
end;

procedure TFrmCadastroInteligencia.CheckBoxInclusaoClick(Sender: TObject);
begin
  inherited;
  {Verificar se for parcer de inclusao, liberar o combo para informar a decisao}
  if CheckBoxInclusao.Checked = true then
  begin
    Labeldecisao.Visible := true;
    ComboBoxdecisaoparecer.Visible := true;
  end
  else
  begin
    Labeldecisao.Visible := false;
    ComboBoxdecisaoparecer.Visible := false;
  end;
end;

procedure TFrmCadastroInteligencia.FormShow(Sender: TObject);
begin
  inherited;
  PageControlPrincipal.ActivePageIndex := 2;
end;

end.

