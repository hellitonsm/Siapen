unit MenuRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxChBox, frxOLE, frxDCtrl, frxDMPExport, frxCross,
  frxClass, frxADOComponents, frxBarcode, frxRich, frxExportCSV,
  frxExportImage, frxExportMail, frxGZip, frxCrypt, frxDesgn, frxExportODF,
  frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML, frxExportText,
  frxExportRTF, frxChart, frxDBSet, frxIBXComponents, FMTBcd,
  SqlExpr, Provider, DB, DBClient, Menus, FileCtrl, frxDBXComponents, Mask,
  frxExportXLSX, frxExportDOCX, frxExportBaseDialog;

type
  TFrmMenuRelatorio = class(TForm)
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxPDFExport1: TfrxPDFExport;
    frxODSExport1: TfrxODSExport;
    frxODTExport1: TfrxODTExport;
    frxCrypt1: TfrxCrypt;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxMailExport1: TfrxMailExport;
    frxGIFExport1: TfrxGIFExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport1: TfrxReport;
    frxRichObject1: TfrxRichObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxCrossObject1: TfrxCrossObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDialogControls1: TfrxDialogControls;
    frxOLEObject1: TfrxOLEObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    Button1: TButton;
    frxDesigner1: TfrxDesigner;
    frxIBXComponents1: TfrxIBXComponents;
    frxChartObject1: TfrxChartObject;
    ListBox1: TListBox;
    DsCadastro: TDataSource;
    CdsCadastro: TClientDataSet;
    DspCadastro: TDataSetProvider;
    SqlCadastro: TSQLQuery;
    frxDBDataset1: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Configurar1: TMenuItem;
    Designer1: TMenuItem;
    DirectoryListBox1: TDirectoryListBox;
    FilterComboBox1: TFilterComboBox;
    FileListBox2: TFileListBox;
    FileEdit: TEdit;
    Label1: TLabel;
    DirectoryListBoxTeste: TDirectoryListBox;
    frxDBXComponents1: TfrxDBXComponents;
    frxDOCXExport1: TfrxDOCXExport;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Designer1Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure DirectoryListBox1DblClick(Sender: TObject);
    procedure frxReport1BeforeConnect(Sender: TfrxCustomDatabase;
      var Connected: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuRelatorio: TFrmMenuRelatorio;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmMenuRelatorio.FormCreate(Sender: TObject);
begin

  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.ExecuteDirect('update conexao set tela_momento = ' + qs(Self.Caption)
        + ' where idconexao=' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;

  SetCurrentDir(GLOBAL_PATCH_SISTEMA);

  if PATH_MOMENTO = '' then
  begin
    PATH_MOMENTO := GLOBAL_PATCH_RELATORIO;
  end
  else
  begin
    if not DirectoryExists(PATH_MOMENTO) then
      PATH_MOMENTO := GLOBAL_PATCH_RELATORIO;
  end;

  if not DirectoryExists(PATH_MOMENTO) then
  begin
    ShowMessage('Não existe a pasta: ' + PATH_MOMENTO);
    DirectoryListBox1.Directory := GLOBAL_PATCH_SISTEMA;
    DirectoryListBoxTeste.Directory := GLOBAL_PATCH_SISTEMA;
  end
  else
  begin
    DirectoryListBoxTeste.Directory := PATH_MOMENTO;
    DirectoryListBox1.Directory := PATH_MOMENTO;
  end;

end;

procedure TFrmMenuRelatorio.Button1Click(Sender: TObject);
begin

  //SetCurrentDir(GLOBAL_PATCH_SISTEMA);

  if not DirectoryExists(PATH_MOMENTO) then
  begin
    ShowMessage('Não existe a pasta: ' + PATH_MOMENTO);
    Exit;
  end;

  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.ExecuteDirect('update conexao set tela_momento = ' + qs(copy(FileListBox2.FileName, 1, 99))
        + ' where idconexao=' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;

  frxReport1.LoadFromFile(FileListBox2.FileName);
  frxReport1.Variables.DeleteVariable('ID_UP');
  frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
  frxReport1.Variables.DeleteVariable('GLOBAL_ID_FUNCIONARIO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_FUNCIONARIO', GLOBAL_ID_FUNCIONARIO);
  frxReport1.Variables.DeleteVariable('GLOBAL_ID_INTERNO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_INTERNO', GLOBAL_ID_INTERNO);
  frxReport1.Variables.DeleteVariable('GLOBAL_IDAGENDA_ATENDIMENTO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_IDAGENDA_ATENDIMENTO', qs(GLOBAL_IDAGENDA_ATENDIMENTO));
  frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', QS(GLOBAL_ORGAO));
  frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO', Qs(GLOBAL_DEPARTAMENTO));
  frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA', Qs(GLOBAL_DIRETORIA));
  frxReport1.Variables.DeleteVariable('GLOBAL_PADRAO_SISTEMA');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PADRAO_SISTEMA', Qs(GLOBAL_PADRAO_SISTEMA));
  frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_1');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_1', Qs(GLOBAL_NIVEL_1));
  frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_2');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_2', Qs(GLOBAL_NIVEL_2));
  frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_3');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_3', Qs(GLOBAL_NIVEL_3));
  frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_4');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_4', Qs(GLOBAL_NIVEL_4));
  frxReport1.Variables.DeleteVariable('GLOBAL_ID_TRANSFERENCIA_INTERNO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_TRANSFERENCIA_INTERNO', GLOBAL_ID_TRANSFERENCIA_INTERNO);
  frxReport1.Variables.DeleteVariable('GLOBAL_ID_MUDANCA_CELA');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_MUDANCA_CELA', GLOBAL_ID_MUDANCA_CELA);

  if ContemValor('R', PERMISSAO_CONFERE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CONFERE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CONFERE', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_VISITANTE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_VISITANTE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_VISITANTE', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_TRABALHO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_TRABALHO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_TRABALHO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CADASTRO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CADASTRO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CADASTRO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_EDUCACAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_EDUCACAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_EDUCACAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PSICOSSOCIAL) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PSICOSSOCIAL');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PSICOSSOCIAL', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_JURIDICA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_JURIDICA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_JURIDICA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_DISCIPLINA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_DISCIPLINA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DISCIPLINA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_INTELIGENCIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_INTELIGENCIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_INTELIGENCIA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_ENFERMAGEM) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ENFERMAGEM');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ENFERMAGEM', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_FARMACIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_FARMACIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_FARMACIA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CLINICAMEDICA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CLINICAMEDICA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CLINICAMEDICA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PSICOLOGIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PSICOLOGIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PSICOLOGIA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PSIQUIATRIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PSIQUIATRIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PSIQUIATRIA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SAUDE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SAUDE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SAUDE', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_TERAPIAOCUPACIONAL');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_TERAPIAOCUPACIONAL', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_ODONTOLOGIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ODONTOLOGIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ODONTOLOGIA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PEDAGOGIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PEDAGOGIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PEDAGOGIA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SERVICOSOCIAL) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SERVICOSOCIAL');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SERVICOSOCIAL', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_ARMAS) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ARMAS');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ARMAS', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_MONITORAMENTO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_MONITORAMENTO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_MONITORAMENTO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_OCORRENCIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_OCORRENCIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_OCORRENCIA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CONSELHODISCIPLINAR');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CONSELHODISCIPLINAR', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_TRANSFERENCIAINTERNO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_TRANSFERENCIAINTERNO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_MUDANCACELA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_MUDANCACELA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_MUDANCACELA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SAIDAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SAIDAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SAIDAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CIRCULACAOINTERNO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CIRCULACAOINTERNO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CIRCULACAOINTERNO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_MOVIMENTOSEMIABERTO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_MOVIMENTOSEMIABERTO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_MOVIMENTOSEMIABERTO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_FUNCIONARIO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_FUNCIONARIO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_FUNCIONARIO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_FUNCAOFUNCIONARIO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_FUNCAOFUNCIONARIO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_FUNCAOFUNCIONARIO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_UNIDADEPENAL) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_UNIDADEPENAL');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_UNIDADEPENAL', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_HORARIOFUNCIONARIO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_HORARIOFUNCIONARIO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PADRAOSISTEMA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PADRAOSISTEMA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PADRAOSISTEMA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_EQUIPE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_EQUIPE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_EQUIPE', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_LOCALPOSTOTRABALHO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_LOCALPOSTOTRABALHO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_AGENTEPOREQUIPE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_AGENTEPOREQUIPE', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_REGRAVISITACAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_REGRAVISITACAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_REGRAVISITACAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PERFILUSUARIO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PERFILUSUARIO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PERFILUSUARIO', Qs('R'));
  end;




  if ContemValor('R', PERMISSAO_ADVOGADO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ADVOGADO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ADVOGADO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_VISITANTETRAFICO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_VISITANTETRAFICO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_VISITANTETRAFICO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_FACCAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_FACCAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_FACCAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CTC) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CTC');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CTC', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CORRESPONDENCIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CORRESPONDENCIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CORRESPONDENCIA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_AGENDAATENDIMENTO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_AGENDAATENDIMENTO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_LIVROREVISTA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_LIVROREVISTA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_LIVROREVISTA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PAVILHAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PAVILHAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PAVILHAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_GALERIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_GALERIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_GALERIA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SOLARIO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SOLARIO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SOLARIO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CELA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CELA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CELA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CONDICAOINTERNO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CONDICAOINTERNO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CONDICAOINTERNO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CIDADE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CIDADE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CIDADE', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_RACA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_RACA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_RACA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_ESCOLARIDADE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ESCOLARIDADE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ESCOLARIDADE', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_NACIONALIDADE) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_NACIONALIDADE');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NACIONALIDADE', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PROCEDENCIA) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PROCEDENCIA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PROCEDENCIA', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_DESTINO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_DESTINO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DESTINO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_FORNECEDOR) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_FORNECEDOR');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_FORNECEDOR', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PROFISSAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PROFISSAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PROFISSAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_FALTADISCIPLINAR) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_FALTADISCIPLINAR');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_FALTADISCIPLINAR', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SERIEFASEESTUDO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SERIEFASEESTUDO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SERIEFASEESTUDO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_PROCESSOCONDENACAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PROCESSOCONDENACAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_DETRACAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_DETRACAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DETRACAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_INTERRUPCAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_INTERRUPCAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_INTERRUPCAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_REMICAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_REMICAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_REMICAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_ARTIGOPENAL) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ARTIGOPENAL');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ARTIGOPENAL', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_VARAEXECUCAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_VARAEXECUCAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_VARAEXECUCAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_REMEDIO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_REMEDIO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_REMEDIO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_FUNCAOINTERNO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_FUNCAOINTERNO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_FUNCAOINTERNO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_CALCULOTRABALHO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_CALCULOTRABALHO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_CALCULOTRABALHO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_REMICAOTRABALHO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_REMICAOTRABALHO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_REMICAOTRABALHO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_ROUPAS) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ROUPAS');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ROUPAS', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_GRAUPARENTESCO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_GRAUPARENTESCO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_GRAUPARENTESCO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_TIPOCONTATO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_TIPOCONTATO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_TIPOCONTATO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_ASSUNTO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_ASSUNTO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ASSUNTO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SITUACAO) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SITUACAO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SITUACAO', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SETORTRABALHOCAD) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SETORTRABALHOCAD');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SETORTRABALHOCAD', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_EVENTOS) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_EVENTOS');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_EVENTOS', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_SUBEVENTOS) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_SUBEVENTOS');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_SUBEVENTOS', Qs('R'));
  end;

  if ContemValor('R', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    frxReport1.Variables.DeleteVariable('GLOBAL_MONITORAMENTOEVENTOS');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_MONITORAMENTOEVENTOS', Qs('R'));
  end;

  frxReport1.ShowReport();

end;

procedure TFrmMenuRelatorio.FormShow(Sender: TObject);
begin
  if not DirectoryExists(PATH_MOMENTO) then
  begin
    ShowMessage('Não existe a pasta: ' + PATH_MOMENTO);
    Exit;
  end;

  FileListBox2.SetFocus;
end;

procedure TFrmMenuRelatorio.Designer1Click(Sender: TObject);
begin
  if not DirectoryExists(PATH_MOMENTO) then
  begin
    ShowMessage('Não existe a pasta: ' + PATH_MOMENTO);
    Exit;
  end;

  frxReport1.LoadFromFile(FileListBox2.FileName);

  frxReport1.Variables.DeleteVariable('ID_UP');
  frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
  frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', QS(GLOBAL_ORGAO));
  frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO', Qs(GLOBAL_DEPARTAMENTO));
  frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA', Qs(GLOBAL_DIRETORIA));

  frxReport1.DesignReport;

end;

procedure TFrmMenuRelatorio.DirectoryListBox1Change(Sender: TObject);
begin

  if DirectoryExists(PATH_MOMENTO) then
  begin
    if Pos(DirectoryListBoxTeste.Directory, 'xx' + DirectoryListBox1.Directory) = 0 then
    begin
      DirectoryListBox1.Directory := DirectoryListBoxTeste.Directory;
    end;
  end;

end;

procedure TFrmMenuRelatorio.DirectoryListBox1DblClick(Sender: TObject);
begin
  //SetCurrentDir(GLOBAL_PATCH_SISTEMA);
end;

procedure TFrmMenuRelatorio.frxReport1BeforeConnect(
  Sender: TfrxCustomDatabase; var Connected: Boolean);
begin
//  ShowMessage(Sender.Name);
end;

procedure TFrmMenuRelatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PATH_MOMENTO := '';
end;

end.

