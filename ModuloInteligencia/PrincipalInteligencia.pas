unit PrincipalInteligencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Menus, ImgList, FMTBcd, DB, DBClient,
  Provider, SqlExpr, dbcgrids, DBCtrls, Buttons, ComCtrls, Grids, DBGrids,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmPrincipalInteligencia = class(TForm)
    Panel2: TPanel;
    Image2: TImage;
    LabelTitulo: TLabel;
    Image3: TImage;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    UnidadePenal1: TMenuItem;
    Funcionrios1: TMenuItem;
    PostodeTrabalho1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sobre1: TMenuItem;
    Sobre2: TMenuItem;
    Sair1: TMenuItem;
    N1: TMenuItem;
    ObservaesdoInterno1: TMenuItem;
    ImageList1: TImageList;
    EventosPorPlanto1: TMenuItem;
    N2: TMenuItem;
    Eventos1: TMenuItem;
    SubEventos1: TMenuItem;
    Panel1: TPanel;
    DspArquivos: TDataSetProvider;
    CdsArquivos: TClientDataSet;
    DsArquivos: TDataSource;
    Panel3: TPanel;
    DateTimePickerArquivos: TDateTimePicker;
    BtnAtualizarListaArquivos: TBitBtn;
    Label6: TLabel;
    PageControlRegistrosArquivos: TPageControl;
    TabSheet1: TTabSheet;
    DBCtrlGrid1: TDBCtrlGrid;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    SqlConcorrenciaFuncionarioold: TSQLQuery;
    DspConcorrenciaFuncionario: TDataSetProvider;
    CdsConcorrenciaFuncionario: TClientDataSet;
    DsConcorrenciaFuncionario: TDataSource;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    SqlConcorrenciaPenitenciariaold: TSQLQuery;
    DspConcorrenciaPenitenciaria: TDataSetProvider;
    CdsConcorrenciaPenitenciaria: TClientDataSet;
    DsConcorrenciaPenitenciaria: TDataSource;
    BtnVisualizarArquivo: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label8: TLabel;
    N3: TMenuItem;
    VisoGrficadeRelacionamentos1: TMenuItem;
    LocalizadordeEndereonoMapa1: TMenuItem;
    N4: TMenuItem;
    SqlConcorrenciaFuncionario: TFDQuery;
    SqlConcorrenciaPenitenciaria: TFDQuery;
    SqlArquivos: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure ObservaesdoInterno1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure UnidadePenal1Click(Sender: TObject);
    procedure EventosPorPlanto1Click(Sender: TObject);
    procedure PostodeTrabalho1Click(Sender: TObject);
    procedure Eventos1Click(Sender: TObject);
    procedure SubEventos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAtualizarListaArquivosClick(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnVisualizarArquivoClick(Sender: TObject);
    procedure DBText5DblClick(Sender: TObject);
    procedure VisoGrficadeRelacionamentos1Click(Sender: TObject);
    procedure LocalizadordeEndereonoMapa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipalInteligencia: TFrmPrincipalInteligencia;

implementation

uses Lib, DmPrincipal, CadastroInteligencia, CadastroFuncionario,
  CadastroUnidadePenal, PostoTrabalho, MonitoramentoEventos,
  CadastroEventos, CadastroSubEvento, MenuRelatorio, Sobre,
  VisualizadorOLE, RelacionamentoInterno, maps_google;

{$R *.dfm}

procedure TFrmPrincipalInteligencia.FormCreate(Sender: TObject);
var
  iComp: Integer;
begin

  for iComp := 0 to Componentcount - 1 do
    if (Components[iComp] is TSQLQuery) then
      TFDQuery(Components[iComp]).Connection := DM.SQLConnect;

  if (Screen.Width <= 800) and (Screen.Height <= 600) then
  begin
    Image1.Left := Trunc((Screen.Width - Image1.Width) / 2);
    Image1.Top := Trunc((Screen.Height - Image1.Height) / 2);
  end
  else
  begin
    Image1.Left := Trunc((Screen.Width - Image1.Width) / 2);
    Image1.Top := Trunc((Screen.Height - Image1.Height) / 2) - 40;
  end;

  if FileExists('LogoTela.jpg') then
    Image1.Picture.LoadFromFile('logotela.jpg');

  LabelTitulo.Caption := GLOBAL_DEPARTAMENTO;

  PageControlRegistrosArquivos.ActivePageIndex := 0;
  DateTimePickerArquivos.Date := date;
  BtnAtualizarListaArquivosClick(nil);

end;

procedure TFrmPrincipalInteligencia.ObservaesdoInterno1Click(
  Sender: TObject);
begin
  FrmCadastroInteligencia := TFrmCadastroInteligencia.Create(Application);
  FrmCadastroInteligencia.ShowModal;
  FreeAndNil(FrmCadastroInteligencia);

end;

procedure TFrmPrincipalInteligencia.Funcionrios1Click(Sender: TObject);
begin
  if (PERMISSAO_FUNCIONARIO = '') or (PERMISSAO_FUNCIONARIO = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('Não Há Permissão Para Acesso - ' + TMenuItem(Sender).Caption);

    Exit;
  end;

  FrmCadastrofuncionario := TFrmCadastrofuncionario.Create(Application);
  FrmCadastrofuncionario.ShowModal;
  FreeAndNil(FrmCadastrofuncionario);

end;

procedure TFrmPrincipalInteligencia.UnidadePenal1Click(Sender: TObject);
begin
  if (PERMISSAO_UNIDADEPENAL = '') or (PERMISSAO_UNIDADEPENAL = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('Não Há Permissão Para Acesso - ' + TMenuItem(Sender).Caption);

    Exit;
  end;

  FrmCadastroUnidadePenal := TFrmCadastroUnidadePenal.Create(Application);
  FrmCadastroUnidadePenal.ShowModal;
  FreeAndNil(FrmCadastroUnidadePenal);

end;

procedure TFrmPrincipalInteligencia.EventosPorPlanto1Click(
  Sender: TObject);
begin

  FrmMonitoramentoEventos := TFrmMonitoramentoEventos.Create(Application);
  FrmMonitoramentoEventos.ShowModal;
  FreeAndNil(FrmMonitoramentoEventos);

end;

procedure TFrmPrincipalInteligencia.PostodeTrabalho1Click(Sender: TObject);
begin
  FrmPostoTrabalho := TFrmPostoTrabalho.Create(Application);
  FrmPostoTrabalho.ShowModal;
  FreeAndNil(FrmPostoTrabalho);

end;

procedure TFrmPrincipalInteligencia.Eventos1Click(Sender: TObject);
begin
  FrmCadastroEventos := TFrmCadastroEventos.Create(Application);
  FrmCadastroEventos.ShowModal;
  FreeAndNil(FrmCadastroEventos);

end;

procedure TFrmPrincipalInteligencia.SubEventos1Click(Sender: TObject);
begin
  FrmCadastroSubEvento := TFrmCadastroSubEvento.Create(Application);
  FrmCadastroSubEvento.ShowModal;
  FreeAndNil(FrmCadastroSubEvento);

end;

procedure TFrmPrincipalInteligencia.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPrincipalInteligencia.Relatrios1Click(Sender: TObject);
begin
  FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
  FrmMenuRelatorio.ShowModal;
  FreeAndNil(FrmMenuRelatorio);

end;

procedure TFrmPrincipalInteligencia.Sobre2Click(Sender: TObject);
begin

  Frmsobre := TFrmsobre.Create(Application);
  Frmsobre.ShowModal;
  FreeAndNil(Frmsobre);

end;

procedure TFrmPrincipalInteligencia.FormActivate(Sender: TObject);
begin
  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.Execsql('update conexao set tela_momento = ' + qs(Self.Caption)
        + ' where idconexao=' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;

end;

procedure TFrmPrincipalInteligencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DsArquivos.DataSet.Close;

end;

procedure TFrmPrincipalInteligencia.BtnAtualizarListaArquivosClick(
  Sender: TObject);
begin

  SqlArquivos.ParamByName('DATA').AsDate := DateTimePickerArquivos.Date;
  DsArquivos.DataSet.Close;
  DsArquivos.DataSet.Open;

  SqlConcorrenciaFuncionario.ParamByName('DATA').AsDate := DateTimePickerArquivos.Date;
  DsConcorrenciaFuncionario.DataSet.Close;
  DsConcorrenciaFuncionario.DataSet.Open;

  SqlConcorrenciaPenitenciaria.ParamByName('DATA').AsDate := DateTimePickerArquivos.Date;
  DsConcorrenciaPenitenciaria.DataSet.Close;
  DsConcorrenciaPenitenciaria.DataSet.Open;

end;

procedure TFrmPrincipalInteligencia.DBCtrlGrid1PaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin

  if Odd(DBCtrlGrid1.DataSource.DataSet.RecNo) then
    DBCtrlGrid1.Color := clWhite
  else
    DBCtrlGrid1.Color := clSilver;

end;

procedure TFrmPrincipalInteligencia.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    TDBGrid(Sender).Canvas.Font.Color := clBlack;

    if odd(TDBGrid(Sender).DataSource.DataSet.Recno) then
    begin
      TDBGrid(Sender).Canvas.Brush.color := cl3DLight;
    end
    else
    begin
      TDBGrid(Sender).Canvas.Brush.color := clWhite;
    end;

    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  end
  else
  begin
    TDBGrid(Sender).Canvas.Brush.color := $00854F3F;
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end;

end;

procedure TFrmPrincipalInteligencia.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    TDBGrid(Sender).Canvas.Font.Color := clBlack;

    if odd(TDBGrid(Sender).DataSource.DataSet.Recno) then
    begin
      TDBGrid(Sender).Canvas.Brush.color := cl3DLight;
    end
    else
    begin
      TDBGrid(Sender).Canvas.Brush.color := clWhite;
    end;

    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  end
  else
  begin
    TDBGrid(Sender).Canvas.Brush.color := $00854F3F;
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end;

end;

procedure TFrmPrincipalInteligencia.BtnVisualizarArquivoClick(
  Sender: TObject);
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
    exit;

  //  liberado_acesso := (DsArquivos.DataSet.fieldbyname('id_funcionario').AsInteger = GLOBAL_ID_FUNCIONARIO);
  //
  //  if liberado_acesso then
  //  begin
  //
  //    s_senha_calculada := ConvSenhaLetra(FloatToStr(DsArquivos.DataSet.fieldbyname('idarquivos').AsInteger *
  //      DsArquivos.DataSet.fieldbyname('id_funcionario').AsInteger));
  //
  //    ShowMessage('Arquivo anexado por você: ' + DsArquivos.DataSet.fieldbyname('Funcionário').AsString + '.'
  //      + #10#13 + 'Senha de acesso para outros abrirem é: ' + s_senha_calculada);
  //
  //  end
  //  else
  //  begin
  //    while not liberado_acesso do
  //    begin
  //
  //      StrPCopy(s_mensagem, 'Arquivo anexado por ' + DsArquivos.DataSet.fieldbyname('Funcionário').AsString + '. Solicite a ele(a) a senha de acesso.'
  //        + #10#13 + 'Informar a senha?');
  //
  //      if Application.MessageBox(s_mensagem,
  //        'Confirme.', mb_YesNo + Mb_IconQuestion) <> idYes then
  //        Break;
  //
  //      s_senha_digitada := UpperCase(InputBox('Com letra maiúscula, informe a senha:', 'Com letra maiúscula, digite a senha informada pelo:' +
  //        DsArquivos.DataSet.fieldbyname('Funcionário').AsString, ''));
  //
  //      s_senha_calculada := ConvSenhaLetra(FloatToStr(DsArquivos.DataSet.fieldbyname('idarquivos').AsInteger *
  //        DsArquivos.DataSet.fieldbyname('id_funcionario').AsInteger));
  //
  //      liberado_acesso := (s_senha_digitada = s_senha_calculada);
  //
  //    end;
  //
  //    if not liberado_acesso then
  //      Exit;
  //
  //  end;

  Dir := GLOBAL_MEUS_DOCUMENTOS + '\view\' + IntToStr(GLOBAL_ID_FUNCIONARIO) + '\';

  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);

  nome_arquivo := Dir + DsArquivos.DataSet.FieldByName('descricao').AsString;

  DM.SqlExecute.SQL.TEXT := 'SELECT ARQUIVO FROM ARQUIVOS WHERE IDARQUIVOS=' + DsArquivos.DataSet.FieldByName('IDARQUIVOS').AsString;
  DM.DsExecute.DataSet.close;
  DM.DsExecute.DataSet.open;
  (DM.DsExecute.DataSet.FieldByName('arquivo') as TBlobField).SaveToFile(nome_arquivo);
  DM.DsExecute.DataSet.close;
  DM.SqlExecute.SQL.clear;

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

procedure TFrmPrincipalInteligencia.DBText5DblClick(Sender: TObject);
begin
  BtnVisualizarArquivoClick(nil);

end;

procedure TFrmPrincipalInteligencia.VisoGrficadeRelacionamentos1Click(
  Sender: TObject);
begin
  FrmRelacionamentoInterno := TFrmRelacionamentoInterno.Create(Application);
  FrmRelacionamentoInterno.ShowModal;
  FreeAndNil(FrmRelacionamentoInterno);
end;

procedure TFrmPrincipalInteligencia.LocalizadordeEndereonoMapa1Click(
  Sender: TObject);
begin
  Frmmapas_google := TFrmmapas_google.Create(Application);
  Frmmapas_google.ShowModal;
  FreeAndNil(Frmmapas_google);
end;

end.

