unit CadastroOcorrenciaPlantao;
// Cadastra todas as ocorr�ncias dos Adjuntos no plant�o.
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls,
  ToolWin, adpDBDateTimePicker, Buttons, frxClass, Menus, System.ImageList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxDBXComponents;

type
  TFrmCadastroOcorrenciaPlantao = class(TFrmModeloCadastro)
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    adpDBDateTimePicker2: TadpDBDateTimePicker;
    DBMemo1: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo2: TDBMemo;
    LabelLOGIN: TLabel;
    LabelUP: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    EditProntuario: TEdit;
    CdsHistOcoInt: TClientDataSet;
    DspHistOcoInt: TDataSetProvider;
    DSHistOcoInt: TDataSource;
    CdsNaturezaOcorrencia: TClientDataSet;
    DspNaturezaOcorrencia: TDataSetProvider;
    DSNaturezaOcorrencia: TDataSource;
    Label8: TLabel;
    CdsNaturezaOcorrenciaNATUREZA_OCORRENCIA: TStringField;
    CdsNaturezaOcorrenciaID_NATUREZA_OCORRENCIA: TIntegerField;
    DBLookupComboBox3: TDBLookupComboBox;
    Button1: TButton;
    CdsHistOcoIntPront: TStringField;
    Label12: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    MainMenu1: TMainMenu;
    Relatrios1: TMenuItem;
    Especficos1: TMenuItem;
    Imprimir: TToolButton;
    RadioGroupTipoLocalizar: TRadioGroup;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    Button2: TButton;
    CdsCadastroID_OCORRENCIA_PLANTAO: TIntegerField;
    CdsCadastroASSUNTO: TStringField;
    CdsCadastroOCORRENCIA: TStringField;
    CdsCadastroDATA_INICIO: TSQLTimeStampField;
    CdsCadastroDATA_FINAL: TSQLTimeStampField;
    CdsCadastroID_FUNCIONARIO: TIntegerField;
    CdsCadastroID_UP: TIntegerField;
    CdsCadastroDESPACHO: TStringField;
    CdsCadastroOBS: TStringField;
    CdsCadastroID_FUNC_AUX: TIntegerField;
    CdsCadastroID_NATUREZA_OCORRENCIA: TIntegerField;
    ButtonInserir: TButton;
    FrxOcorrrenciaPlantao: TfrxReport;
    DspInterno: TDataSetProvider;
    CdsInterno: TClientDataSet;
    DsInterno: TDataSource;
    CdsHistOcoIntNome_Interno: TStringField;
    CdsHistOcoIntID_HIST_OC: TIntegerField;
    CdsHistOcoIntID_INTERNO: TIntegerField;
    CdsHistOcoIntID_OCORRENCIA_PLANTAO: TIntegerField;
    CdsHistOcoIntDATA: TSQLTimeStampField;
    CdsHistOcoIntRGI: TStringField;
    CdsInternoID_INTERNO: TIntegerField;
    CdsInternoNOME_INTERNO: TStringField;
    CdsInternoRGI: TStringField;
    SqlHistOcoInt: TFDQuery;
    SqlNaturezaOcorrencia: TFDQuery;
    SqlConsulta: TFDQuery;
    SqlInterno: TFDQuery;
    frxDBXComponents1: TfrxDBXComponents;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditProntuarioExit(Sender: TObject);
    procedure BitBtnInserirClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Especficos1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ImprimirClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ButtonInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroOcorrenciaPlantao: TFrmCadastroOcorrenciaPlantao;

implementation

uses Lib, DmPrincipal, CadastroNaturezaOcorrencia, MenuRelatorio;

{$R *.dfm}

// Utiliza as globais do programa para capturar o funcionario e a unidade penal
procedure TFrmCadastroOcorrenciaPlantao.NovoClick(Sender: TObject);
var
     Chave1, Chave2, Ano : String;
     Codigo : Integer;
begin
  inherited;
{  Chave1:= IntToStr(GLOBAL_ID_UP);
  Chave2:= IntToStr(DBGenerator('ID_OCORRENCIA_PLANTAO'));
  Ano:= FormatDateTime('yy',Date);
  Codigo:= StrToInt(Concat(Chave1,Chave2,Ano));
  DSCadastro.DataSet.FieldByName('ID_OCORRENCIA_PLANTAO').AsInteger := Codigo;}
  GLOBAL_DATA := adpDBDateTimePicker1.Date;
  DSCadastro.DataSet.FieldByName('ID_OCORRENCIA_PLANTAO').AsInteger := DBGenerator('ID_OCORRENCIA_PLANTAO');
  DSCadastro.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSCadastro.DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.FieldByName('DATA_INICIO').AsDateTime := date;
  DsCadastro.DataSet.FieldByName('DATA_FINAL').AsDateTime := date;

end;

procedure TFrmCadastroOcorrenciaPlantao.FormCreate(Sender: TObject);
begin
  inherited;
  DM.DsFuncionarioLista.DataSet.Close;
  DM.DsFuncionarioLista.DataSet.Open; // Abre a lista de funcionarios para o DBLookupComboBox1

  DsNaturezaOcorrencia.DataSet.Close;  // Todos os dataset do formul�rios devem ser fechados e abertos no FormCreate
  DsNaturezaOcorrencia.DataSet.Open;

  // Abre a lista de internos todos os internos ativos e inativos para o DBLookupComboBox2
  DsInterno.DataSet.Close;
  SqlInterno.Sql.Clear;
  SqlInterno.Sql.Text := 'select id_interno, nome_interno, rgi from interno where id_up = ' + IntToStr(GLOBAL_ID_UP)+ ' order by nome_interno';
  DsInterno.DataSet.Open;


  DsHistOcoInt.DataSet.Close;  // Todos os dataset do formul�rios devem ser fechados e abertos no FormCreate
  DsHistOcoInt.DataSet.Open;


  // Abrir somente as ocorr�ncias da unidade prisional logada pelo usu�rio
  DsCadastro.DataSet.Close;
  SqlCadastro.SQL.Text := 'SELECT * FROM OCORRENCIA_PLANTAO OP WHERE OP.ID_UP = '+IntToStr(GLOBAL_ID_UP) +' ORDER BY ID_OCORRENCIA_PLANTAO';
  DsCadastro.DataSet.Open;
  DsCadastro.DataSet.Last; //Vai para o utimo registro da tabela

  // Seleciona o nome do funcionario logado para o LabelLogin
  DM.SqlExecute.SQL.Text := 'select f.nome_funcionario from funcionario f where f.id_funcionario = '+ IntToStr(GLOBAL_ID_FUNCIONARIO);
  DM.DsExecute.DataSet.Close;
  DM.DsExecute.DataSet.Open;
  LabelLOGIN.Caption := 'Servidor: ' + DM.DsExecute.DataSet.FieldByName('NOME_FUNCIONARIO').AsString;
  LabelUP.Caption := 'Unid. Penal: ' + UP_LOGADO;
  adpDBDateTimePicker1.Date := date;
  adpDBDateTimePicker2.Date := date;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

  if ContemValor('P', PERMISSAO_OCORRENCIA) then
    DBMemo3.Enabled := True
  else
    DBMemo3.Enabled := False;

end;



procedure TFrmCadastroOcorrenciaPlantao.EditProntuarioExit(
  Sender: TObject);
begin
  inherited;
// Seleciona o interno pelo prontu�rio
  if Editprontuario.Text <> '' then
  begin
    DsInterno.DataSet.Close;
    SqlInterno.sql.Clear;
    SqlInterno.sql.text := 'select id_interno, nome_interno, rgi from interno where rgi =' + Qs(Editprontuario.Text)+ ' and id_up = ' + IntToStr(GLOBAL_ID_UP);
    {A pesquisa agora deve retornar todos os internos devido a possibilidade de transfer�ncia do mesmo}
    DsInterno.DataSet.Open;
    if DsInterno.Dataset.recordcount > 0 then
    begin
      DBLookupComboBox2.KeyValue := DsInterno.DataSet.fieldbyname('id_interno').Asfloat;
    end
    else
    begin
      showmessage('Interno n�o Localizado!');
      if Editprontuario.canfocus then
        Editprontuario.SetFocus;
    end;
  end;

end;

procedure TFrmCadastroOcorrenciaPlantao.BitBtnInserirClick(Sender: TObject);
begin
{  inherited;
  DSHistOcoInt.DataSet.Append;  // insere no ultimo registro
  DSHistOcoInt.DataSet.FieldByName('id_hist_oc').AsInteger := 0; // a trigger que vai incrementar o campo
  DSHistOcoInt.DataSet.FieldByName('id_interno').AsInteger := DBLookupComboBox2.KeyValue;
  DSHistOcoInt.DataSet.FieldByName('id_ocorrencia_plantao').AsInteger := DsCadastro.DataSet.FieldByName('id_ocorrencia_plantao').AsInteger;
  DSHistOcoInt.DataSet.FieldByName('data').AsDateTime := date;
  DSHistOcoInt.DataSet.Post;
  DBLookupComboBox2.KeyValue:= null;
  Editprontuario.text := '';
  Editprontuario.SetFocus;}
end;

procedure TFrmCadastroOcorrenciaPlantao.SalvarClick(Sender: TObject);
var
 cod : string;
begin
  cod := DBEditcodigo.Text;
  inherited;
{ Esse procedimento � para n�o deixar lixo no DataSet do Hist�rico - Sempre necess�rio. }
  DSHistOcoInt.DataSet.Close;
  DSHistOcoInt.DataSet.Open;
{ Usar LOCATE para voltar para o mesmo registro depois de salvo, com [loCaseInsensitive, loPartialKey] verifica min�scula
e mai�scula e string parcial}
  DsCadastro.DataSet.Locate('ID_OCORRENCIA_PLANTAO', cod, []);
end;

procedure TFrmCadastroOcorrenciaPlantao.Button1Click(Sender: TObject);
begin
  FrmCadastroNaturezaOcorrencia := TFrmCadastroNaturezaOcorrencia.Create(Application);
  FrmCadastroNaturezaOcorrencia.ShowModal;
  FreeAndNil(FrmCadastroNaturezaOcorrencia);
end;

procedure TFrmCadastroOcorrenciaPlantao.Especficos1Click(Sender: TObject);
begin
  inherited;
    if not DirectoryExists(GLOBAL_PATCH_SISTEMA + '\Espec�ficos\') then
      CreateDir(GLOBAL_PATCH_SISTEMA + '\Espec�ficos\');

    PATH_MOMENTO := GLOBAL_PATCH_SISTEMA + '\Espec�ficos\' + trim(copy(self.Name, 4, 100)) + '\';
    if not DirectoryExists(PATH_MOMENTO) then
      CreateDir(PATH_MOMENTO);

    FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
    FrmMenuRelatorio.ShowModal;
    FreeAndNil(FrmMenuRelatorio);
end;

procedure TFrmCadastroOcorrenciaPlantao.Button2Click(Sender: TObject);
begin
  if (EditLocalizar.Text = '') then
    Showmessage('Digite o argumento de pesquisa!')
  else
   begin
   if RadioGroupTipoLocalizar.ItemIndex = 0 then
     begin
     SqlConsulta.sql.text := 'select id_ocorrencia_plantao, assunto, ocorrencia, data_inicio, data_final '
                            + 'from ocorrencia_plantao where id_ocorrencia_plantao = ' + (EditLocalizar.Text)
                            + ' and id_up = ' + IntToStr(GLOBAL_ID_UP);
     DsConsulta.dataset.close;
     DsConsulta.dataset.open;
     end
   else
   if RadioGroupTipoLocalizar.ItemIndex = 1 then
     begin
     SqlConsulta.sql.text := 'select id_ocorrencia_plantao, assunto, ocorrencia, data_inicio, data_final'
                            + ' from ocorrencia_plantao where assunto like ' + qs('%' + (EditLocalizar.text) + '%')
                            + ' and id_up = ' + IntToStr(GLOBAL_ID_UP);
     DsConsulta.dataset.close;
     DsConsulta.dataset.open;
     end
     else
       Showmessage('Ocorr�ncia n�o localizada!')
   end;
end;

procedure TFrmCadastroOcorrenciaPlantao.ImprimirClick(Sender: TObject);
begin
  inherited;
// Chama o relat�rio para impress�o diretamente do Formul�rio.
  FrxOcorrrenciaPlantao.Variables['ID_UP'] := GLOBAL_ID_UP;
  FrxOcorrrenciaPlantao.PrepareReport;
  FrxOcorrrenciaPlantao.Print;
end;

procedure TFrmCadastroOcorrenciaPlantao.DsCadastroDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroOcorrenciaPlantao.DBGridConsultaDblClick(
  Sender: TObject);
var  cod: integer;
begin
  //Abre a edi��o do registro que foi dado o clique duplo
  cod := DsConsulta.DataSet.FieldByName('ID_OCORRENCIA_PLANTAO').AsInteger;

  SqlCadastro.SQL.Text := 'SELECT * FROM OCORRENCIA_PLANTAO OP WHERE OP.ID_OCORRENCIA_PLANTAO = '+IntToStr(cod);

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  EditarClick(nil);
end;

procedure TFrmCadastroOcorrenciaPlantao.Button4Click(Sender: TObject);
begin
  inherited;
  DSHistOcoInt.DataSet.Append;  // insere no ultimo registro
  DSHistOcoInt.DataSet.FieldByName('id_hist_oc').AsInteger := 0; // a trigger que vai incrementar o campo
  DSHistOcoInt.DataSet.FieldByName('id_interno').AsInteger := DBLookupComboBox2.KeyValue;
  DSHistOcoInt.DataSet.FieldByName('id_ocorrencia_plantao').AsInteger := DsCadastro.DataSet.FieldByName('id_ocorrencia_plantao').AsInteger;
  DSHistOcoInt.DataSet.FieldByName('data').AsDateTime := date;
  DSHistOcoInt.DataSet.Post;
  DBLookupComboBox2.KeyValue:= null;
  Editprontuario.text := '';
  Editprontuario.SetFocus;
end;

procedure TFrmCadastroOcorrenciaPlantao.ButtonInserirClick(Sender: TObject);
begin
  inherited;
  DSHistOcoInt.DataSet.Append;  // insere no ultimo registro
  DSHistOcoInt.DataSet.FieldByName('id_hist_oc').AsInteger := 0; // a trigger que vai incrementar o campo
  DSHistOcoInt.DataSet.FieldByName('id_interno').AsInteger := DBLookupComboBox2.KeyValue;
  DSHistOcoInt.DataSet.FieldByName('id_ocorrencia_plantao').AsInteger := DsCadastro.DataSet.FieldByName('id_ocorrencia_plantao').AsInteger;
  DSHistOcoInt.DataSet.FieldByName('data').AsDateTime := date;
  DSHistOcoInt.DataSet.Post;
  DBLookupComboBox2.KeyValue:= null;
  Editprontuario.text := '';
  Editprontuario.SetFocus;
end;

end.




