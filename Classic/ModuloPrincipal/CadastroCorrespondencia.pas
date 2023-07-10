unit CadastroCorrespondencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask;

type
  TFrmCadastroCorrespondencia = class(TFrmModeloCadastro)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBGridBusca: TDBGrid;
    ButtonBuscar: TButton;
    RadioGroupBusca: TRadioGroup;
    DBEditCorrespondente: TDBEdit;
    DBEditLogradouro: TDBEdit;
    DBEditBairro: TDBEdit;
    DBEditCEP: TDBEdit;
    DBEditComplemento: TDBEdit;
    DBEditEstado: TDBEdit;
    EditBuscar: TEdit;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    SQLCorrespondente: TSQLQuery;
    dspCorrespondente: TDataSetProvider;
    cdsCorrespondente: TClientDataSet;
    dsCorrespondente: TDataSource;
    DBMemoObs: TDBMemo;
    SQLBusca: TSQLQuery;
    dspBusca: TDataSetProvider;
    cdsBusca: TClientDataSet;
    dsBusca: TDataSource;
    RadioGroupEnviarReceber: TRadioGroup;
    OpenDialogDoc: TOpenDialog;
    ButtonAdicionarDocumento: TButton;
    SQLGrid: TSQLQuery;
    dspGrid: TDataSetProvider;
    cdsGrid: TClientDataSet;
    dsGrid: TDataSource;
    ButtonVisualizarDocumento: TButton;
    EditInterno: TEdit;
    procedure ButtonBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure ButtonAdicionarDocumentoClick(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure ButtonVisualizarDocumentoClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure DBGridBuscaCellClick(Column: TColumn);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    //variavel que informá qual campo será pesquisado
    campo : string;
    //verifica se foi ou não feita a busca antes da gravação.
    verificaBusca : string;
    //indica se utilizou a busca
    edicao, utilizouBusca : string;

     nomeArquivo, pegaCaminho : string;
    //vai gravar o que foi pesquisado nesses campos
    correspondente,  logradouro, bairro, cep, complemento, estado, obs : string;
    correspondenteNovo,  logradouroNovo, bairroNovo, cepNovo, complementoNovo, estadoNovo, obsNovo : string;
    id_correspondente : integer;
    procedure ConfiguraDs();
    procedure configuraDsGrid();
    procedure configuraDsCadastro();
    procedure configuraDsBusca();
  public
    { Public declarations }
  end;

var
  FrmCadastroCorrespondencia: TFrmCadastroCorrespondencia;

implementation

uses DmPrincipal, lib, VisualizadorOLE;

{$R *.dfm}
procedure TFrmCadastroCorrespondencia.configuraDs();
var
  iErro: Integer;
begin
  //aqui é utilizado a busca
  if verificaBusca = 'SIM' then begin
    dsBusca.DataSet.Close;
    //SQLBusca.Params[0].Value := EditBuscar.Text;
    dsBusca.DataSet.Open;

    configuraDsBusca;

    id_correspondente := dsBusca.DataSet.fieldByName('id_correspondente').asInteger;
    EditBuscar.Text := '';
    utilizouBusca := 'SIM';
  //aqui é utilizado para gravação
  end else begin
    //se o usuario alterar algum campo, será guardado nessas variavel, para uma comparação futura com o banco
    correspondenteNovo := DBEditCorrespondente.Text;
    logradouroNovo := DBEditLogradouro.Text;
    bairroNovo := DBEditBairro.Text;
    cepNovo := DBEditCEP.Text;
    complementoNovo := DBEditComplemento.Text;
    estadoNovo := DBEditEstado.Text;
    obsNovo := DBMemoObs.Text;

    //faz o resto dos tratamento para os outros ds. voltado novamente para o ds interno e correspondente para gravação
    configuraDsCadastro;

    DsCadastro.DataSet.Close;
    DsCadastro.DataSet.Open;

    dsCorrespondente.DataSet.Close;
    dsCorrespondente.DataSet.Open;

    DsCadastro.DataSet.Append;
    dsCorrespondente.DataSet.Append;
    
    if utilizouBusca = 'SIM' then begin
      //verifica se há mudança nos campos se não houver será só inserido na tabela cadastro com ligação para correspondente.
      if (correspondenteNovo = correspondente) and (logradouroNovo = logradouro) then begin
        //antes de salvar deve ser passado qual o id_interno a ser gravado na tabela interno_correspondente, data da insercao e obs
        DsCadastro.DataSet.FieldByName('id_interno_correspondente').AsInteger := dbgenerator('id_interno_correspondente');
        DsCadastro.DataSet.FieldByName('id_interno').AsInteger := dsBusca.DataSet.FieldByName('id_interno').AsInteger;
        DsCadastro.DataSet.FieldByName('id_correspondente').AsInteger := dsBusca.DataSet.FieldByName('id_correspondente').AsInteger;;
        DsCadastro.DataSet.FieldByName('obs').AsString := DBMemoObs.text;
        DsCadastro.DataSet.FieldByName('data').AsDateTime := date;
        DsCadastro.DataSet.FieldByName('descricao_pdf').AsString := nomeArquivo;
        //salva o pdf que está localizado na variavel pega caminho

        if nomeArquivo <> '' then begin
          try
            self.enabled := false;
            SalvarBlobDatabase(DsCadastro, 'pdf', pegaCaminho);
          except
          end;
        end;
        {if RadioGroupEnviarReceber.ItemIndex = -1 then begin
          showmessage ('Selecione se a carta é enviada ou recebida');
          CancelaTransCadastro;
          exit;
        end;
        if RadioGroupEnviarReceber.ItemIndex = 0 then
          DsCadastro.DataSet.FieldByName('enviado').AsString := 'S'
        else
          DsCadastro.DataSet.FieldByName('enviado').AsString := 'N';
        DsCadastro.DataSet.FieldByName('data').AsDateTime := date;
         }
        //não foi deixado o tratamento do modelo cadastro, pois  o mesmo não estava salvando primeiro o correspondente
       //dando problema na chave estrangeira para a tabela interno_correspondente
        DsCadastro.DataSet.Post;

        iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);
        //transações da lib
        if iErro = 0 then begin
          finalizaTransCadastro;
          ShowMessage('Gravação efetuada com sucesso!!');
        end else begin
          CancelaTransCadastro;
          ShowMessage('Erro');
        end;
        utilizouBusca := 'NAO';
      //se foi modificado alguns dos campos será inserido os valores novos na tabela correspondente
      end else begin
        DsCadastro.DataSet.FieldByName('id_interno').AsInteger := dsBusca.DataSet.FieldByName('id_interno').AsInteger;;
        DsCadastro.DataSet.FieldByName('data').AsDateTime := date;
        dsCorrespondente.DataSet.FieldByName('id_correspondente').AsInteger := dbgenerator('id_correspondente');
        DsCadastro.DataSet.FieldByName('id_interno_correspondente').AsInteger := dbgenerator('id_interno_correspondente');
        DsCadastro.DataSet.FieldByName('id_correspondente').AsInteger := dsCorrespondente.DataSet.FieldByName('id_correspondente').AsInteger;
        dsCorrespondente.DataSet.FieldByName('correspondente').AsString := correspondenteNovo;
        dsCorrespondente.DataSet.FieldByName('logradouro').AsString := logradouroNovo;
        dsCorrespondente.DataSet.FieldByName('Bairro').AsString := bairroNovo;
        dsCorrespondente.DataSet.FieldByName('cep').AsString := cepNovo;
        dsCorrespondente.DataSet.FieldByName('complemento').AsString := complementoNovo;
        dsCorrespondente.DataSet.FieldByName('estado').AsString := estadoNovo;
        DsCadastro.DataSet.FieldByName('obs').AsString := obsNovo;
        DsCadastro.DataSet.FieldByName('DESCRICAO_PDF').AsString := nomeArquivo;
        if nomeArquivo <> '' then begin
          try
            self.enabled := false;
            SalvarBlobDatabase(DsCadastro, 'pdf', pegaCaminho);
          except
          end;
        end;
        {if RadioGroupEnviarReceber.ItemIndex = -1 then begin
          showmessage ('Selecione se a carta foi enviada ou recebida');
          exit;
        end;

        if RadioGroupEnviarReceber.ItemIndex = 0 then
          DsCadastro.DataSet.FieldByName('enviado').AsString := 'S'
        else
          DsCadastro.DataSet.FieldByName('enviado').AsString := 'N';
         }
        //não foi deixado o tratamento do modelo cadastro, pois  o mesmo não estava salvando primeiro o correspondente
        //dando problema na chave estrangeira para a tabela interno_correspondente
        dsCorrespondente.DataSet.Post;
        DsCadastro.DataSet.Post;
        iErro := TClientDataSet(dsCorrespondente.DataSet).ApplyUpdates(0);
        //transações da lib
        if iErro = 0 then begin
          finalizaTransCadastro;
          ShowMessage('Cadastro efetuado com sucesso');
        end else  begin
          CancelaTransCadastro;
          ShowMessage('Erro no cadastramento');
        end;

        iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);
        if iErro = 0 then
          finalizaTransCadastro
        else
          CancelaTransCadastro;


        utilizouBusca := 'NAO';
      end;
    //Não foi utilizado busca, então é um novo registro não precisará fazer nenhuma consideração.
    //chamando então os generator tanto do cadastro quanto do correspondente.
    end else begin
      DsCadastro.DataSet.FieldByName('id_interno').AsInteger := dm.DsInterno.DataSet.FieldByName('id_interno').AsInteger;;
      DsCadastro.DataSet.FieldByName('data').AsDateTime := date;
      dsCorrespondente.DataSet.FieldByName('id_correspondente').AsInteger := dbgenerator('id_correspondente');
      DsCadastro.DataSet.FieldByName('id_interno_correspondente').AsInteger := dbgenerator('id_interno_correspondente');
      DsCadastro.DataSet.FieldByName('id_correspondente').AsInteger := dsCorrespondente.DataSet.FieldByName('id_correspondente').AsInteger;
      dsCorrespondente.DataSet.FieldByName('correspondente').AsString := correspondenteNovo;
      dsCorrespondente.DataSet.FieldByName('logradouro').AsString := logradouroNovo;
      dsCorrespondente.DataSet.FieldByName('Bairro').AsString := bairroNovo;
      dsCorrespondente.DataSet.FieldByName('cep').AsString := cepNovo;
      dsCorrespondente.DataSet.FieldByName('complemento').AsString := complementoNovo;
      dsCorrespondente.DataSet.FieldByName('estado').AsString := estadoNovo;
      DsCadastro.DataSet.FieldByName('obs').AsString := obsNovo;
      DsCadastro.DataSet.FieldByName('DESCRICAO_PDF').AsString := nomeArquivo;
      //grava na base de dados o pdf que foi anexado.

      if nomeArquivo <> '' then begin
        try
          self.enabled := false;
          SalvarBlobDatabase(DsCadastro, 'pdf', pegaCaminho);
        except
        end;
      end;
      {if RadioGroupEnviarReceber.ItemIndex = -1 then begin
        showmessage ('Selecione se a carta foi enviada ou recebida');
        exit;
      end;
      if RadioGroupEnviarReceber.ItemIndex = 0 then
        DsCadastro.DataSet.FieldByName('enviado').AsString := 'S'
      else
        DsCadastro.DataSet.FieldByName('enviado').AsString := 'N';

       }
      //não foi deixado o tratamento do modelo cadastro, pois  o mesmo não estava salvando primeiro o correspondente
      //dando problema na chave estrangeira para a tabela interno_correspondente

      dsCorrespondente.DataSet.Post;
      DsCadastro.DataSet.Post;
        //transações da lib
      iErro := TClientDataSet(dsCorrespondente.DataSet).ApplyUpdates(0);
      if iErro = 0 then begin
        finalizaTransCadastro;
        ShowMessage('Cadastro efetuado com sucesso');
      end else  begin
        CancelaTransCadastro;
        ShowMessage('Erro no cadastramento');
      end;

      iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);
      if iErro = 0 then
        finalizaTransCadastro
      else
        CancelaTransCadastro;

      utilizouBusca := 'NAO';
    end;
    //DsCadastro.DataSet.Close;
    //dsCorrespondente.DataSet.Open;
    //verifica se há informação no editbuscar se não houver trará todos os registros senão trará somente o que foi digitado no campo com o like
    if EditBuscar.Text <> '' then  begin
      SQLBusca.SQL.Text := 'select i.nome_interno, i.id_interno, c.id_correspondente, c.correspondente, ' +
        'c.logradouro, c.bairro, c.cep, c.complemento, c.estado, ic.obs  from interno i, ' +
        'interno_correspondente ic, correspondente c ' +
        'where c.id_correspondente = ic.id_correspondente and ' +
        'i.id_interno = ic.id_interno and ' + campo + ' like ' + QS('%' +EditBuscar.Text+ '%');
        dsBusca.DataSet.Close;
        dsBusca.DataSet.Open;
    end else begin
      SQLBusca.SQL.Text := 'select i.nome_interno, i.id_interno, c.id_correspondente, c.correspondente, ' +
        'c.logradouro, c.bairro, c.cep, c.complemento, ic.data, c.estado, ic.obs  from interno i, ' +
        'interno_correspondente ic, correspondente c ' +
        'where c.id_correspondente = ic.id_correspondente and ' +
        'i.id_interno = ic.id_interno order by ic.data desc ';
        dsBusca.DataSet.Close;
        dsBusca.DataSet.Open;
    end;
  end;
end;

procedure TFrmCadastroCorrespondencia.ButtonBuscarClick(Sender: TObject);
begin
  inherited;
  //informa que tipo de consulta será buscado, se é pelo nome interno, correspondente ou endereço
  case RadioGroupBusca.ItemIndex of
    0: Campo := 'NOME_INTERNO';
    1: Campo := 'CORRESPONDENTE';
    2: Campo := 'LOGRADOURO';
  end;
  if EditBuscar.Text <> '' then
    SQLBusca.SQL.Text := 'select i.nome_interno, i.id_interno, c.id_correspondente, c.correspondente, ' +
      'c.logradouro, c.bairro, c.cep, c.complemento, c.estado, ic.obs  from interno i, ' +
      'interno_correspondente ic, correspondente c ' +
      'where c.id_correspondente = ic.id_correspondente and ' +
      'i.id_interno = ic.id_interno and ' + campo + ' like ' + QS('%' +EditBuscar.Text+ '%');

  DBGridBusca.DataSource := dsBusca;
  EditInterno.Text := dsBusca.DataSet.fieldByName('nome_interno').AsString;
  verificaBusca := 'SIM';
  //Procedure que configura os ds e grava quando a variavel varifica consulta for 'NAO'
  configuraDs();

  DBGridBusca.Enabled :=true;

end;

procedure TFrmCadastroCorrespondencia.FormCreate(Sender: TObject);
begin
  inherited;
  dm.DsInterno.DataSet.Close;
  DM.DsInterno.DataSet.Open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  dsCorrespondente.DataSet.Close;
  dsCorrespondente.DataSet.Open;

  //seta o radiogroup para nome interno, para que a busca dinamica seja feita pelo nome do interno
  RadioGroupBusca.ItemIndex := 0;
  campo := 'NOME_INTERNO';
  //verifica se foi ou não feita a busca antes da gravação.
  verificaBusca := '';

  configuraDsGrid;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroCorrespondencia.configuraDsBusca();
begin
  //muda os datasource e fields para que se possa fazer a busca e guarda em sua devida variavel para futura inserção.
  DBLookupComboBoxInterno.ListSource := dsBusca;
  DBLookupComboBoxInterno.ListField := 'nome_interno';
  DBLookupComboBoxInterno.KeyField := 'id_interno';

  DBEditCorrespondente.DataSource := dsBusca;
  DBEditCorrespondente.DataField := 'correspondente';
  correspondente := DBEditCorrespondente.Text;

  DBEditLogradouro.DataSource := dsBusca;
  DBEditLogradouro.DataField := 'logradouro';
  logradouro := DBEditLogradouro.Text;

  DBEditBairro.DataSource := dsBusca;
  DBEditBairro.DataField := 'bairro';
  bairro:= DBEditBairro.Text;

  DBEditCEP.DataSource := dsBusca;
  DBEditCEP.DataField := 'cep';
  cep:= DBEditCEP.Text;

  DBEditComplemento.DataSource := dsBusca;
  DBEditComplemento.DataField := 'complemento';
  complemento := DBEditComplemento.Text;

  DBEditEstado.DataSource := dsBusca;
  DBEditEstado.DataField := 'estado';
  estado := DBEditEstado.Text;

  DBMemoObs.DataSource := dsBusca;
  DBMemoObs.DataField := 'obs';
  obs := DBMemoObs.Text;
end;

procedure TFrmCadastroCorrespondencia.configuraDsCadastro();
begin
  DBLookupComboBoxInterno.ListSource := DM.dsInterno;
  DBLookupComboBoxInterno.ListField := 'nome_interno';
  DBLookupComboBoxInterno.KeyField := 'id_interno';
  DBEditCorrespondente.DataSource := dsCorrespondente;
  DBEditCorrespondente.DataField := 'correspondente';
  DBEditLogradouro.DataSource := dsCorrespondente;
  DBEditLogradouro.DataField := 'logradouro';
  DBEditBairro.DataSource := dsCorrespondente;
  DBEditBairro.DataField := 'bairro';
  DBEditCEP.DataSource := dsCorrespondente;
  DBEditCEP.DataField := 'cep';
  DBEditComplemento.DataSource := dsCorrespondente;
  DBEditComplemento.DataField := 'complemento';
  DBEditEstado.DataSource := dsCorrespondente;
  DBEditEstado.DataField := 'estado';
  DBMemoObs.DataSource := DsCadastro;
  DBMemoObs.DataField := 'obs';
end;

procedure TFrmCadastroCorrespondencia.configuraDsGrid();
begin
  DBLookupComboBoxInterno.ListSource := dsGrid;
  DBLookupComboBoxInterno.ListField := 'nome_interno';
  DBLookupComboBoxInterno.KeyField := 'id_interno';

  DBEditCorrespondente.DataSource := dsGrid;
  DBEditCorrespondente.DataField := 'correspondente';
  correspondente := DBEditCorrespondente.Text;

  DBEditLogradouro.DataSource := dsGrid;
  DBEditLogradouro.DataField := 'logradouro';

  DBEditBairro.DataSource := dsGrid;
  DBEditBairro.DataField := 'bairro';

  DBEditCEP.DataSource := dsGrid;
  DBEditCEP.DataField := 'cep';

  DBEditComplemento.DataSource := dsGrid;
  DBEditComplemento.DataField := 'complemento';

  DBEditEstado.DataSource := dsGrid;
  DBEditEstado.DataField := 'estado';

  DBMemoObs.DataSource := dsGrid;
  DBMemoObs.DataField := 'obs';

  DBGridBusca.DataSource := dsGrid;

  dsGrid.DataSet.Close;
  dsGrid.DataSet.Open;
end;

procedure TFrmCadastroCorrespondencia.SalvarClick(Sender: TObject);
var
  iErro: Integer;
begin
  EditInterno.SendToBack;
  verificaBusca := 'NAO';
  if edicao = 'E' then begin
    dsCorrespondente.DataSet.Post;
    DsCadastro.DataSet.Post;

    //transações da lib
    iErro := TClientDataSet(dsCorrespondente.DataSet).ApplyUpdates(0);
    if iErro = 0 then begin
      finalizaTransCadastro;
      ShowMessage('Cadastro efetuado com sucesso');
    end else  begin
      CancelaTransCadastro;
      ShowMessage('Erro no cadastramento');
    end;

    iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);
    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    edicao := '';
  end else begin

    configuraDs();
    //não funcinou a herança, está dando erro
    //inherited;
  end;
  //refresh na grid
  dsGrid.DataSet.Close;
  dsGrid.DataSet.Open;

  DBGridBusca.Enabled := false;
end;

procedure TFrmCadastroCorrespondencia.ButtonAdicionarDocumentoClick(Sender: TObject);
begin
  inherited;
  //chama o opendialog para pegar o caminho do arquivo para futura gravação.
  if OpenDialogDoc.Execute then begin
    pegaCaminho := OpenDialogDoc.FileName;
    //pega o nome do arquivo
    nomeArquivo := ExtractFileName(OpenDialogDoc.FileName);
  end;
end;

procedure TFrmCadastroCorrespondencia.DBGridConsultaDblClick(
  Sender: TObject);
begin
  inherited;
  edicao := 'E';
  EditInterno.BringToFront;
  SqlCadastro.SQL.Text := 'select * from interno_correspondente where id_interno_correspondente = ' + dsGrid.DataSet.fieldByName('id_interno_correspondente').AsString;
  SQLCorrespondente.SQL.Text := 'select * from correspondente where id_correspondente = ' + dsGrid.DataSet.fieldByName('id_correspondente').AsString;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  dsCorrespondente.DataSet.Close;
  dsCorrespondente.DataSet.Open;

  EditInterno.Text := dsGrid.DataSet.fieldByName('nome_interno').AsString;

  correspondenteNovo := DBEditCorrespondente.Text;
  logradouroNovo := DBEditLogradouro.Text;
  bairroNovo := DBEditBairro.Text;
  cepNovo := DBEditCEP.Text;
  complementoNovo := DBEditComplemento.Text;
  estadoNovo := DBEditEstado.Text;
  obsNovo := DBMemoObs.Text;

  DBEditCorrespondente.DataSource := dsCorrespondente;
  DBEditCorrespondente.DataField := 'correspondente';

  DBEditLogradouro.DataSource := dsCorrespondente;
  DBEditLogradouro.DataField := 'logradouro';

  DBEditBairro.DataSource := dsCorrespondente;
  DBEditBairro.DataField := 'bairro';

  DBEditCEP.DataSource := dsCorrespondente;
  DBEditCEP.DataField := 'cep';
  DBEditComplemento.DataSource := dsCorrespondente;
  DBEditComplemento.DataField := 'complemento';
  DBEditEstado.DataSource := dsCorrespondente;
  DBEditEstado.DataField := 'estado';
  DBMemoObs.DataSource := DsCadastro;
  DBMemoObs.DataField := 'obs';
  showmessage (dscadastro.DataSet.fieldByName('id_interno_correspondente').AsString);


  DsCadastro.DataSet.Edit;
  dsCorrespondente.DataSet.append;


  DsCadastro.DataSet.FieldByName('data').AsDateTime := date;
  dsCorrespondente.DataSet.FieldByName('id_correspondente').AsInteger := dbgenerator('id_correspondente');
  DsCadastro.DataSet.FieldByName('id_correspondente').AsInteger :=
    dsCorrespondente.DataSet.FieldByName('id_correspondente').AsInteger;
  dsCorrespondente.DataSet.FieldByName('correspondente').AsString := correspondenteNovo;
  dsCorrespondente.DataSet.FieldByName('logradouro').AsString := logradouroNovo;
  dsCorrespondente.DataSet.FieldByName('Bairro').AsString := bairroNovo;
  dsCorrespondente.DataSet.FieldByName('cep').AsString := cepNovo;
  dsCorrespondente.DataSet.FieldByName('complemento').AsString := complementoNovo;
  dsCorrespondente.DataSet.FieldByName('estado').AsString := estadoNovo;
  DsCadastro.DataSet.FieldByName('obs').AsString := obsNovo;
  DsCadastro.DataSet.FieldByName('DESCRICAO_PDF').AsString := nomeArquivo;
      //grava na base de dados o pdf que foi anexado.

  if nomeArquivo <> '' then begin
    try
      self.enabled := false;
      SalvarBlobDatabase(DsCadastro, 'pdf', pegaCaminho);
    except
    end;
  end;

end;

procedure TFrmCadastroCorrespondencia.ButtonVisualizarDocumentoClick(
  Sender: TObject);
var
  nome_arquivo: string;
  Dir: string;
begin
  inherited;

  if not DsCadastro.DataSet.Active then
    Exit;

  if DsCadastro.DataSet.IsEmpty then
    Exit;

  Dir := GLOBAL_MEUS_DOCUMENTOS + '\view\' + IntToStr(GLOBAL_ID_FUNCIONARIO) + '\';
  //força para criar o diretorio se ele não existir.
  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);

  nome_arquivo := Dir + DsCadastro.DataSet.FieldByName('descricao_pdf').AsString;

  (DsCadastro.DataSet.FieldByName('pdf') as TBlobField).SaveToFile(nome_arquivo);
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

procedure TFrmCadastroCorrespondencia.NovoClick(Sender: TObject);
begin
  inherited;
  EditInterno.SendToBack;
  DM.DsInterno.DataSet.Close;
  dm.DsInterno.DataSet.Open;

  configuraDsCadastro;

  dsCorrespondente.DataSet.Close;
  dsCorrespondente.DataSet.Open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  DsCadastro.DataSet.Append;
  dsCorrespondente.DataSet.Append;

  DBGridBusca.Enabled := false;
end;

procedure TFrmCadastroCorrespondencia.CancelarClick(Sender: TObject);
begin
  inherited;
  EditInterno.SendToBack;
end;

procedure TFrmCadastroCorrespondencia.DBGridBuscaCellClick(
  Column: TColumn);
begin
  inherited;
  EditInterno.BringToFront;
  editInterno.Text := dsBusca.DataSet.fieldByName('nome_interno').AsString;
end;

procedure TFrmCadastroCorrespondencia.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CORRESPONDENCIA)
    and ContemValor('E', PERMISSAO_CORRESPONDENCIA)
    and not ContemValor('D', PERMISSAO_CORRESPONDENCIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

end.
