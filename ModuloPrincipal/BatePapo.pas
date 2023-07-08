unit BatePapo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids,
  FMTBcd, SqlExpr, DB, DBClient, Provider, DBCtrls, ComCtrls, ToolWin,
  ActnMan, ActnCtrls, StdActns, BandActn, ExtActns, ActnList,
  StdStyleActnCtrls, ImgList;

type
  TFrmBatePapo = class(TFrmModeloFormulario)
    DBGridListaConexao: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    RadioGroupDialogo: TRadioGroup;
    DspFuncionario: TDataSetProvider;
    CdsFuncionario: TClientDataSet;
    DsFuncionario: TDataSource;
    SqlFuncionario: TSQLQuery;
    DBText1: TDBText;
    SqlExecute: TSQLQuery;
    Timer1: TTimer;
    SqlLeitura: TSQLQuery;
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileRun1: TFileRun;
    FileExit1: TFileExit;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    SearchReplace1: TSearchReplace;
    SearchFindFirst1: TSearchFindFirst;
    CustomizeActionBars1: TCustomizeActionBars;
    StdStyleActn: TAction;
    XPStyleActn: TAction;
    ShadowActn: TAction;
    FilePageSetup1: TFilePageSetup;
    MemoHistorico: TRichEdit;
    ActionToolBar1: TActionToolBar;
    MemoMensagem: TRichEdit;
    procedure RadioGroupDialogoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBatePapo: TFrmBatePapo;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmBatePapo.RadioGroupDialogoClick(Sender: TObject);
var
  sSql: string;
begin
  inherited;
  if RadioGroupDialogo.ItemIndex = 0 then
  begin
    sSql := 'select f.id_funcionario, f.nome_funcionario, c.IDCONEXAO,c.ip_maquina, c.data_hora_entrada from funcionario f join conexao c '
      + 'on (c.id_funcioanrio=f.id_funcionario and c.data_hora_entrada>=current_date and c.DATA_HORA_SAIDA is null)';
  end;

  if RadioGroupDialogo.ItemIndex = 1 then
  begin
    sSql := 'select f.id_funcionario, f.nome_funcionario from funcionario f join conexao c '
      + 'on (c.id_funcioanrio=f.id_funcionario and c.data_hora_entrada>=current_date and c.DATA_HORA_SAIDA is not null)';
  end;

  sSql := sSql + ' order by f.nome_funcionario';

  SqlFuncionario.SQL.Text := sSql;

  DsFuncionario.DataSet.Close;
  DsFuncionario.DataSet.Open;

end;

procedure TFrmBatePapo.FormShow(Sender: TObject);
begin
  inherited;
  RadioGroupDialogoClick(nil);
end;

procedure TFrmBatePapo.Button1Click(Sender: TObject);
begin
  inherited;
  try
    IniciaTransMovimento;
    DM.SQLConnect.ExecuteDirect(
      'insert into bate_papo (idbate_papo, idconexao, mensagem, lida, data_hora,idconexao_envio) values ('
      + '0, ' + inttostr(GLOBAL_IDCONEXAO) + ', ' + qs(MemoMensagem.Lines.Text) + ', ''N'', current_timestamp,' +
      DsFuncionario.DataSet.fieldbyname('IDCONEXAO').AsString + ')');
    FinalizaTransMovimento;
    MemoHistorico.Lines.Add('+++++++++++++++++++++++++++++++++++++++');
    MemoHistorico.Lines.Add('++++++++++++++VOCê ENVIOU++++++++++++++');
    MemoHistorico.Lines.Add(MemoMensagem.Lines.Text);
    MemoHistorico.Lines.Add('+++++++++++++++++++++++++++++++++++++++');
  except
    CancelaTransMovimento;
    ShowMessage('Mensagem não foi enviada.');
    MemoHistorico.Lines.Add('Não enviada:*****' + MemoMensagem.Lines.Text + '****');
  end;

  MemoMensagem.Lines.Clear;

end;

procedure TFrmBatePapo.Timer1Timer(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := false;
  SqlLeitura.SQL.Text := 'select first 1 b.idbate_papo, b.mensagem, b.data_hora, f.nome_funcionario, f.id_funcionario from bate_papo b '
    + ' join conexao c on (b.lida=''N'' and c.idconexao=b.idconexao_envio) '
    + ' join funcionario f on (c.id_funcioanrio=f.id_funcionario)'
    + ' where f.id_funcionario = ' + inttostr(GLOBAL_ID_FUNCIONARIO);

  SqlLeitura.Close;
  SqlLeitura.open;

  if SqlLeitura.IsEmpty then
  begin
    Timer1.Enabled := true;
    exit;
  end;

  DsFuncionario.DataSet.filter := 'id_funcionario = '+SqlLeitura.fieldbyname('id_funcionario').AsString;
  DsFuncionario.DataSet.filtered := false;
  DsFuncionario.DataSet.filtered := true;


  try

    IniciaTransMovimento;

    DM.SQLConnect.ExecuteDirect('update bate_papo b set b.data_hora_leitura=current_timestamp, b.lida=''S'' where idbate_papo='
      + SqlLeitura.fieldbyname('idbate_papo').AsString);
    FinalizaTransMovimento;
    MemoHistorico.Lines.Add('.......................................');
    MemoHistorico.Lines.Add('................RECEBEU................');
    if DsFuncionario.DataSet.IsEmpty then
    begin
      MemoHistorico.Lines.Add('.............DESCONECTADO..............');
      DsFuncionario.DataSet.filtered := false;
    end;
    MemoHistorico.Lines.Add('Envio as:' + FormatDateTime('dd/mm/yyyy hh:mm:ss.zzz', SqlLeitura.fieldbyname('data_hora').AsDateTime));
    MemoHistorico.Lines.Add('Recebido as:' + FormatDateTime('dd/mm/yyyy hh:mm:ss.zzz', now));
    MemoHistorico.Lines.Add('De:' + SqlLeitura.fieldbyname('nome_funcionario').AsString);
    MemoHistorico.Lines.Add(SqlLeitura.fieldbyname('mensagem').AsString);
    MemoHistorico.Lines.Add('.......................................');

  except
    CancelaTransMovimento;
  end;

  Timer1.Enabled := true;

end;

procedure TFrmBatePapo.FormCreate(Sender: TObject);
begin
  inherited;
  MemoHistorico.Lines.Clear;
  MemoMensagem.Lines.Clear;
end;

end.

