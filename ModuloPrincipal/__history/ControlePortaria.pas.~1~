unit ControlePortaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloMovimentacao, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, jpeg, Menus;

type
  TFrmControlePortaria = class(TFrmModeloMovimentacao)
    OpenDialogFOTO: TOpenDialog;
    SqlSelectVisitante: TSQLQuery;
    ToolButtonmovimentar: TToolButton;
    SqlCadastroID_VISITANTE: TIntegerField;
    SqlCadastroVISITANTE: TStringField;
    SqlCadastroID_GRAU_PARENTESCO: TIntegerField;
    SqlCadastroID_INTERNO: TIntegerField;
    SqlCadastroNUMERO_CARTEIRINHA: TStringField;
    SqlCadastroCPF: TStringField;
    SqlCadastroRG: TStringField;
    SqlCadastroORGAO_EXPEDIDOR: TStringField;
    SqlCadastroSEXO: TStringField;
    SqlCadastroDATA_CADASTRO: TSQLTimeStampField;
    SqlCadastroSTATUS: TStringField;
    SqlCadastroDATA_ULT_VISITA: TSQLTimeStampField;
    SqlCadastroFOTO: TBlobField;
    SqlCadastroMOTIVO_INATIVO: TStringField;
    SqlCadastroQUANTIDADE_MENOR: TIntegerField;
    SqlCadastroID_UP: TIntegerField;
    TabSheetAdvogado: TTabSheet;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBImageadv: TDBImage;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit27: TDBEdit;
    Label28: TLabel;
    SQLdeficiencia: TSQLQuery;
    dspdeficiencia: TDataSetProvider;
    cdsdeficiencia: TClientDataSet;
    dsdeficiencia: TDataSource;
    DSadvogado: TDataSource;
    CDSadvogado: TClientDataSet;
    SQLAdvogado: TSQLQuery;
    DSPadvogado: TDataSetProvider;
    TabSheetAutoridade: TTabSheet;
    Label29: TLabel;
    DBEdit28: TDBEdit;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit33: TDBEdit;
    Label34: TLabel;
    DBEdit34: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label37: TLabel;
    DBEdit37: TDBEdit;
    Label38: TLabel;
    DBEdit38: TDBEdit;
    Label39: TLabel;
    DBEdit39: TDBEdit;
    Label40: TLabel;
    DBImageaut: TDBImage;
    DBLookupComboBox1: TDBLookupComboBox;
    DSautoridade: TDataSource;
    CDSautoridade: TClientDataSet;
    SQLautoridade: TSQLQuery;
    DSPautoridade: TDataSetProvider;
    DBEdit11: TDBEdit;
    Label41: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DSPoutros: TDataSetProvider;
    CDSoutros: TClientDataSet;
    DSoutros: TDataSource;
    SQLoutros: TSQLQuery;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    DBEditCPF: TDBEdit;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit26: TDBEdit;
    Label27: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label23: TLabel;
    DBImageind: TDBImage;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    Label20: TLabel;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    RadioGroupPessoa: TRadioGroup;
    TabSheet1: TTabSheet;
    SQLGrid: TSQLQuery;
    dspGrid: TDataSetProvider;
    cdsGrid: TClientDataSet;
    dsGrid: TDataSource;
    CDSadvogadoID_ADVOGADO: TIntegerField;
    CDSadvogadoADVOGADO: TStringField;
    CDSadvogadoOAB: TStringField;
    CDSadvogadoFOTO: TBlobField;
    CDSadvogadoENDERECO: TStringField;
    CDSadvogadoCEP: TStringField;
    CDSadvogadoBAIRRO: TStringField;
    CDSadvogadoID_CIDADE: TIntegerField;
    CDSadvogadoEMAIL: TStringField;
    CDSadvogadoCPF: TStringField;
    CDSadvogadoRG: TStringField;
    CDSadvogadoFONE: TStringField;
    CDSadvogadoCELULAR: TStringField;
    CDSadvogadoOBS: TStringField;
    CDSadvogadoEXPEDIDOR: TStringField;
    //CDSadvogadoSTATUS: TStringField;
    DBNavigator1: TDBNavigator;
    procedure NovoClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure DBImageFOTOClick(Sender: TObject);
    procedure ToolButtonmovimentarClick(Sender: TObject);
    procedure Visitante1Click(Sender: TObject);
    procedure Advogado1Click(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Autoridade1Click(Sender: TObject);
    procedure Outros1Click(Sender: TObject);
    procedure DBImageadvClick(Sender: TObject);
    procedure DBImageindClick(Sender: TObject);
    procedure DBImageautClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure RadioGroupPessoaClick(Sender: TObject);
    
  private
    { Private declarations }
    entrada, saida : string;
  public
    { Public declarations }
    function ValidaPreenchimento: Boolean;
  end;

var
  FrmControlePortaria: TFrmControlePortaria;
  novo_registro: Boolean = False;
  tab:integer;

implementation

uses DmPrincipal, Lib, SelecionarTipoVisita, VisitanteInterno;

{$R *.dfm}

function GetMousePos(janela:tform):tpoint;
var
 ponto: Tpoint;
begin
  ponto:=janela.ClientOrigin;
  ponto.x:=mouse.CursorPos.x-ponto.x;
  ponto.y:=mouse.CursorPos.y-ponto.y;
  if (ponto.x<0) or (ponto.x>janela.Width) or (ponto.y<0) or (ponto.y>janela.Height) then
   begin
     ponto.y:=-1;
     ponto.x:=-1;
   end;
  result:=ponto;
end;

procedure TFrmControlePortaria.NovoClick(Sender: TObject);
begin
  //inherited;


  Case RadioGroupPessoa.ItemIndex of
    0:
    begin  //outros indivíduos
      tab:=0;

      novo.Enabled:=False;
      editar.Enabled:=false;
      cancelar.Enabled:=true;

      //  novo_registro := true;
      {dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (id_advogado, 1) as ID from rdb$database';
      dm.DsExecute.DataSet.Close;
      dm.DsExecute.DataSet.Open; }
      DSoutros.DataSet.Append;
      DSoutros.DataSet.fieldbyname('id_individuo').AsInteger := DBGenerator('id_individuo');
      //dm.DSoutros.DataSet.Close;

      PageControlModeloCadastro.Enabled:=true;
      salvar.Enabled:=True;

      PageControlModeloCadastro.TabIndex:=0;
    end;

    1:   //advogado
    begin
      tab:=1;

      novo.Enabled:=False;
      editar.Enabled:=false;
      cancelar.Enabled:=true;


      //  novo_registro := true;
      {dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (id_advogado, 1) as ID from rdb$database';
      dm.DsExecute.DataSet.Close;
      dm.DsExecute.DataSet.Open; }
      DSadvogado.DataSet.Append;
      DSadvogado.DataSet.fieldbyname('id_advogado').AsInteger := DBGenerator('id_visitante');
      //dm.DsExecute.DataSet.Close;

      PageControlModeloCadastro.Enabled:=true;
      salvar.Enabled:=True;

      PageControlModeloCadastro.TabIndex:=1;
    end;

    2:   //autoridade
    begin
      tab:=2;

      novo.Enabled:=False;
      editar.Enabled:=false;
      cancelar.Enabled:=true;

      //  novo_registro := true;
      {dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (id_advogado, 1) as ID from rdb$database';
      dm.DsExecute.DataSet.Close;
      dm.DsExecute.DataSet.Open; }
      DSautoridade.DataSet.Append;
      DSautoridade.DataSet.fieldbyname('id_autoridade').AsInteger := DBGenerator('id_autoridade');
      //dm.DsExecute.DataSet.Close;

      PageControlModeloCadastro.Enabled:=true;
      salvar.Enabled:=True;

      PageControlModeloCadastro.TabIndex:=2;
    end;
  end;

end;

function TFrmControlePortaria.ValidaPreenchimento(): Boolean;
begin

    case RadioGroupPessoa.ItemIndex of

        0: //individuo
        begin
            with DSoutros.DataSet do
            begin

             if Trim(fieldbyname('INDIVIDUO').AsString) = '' then
              begin
                ShowMessage('Nome da pessoa está vazio.');
                result := false;
                Exit;
              end;

              if Trim(fieldbyname('DOCUMENTO').AsString) = '' then
              begin
                ShowMessage('Campo DOCUMENTO está vazio.');
                result := false;
                Exit;
              end;

              if Trim(fieldbyname('DOCUMENTO_EXPEDIDOR').AsString) = '' then
              begin
                ShowMessage('Campo ÓRGÃO EXPEDIDOR DO DOCUMENTO está vazio.');
                result := false;
                Exit;
              end;


            end;
        end;

        1:  //advogado
        begin
            with DSadvogado.DataSet do
            begin

             if Trim(fieldbyname('ADVOGADO').AsString) = '' then
              begin
                ShowMessage('Nome do ADVOGADO está vazio.');
                result := false;
                Exit;
              end;

              if Trim(fieldbyname('OAB').AsString) = '' then
              begin
                ShowMessage('Campo OAB está vazio.');
                result := false;
                Exit;
              end;

            end;
        end;

        2: //autoridade
        begin
            with DSautoridade.DataSet do
            begin

             if Trim(fieldbyname('AUTORIDADE').AsString) = '' then
              begin
                ShowMessage('Nome da AUTORIDADE está vazio.');
                result := false;
                Exit;
              end;

              if Trim(fieldbyname('CARGO').AsString) = '' then
              begin
                ShowMessage('Campo CARGO está vazio.');
                result := false;
                Exit;
              end;

              if Trim(fieldbyname('DOCUMENTO').AsString) = '' then
              begin
                ShowMessage('Campo DOCUMENTO está vazio.');
                result := false;
                Exit;
              end;

              if Trim(fieldbyname('EXPEDIDOR').AsString) = '' then
              begin
                ShowMessage('Campo EXPEDIDOR DO DOCUMENTO está vazio.');
                result := false;
                Exit;
              end;

            end;
        end;

    end;


{

  with DsCadastro.DataSet do
  begin

   if Trim(fieldbyname('NUMERO_CARTEIRINHA').AsString) = '' then
    begin
      ShowMessage('Código do Cartão está vazio.');
      result := false;
      Exit;
    end;

    if Trim(fieldbyname('VISITANTE').AsString) = '' then
    begin
      ShowMessage('Nome do Visitante está vazio.');
      result := false;
      Exit;
    end;

    if Trim(fieldbyname('SEXO').AsString) = '' then
    begin
      ShowMessage('Campo Sexo está vazio.');
      result := false;
      Exit;
    end;

  end;

}

  result := true;

end;

procedure TFrmControlePortaria.SalvarClick(Sender: TObject);
var
  ierro:Integer;
begin
  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    if EditLocalizar.CanFocus then
      EditLocalizar.SetFocus;
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DSoutros.DataSet.State in [dsedit, dsinsert] then
      DSoutros.DataSet.Post;

    if DSadvogado.DataSet.State in [dsedit, dsinsert] then
      DSadvogado.DataSet.Post;

    if DSautoridade.DataSet.State in [dsedit, dsinsert] then
      DSautoridade.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DsOutros.DataSet).ApplyUpdates(0)
      + TClientDataSet(DSadvogado.DataSet).ApplyUpdates(0)
      + TClientDataSet(DSautoridade.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;

    StatusBar1.Panels[1].Text := '...';
    DsOutros.DataSet.Refresh;
    DsAdvogado.DataSet.Refresh;
    DSautoridade.DataSet.Refresh;
  except
    ShowMessage('Não pode salvar com os dados digitados');
    CancelaTransCadastro;
  end;

  //CorNosCampos;
  PageControlModeloCadastro.Enabled := false;


  EditLocalizar.Text := '';

  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

  //PageControlConsulta.ActivePageIndex := 0;

end;

procedure TFrmControlePortaria.EditLocalizarChange(Sender: TObject);
begin
 // inherited;


  //colocar trecho acima dentro do case
  {
   caso ADV: coloca coloca select inteiro na quyery e,
      se selcionado nome: proc por nome (trecho acima)
      se selecionado cód: proc por código
   caso autoridade: idem
   (...)
  }
  if EditLocalizar.text <> ''then begin

  Case RadioGroupPessoa.ItemIndex of
    0:
    begin  //outros indivíduos
      SQLoutros.sql.text := 'Select * from individuo where INDIVIDUO like upper('
            + qs(EditLocalizar.text + '%') + ') order by INDIVIDUO';
      PageControlModeloCadastro.TabIndex:=0;
      DSoutros.DataSet.Close;
      DSoutros.DataSet.Open;
      DBNavigator1.DataSource := DSoutros;
    end;

    1:   //advogado
    begin
      SQLAdvogado.sql.text := 'Select * from advogado where ADVOGADO like upper('
            + qs(EditLocalizar.text + '%') + ') order by ADVOGADO';
      PageControlModeloCadastro.TabIndex:=1;
      DSadvogado.DataSet.Close;
      DSadvogado.DataSet.Open;
      DBNavigator1.DataSource := DSadvogado;
    end;

    2:   //autoridade
    begin
      SQLautoridade.sql.text := 'Select * from autoridade where AUTORIDADE like upper('
            + qs(EditLocalizar.text + '%') + ') order by AUTORIDADE';
      PageControlModeloCadastro.TabIndex:=2;
      DSautoridade.DataSet.Close;
      DSautoridade.DataSet.Open;
    end;
  end;
  SQLGrid.SQL.Text := 'select * from movimento m, individuo i '
  + 'where i.id_individuo = m.id_individuo and i.individuo like upper('
  + qs(EditLocalizar.text + '%') + ') and id_up = :id_up order by m.entrada desc';
  dsGrid.DataSet.Close;
  SQLGrid.Params[0].Value :=GLOBAL_ID_UP;
  dsGrid.DataSet.Open;
  end else
  begin
  Case RadioGroupPessoa.ItemIndex of
    0:
    begin  //outros indivíduos
      SQLoutros.sql.text := 'Select * from individuo where INDIVIDUO like upper('
            + qs(EditLocalizar.text + '%') + ') order by INDIVIDUO';
      PageControlModeloCadastro.TabIndex:=0;
      DSoutros.DataSet.Close;
      DSoutros.DataSet.Open;
      DBNavigator1.DataSource := DSoutros;
    end;

    1:   //advogado
    begin
      SQLAdvogado.sql.text := 'Select * from advogado where ADVOGADO like upper('
            + qs(EditLocalizar.text + '%') + ') order by ADVOGADO';
      PageControlModeloCadastro.TabIndex:=1;
      DSadvogado.DataSet.Close;
      DSadvogado.DataSet.Open;
      DBNavigator1.DataSource := DSadvogado;
    end;

    2:   //autoridade
    begin
      SQLautoridade.sql.text := 'Select * from autoridade where AUTORIDADE like upper('
            + qs(EditLocalizar.text + '%') + ') order by AUTORIDADE';
      PageControlModeloCadastro.TabIndex:=2;
      DSautoridade.DataSet.Close;
      DSautoridade.DataSet.Open;
    end;
  end;
  SQLGrid.SQL.Text := 'select * from movimento m, individuo i '
  + 'where i.id_individuo = m.id_individuo and i.individuo like upper('
  + qs(EditLocalizar.text + '%') + ')  and id_up = :id_up order by m.entrada desc';
  dsGrid.DataSet.Close;
  SQLGrid.Params[0].Value :=GLOBAL_ID_UP;
  dsGrid.DataSet.Open;
  end;
//  DsConsulta.DataSet.Close;
//  DsConsulta.DataSet.Open;

 // PageControlConsulta.ActivePageIndex := 1;
 // PageControlModeloCadastro.ActivePageIndex := 0;

end;

procedure TFrmControlePortaria.DsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsConsulta.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
    begin
      SqlCadastro.SQL.Text := 'SELECT * FROM VISITANTE WHERE ID_VISITANTE = -1 ';
      DsCadastro.DataSet.Close;
      DsCadastro.DataSet.Open;
      Exit;
    end;

    SqlCadastro.SQL.Text := 'SELECT * FROM VISITANTE WHERE ID_VISITANTE = ' + Fieldbyname('ID_VISITANTE').AsString;
    DsCadastro.DataSet.Close;
    DsCadastro.DataSet.Open;

  end;

end;

procedure TFrmControlePortaria.DBImageFOTOClick(Sender: TObject);
{var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;  }
begin
{  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialogFOTO.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialogFOTO.FileName)));
        DBImageFOTO.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end; }
end;

procedure TFrmControlePortaria.ToolButtonmovimentarClick(Sender: TObject);
var
  sQuantidade_Menor, ent : string;
  iErro: integer;
  date_temp : string;
begin
  case RadioGroupPessoa.ItemIndex of

    0:  //INDIVIDUO
    begin
        with DSoutros.DataSet do
        begin
          //se não estiver ativado sai
          if not Active then
            Exit;
          //se não houver individuo informa que não há registro cadastrado e sai
          if IsEmpty then
          begin
            ShowMessage('Sem cadastro de indivíduo.');
            Exit;
          end;
          //
          if not ValidaPreenchimento then
          begin
            Editar.OnClick(nil);
            Exit;
          end;
          SQLGrid.SQL.Text := 'select * from movimento m, individuo i '
          + 'where i.id_individuo = m.id_individuo and i.individuo like upper('
          + qs(EditLocalizar.text + '%') + ') and m.saida is null and id_up = :id_up order by m.entrada desc';
          dsGrid.DataSet.Close;
          SQLGrid.Params[0].Value :=GLOBAL_ID_UP;
          dsGrid.DataSet.Open;
          PageControlConsulta.ActivePageIndex := 0;
          //chama o formulario selecina tipo visita para preenchimento
          Frmselecionartipovisita := TFrmselecionartipovisita.Create(Application);
          FrmSelecionarTipoVisita.EditIndividuo.Text := DSoutros.DataSet.fieldByName('individuo').AsString;
          if Frmselecionartipovisita.ShowModal = mrok then
          begin
            //se o dsoutros estiver em edição ou inserção salva utilizando o evento salvar
            if state in [dsedit, dsinsert] then
            begin
              Salvar.OnClick(nil);
              Refresh;
            end;
            //
            dsmovimento.DataSet.Close;
            SqlMovimento.Params[0].Value := GLOBAL_ID_UP;
            SqlMovimento.Params[1].Value := DSoutros.DataSet.fieldByName('id_individuo').AsInteger;
            DsMovimento.DataSet.Open;

            if (dsmovimento.DataSet.IsEmpty) or
            ((DsMovimento.DataSet.FieldByName('entrada').AsDateTime <> null) and (DsMovimento.DataSet.FieldByName('saida').Value <> null)) then begin
              DsMovimento.DataSet.Append;
              FrmSelecionarTipoVisita.DateTimePickerdata.Date := date;
              DsMovimento.DataSet.fieldbyname('id_movimento').AsInteger := DBGenerator('id_movimento'); // atribui valor da chave primária da tabela MOVIMENTO
              DsMovimento.DataSet.fieldbyname('id_individuo').AsInteger := fieldbyname('id_individuo').AsInteger; // atribui o indivíduo a tablema MOVIMENTO
              if (DsMovimento.DataSet.FieldByName('entrada').AsDateTime <> null) and (DsMovimento.DataSet.FieldByName('saida').Value <> null) then
               begin
                date_temp := FormatDateTime('dd/mm/yyyy', FrmSelecionarTipoVisita.DateTimePickerdata.Date);
                date_temp := date_temp + FrmSelecionarTipoVisita.Edithora.Text;
                DsMovimento.DataSet.fieldbyname('entrada').AsString := date_temp;
               end
              else
               begin
                date_temp := FormatDateTime('dd/mm/yyyy', FrmSelecionarTipoVisita.DateTimePickerdata.Date);
                date_temp := date_temp + ' ' + FrmSelecionarTipoVisita.Edithora.Text;
                DsMovimento.DataSet.fieldbyname('entrada').AsString := date_temp;
               end;
              DsMovimento.DataSet.fieldbyname('gaveta').AsString := FrmSelecionarTipoVisita.Editcontato.Text;
              DsMovimento.DataSet.fieldbyname('posto_trabalho').AsString := FrmSelecionarTipoVisita.Editlocal.Text;
              DsMovimento.DataSet.fieldbyname('id_up').AsInteger := GLOBAL_ID_UP;

              DsMovimento.DataSet.Post;

              IniciaTransCadastro;

              iErro := TClientDataSet(DsMovimento.DataSet).ApplyUpdates(0);

              if iErro = 0 then
                finalizaTransCadastro
              else
                CancelaTransCadastro;

              EditLocalizar.Text := '';
              EditLocalizar.SetFocus
            end else begin
              date_temp := FormatDateTime('dd/mm/yyyy', FrmSelecionarTipoVisita.DateTimePickerdata.Date);
              date_temp := date_temp + ' ' + FrmSelecionarTipoVisita.Edithora.Text;
              DsMovimento.DataSet.edit;
              DsMovimento.DataSet.fieldbyname('id_individuo').AsInteger := DSoutros.DataSet.fieldByName('id_individuo').AsInteger;
              DsMovimento.DataSet.fieldbyname('saida').AsString := date_temp;

              DsMovimento.DataSet.Post;

              IniciaTransCadastro;

              iErro := TClientDataSet(DsMovimento.DataSet).ApplyUpdates(0);

              if iErro = 0 then
                finalizaTransCadastro
              else
                CancelaTransCadastro;

              EditLocalizar.Text := '';
              EditLocalizar.SetFocus;
            end;
          end;

        end;
        dsGrid.DataSet.Close;
        SQLGrid.Params[0].Value := GLOBAL_ID_UP;
        dsGrid.DataSet.Open;
    end;

    1: //ADVOGADO
    begin

    end;

    2: //AUTORIDADE
    begin

    end;

  end;

{

  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
    begin
      ShowMessage('Sem cadastro de visitante.');
      Exit;
    end;

    if not ValidaPreenchimento then
    begin
      Editar.OnClick(nil);
      Exit;
    end;

    if fieldbyname('STATUS').AsString = 'I' then
    begin
      ShowMessage('Visitante inativo. Motivo: ' + fieldbyname('MOTIVO_INATIVO').AsString + '.');
      if EditLocalizar.CanFocus then
        EditLocalizar.SetFocus;
      Exit;
    end;

    PageControlConsulta.ActivePageIndex := 0;

    Frmselecionartipovisita := TFrmselecionartipovisita.Create(Application);
    if Frmselecionartipovisita.ShowModal = mrok then
    begin
      if state in [dsedit, dsinsert] then
      begin
        Salvar.OnClick(nil);
        Refresh;
      end;

      DsMovimento.DataSet.Append;
      DsMovimento.DataSet.fieldbyname('id_mov_diario_visitantes').AsInteger := 0;
      DsMovimento.DataSet.fieldbyname('id_up').AsInteger := GLOBAL_ID_UP;
      DsMovimento.DataSet.fieldbyname('id_visitante').AsInteger := fieldbyname('id_visitante').AsInteger;
      DsMovimento.DataSet.fieldbyname('nome_visitante').AsString := fieldbyname('visitante').AsString;
      DsMovimento.DataSet.fieldbyname('numero_carteirinha').AsString := fieldbyname('numero_carteirinha').AsString;
      DsMovimento.DataSet.fieldbyname('cpf').AsString := fieldbyname('cpf').AsString;
      DsMovimento.DataSet.fieldbyname('rg').AsString := fieldbyname('rg').AsString;
      DsMovimento.DataSet.fieldbyname('orgao_expedidor').AsString := fieldbyname('orgao_expedidor').AsString;
      DsMovimento.DataSet.fieldbyname('sexo').AsString := fieldbyname('sexo').AsString;
      DsMovimento.DataSet.fieldbyname('data_visita').AsString :=
        FormatDateTime('dd/mm/yyyy', FrmSelecionarTipoVisita.DateTimePickerdata.Date);
      DsMovimento.DataSet.fieldbyname('status').AsString := FrmSelecionarTipoVisita.ComboBox1.Text;
      DsMovimento.DataSet.fieldbyname('hora_visita').AsString := FrmSelecionarTipoVisita.Edithora.Text;
      DsMovimento.DataSet.fieldbyname('contato').AsString := FrmSelecionarTipoVisita.Editcontato.Text;
      DsMovimento.DataSet.fieldbyname('local').AsString := FrmSelecionarTipoVisita.Editlocal.Text;
      DsMovimento.DataSet.Post;

      if DsMovimento.DataSet.State in [dsedit, dsinsert] then
        DsMovimento.DataSet.Post;

      IniciaTransCadastro;

      iErro := TClientDataSet(DsMovimento.DataSet).ApplyUpdates(0);

      if iErro = 0 then
        finalizaTransCadastro
      else
        CancelaTransCadastro;


      DsMovimento.DataSet.Close;
      SqlMovimento.Params[0].Value := GLOBAL_ID_UP;
      DsMovimento.DataSet.Open;

      DsMovimento.DataSet.last;

      EditLocalizar.Text := '';
      EditLocalizar.SetFocus;

    end;

  end;

}

end;

procedure TFrmControlePortaria.Visitante1Click(Sender: TObject);
begin
 //inherited;
  tab:=0; //VAR USADA PARA TRAVAR A MOVIMENTAÇÃO ENTRE AS ABAS (EVENTO ONCLICK DO PAGECONTROL)

  novo.Enabled:=False;
  editar.Enabled:=false;
  cancelar.Enabled:=true;


  //  novo_registro := true;
  {dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (id_visitante, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open; }
  DsCadastro.DataSet.Append;
  DsCadastro.DataSet.fieldbyname('id_visitante').AsInteger := DBGenerator('id_visitante');
  DsCadastro.DataSet.fieldbyname('NUMERO_CARTEIRINHA').AsString := EditLocalizar.Text;
  DsCadastro.DataSet.fieldbyname('STATUS').AsString := 'A';
  DsCadastro.DataSet.fieldbyname('SEXO').AsString := 'F';
  dm.DsExecute.DataSet.Close;

  PageControlModeloCadastro.Enabled:=true;
  PageControlModeloCadastro.TabIndex:=0;
  salvar.Enabled:=True;



 { if DBEdit4.canfocus then
     DBEdit4.setfocus;  }
end;

procedure TFrmControlePortaria.Advogado1Click(Sender: TObject);
begin
// inherited;
  tab:=1;

  novo.Enabled:=False;
  editar.Enabled:=false;
  cancelar.Enabled:=true;


  //  novo_registro := true;
  {dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (id_advogado, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open; }
  DSadvogado.DataSet.Append;
  DSadvogado.DataSet.fieldbyname('id_advogado').AsInteger := DBGenerator('id_visitante');
  dm.DsExecute.DataSet.Close;
  PageControlModeloCadastro.Enabled:=true;
  salvar.Enabled:=True;

  PageControlModeloCadastro.TabIndex:=1;



end;

procedure TFrmControlePortaria.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  inherited;
  ShowMessage('Clique em "cancelar" para alternar entre as abas');
  PageControlModeloCadastro.TabIndex:=tab;
  exit;
end;

procedure TFrmControlePortaria.FormCreate(Sender: TObject);
begin
 // inherited;
 DSadvogado.DataSet.Close;
 DSadvogado.DataSet.Open;
 DM.DSCIDADE.DataSet.Close;
 DM.DSCIDADE.DataSet.Open;
 DSautoridade.DataSet.Close;
 DSautoridade.DataSet.Open;
 DSoutros.DataSet.Close;
 DSoutros.DataSet.Open;



 SQLGrid.SQL.Text := 'select * from movimento m, individuo i '
 + ' where i.id_individuo = m.id_individuo and id_up = :id_up order by m.entrada desc';
 dsGrid.DataSet.Close;
 SQLGrid.Params[0].Value :=GLOBAL_ID_UP;
 dsGrid.DataSet.Open;
 DBNavigator1.Enabled;
end;

procedure TFrmControlePortaria.Autoridade1Click(Sender: TObject);
begin
 // inherited;
  tab:=2;

  novo.Enabled:=False;
  editar.Enabled:=false;
  cancelar.Enabled:=true;

  DSautoridade.DataSet.Append;
  DSautoridade.DataSet.fieldbyname('id_autoridade').AsInteger := DBGenerator('id_autoridade');
  dm.DsExecute.DataSet.Close;

  PageControlModeloCadastro.Enabled:=true;
  salvar.Enabled:=True;

  PageControlModeloCadastro.TabIndex:=2;

 

end;

procedure TFrmControlePortaria.Outros1Click(Sender: TObject);
begin
 // inherited;

end;

procedure TFrmControlePortaria.DBImageadvClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DSadvogado.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialogFOTO.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialogFOTO.FileName)));
        DBImageadv.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmControlePortaria.DBImageindClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DSoutros.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialogFOTO.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialogFOTO.FileName)));
        DBImageind.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmControlePortaria.DBImageautClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DSautoridade.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialogFOTO.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialogFOTO.FileName)));
        DBImageaut.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmControlePortaria.EditarClick(Sender: TObject);
begin
 // inherited;

 
      PageControlModeloCadastro.Enabled := true;
      StatusBar1.Panels[1].Text := 'EDIÇÃO';
      Novo.Enabled := False;
      Editar.Enabled := False;
      Salvar.Enabled := True;
      Cancelar.Enabled := True;
      Excluir.Enabled := False;

      case RadioGroupPessoa.ItemIndex of
      1:
      begin
          //DsCadastro.DataSet.Edit;
          DSoutros.DataSet.Edit;
      end;
      2:
      begin
          DSadvogado.DataSet.Edit;
      end;
      3:
      begin
         DSautoridade.DataSet.Edit;
      end;
 end;



  //CorNosCampos;

end;

procedure TFrmControlePortaria.CancelarClick(Sender: TObject);
begin
 // inherited;

  StatusBar1.Panels[1].Text := 'CANCELANDO';
  Novo.Enabled := True;
  Editar.Enabled := True;
  Salvar.Enabled := False;
  Excluir.Enabled := True;
  Cancelar.Enabled := False;
  //DsCadastro.DataSet.Cancel;
  StatusBar1.Panels[1].Text := '...';

  case RadioGroupPessoa.ItemIndex of
    0:
    begin
       DSoutros.DataSet.Cancel;
    end;
    1:
    begin
       DSadvogado.DataSet.Cancel;
    end;
    2:
    begin
       DSautoridade.DataSet.Cancel;
    end;
  end;

  cancelaTransCadastro;
  PageControlModeloCadastro.Enabled := false;


end;

procedure TFrmControlePortaria.RadioGroupPessoaClick(Sender: TObject);
begin
//  inherited;
  DBNavigator1.Enabled;
  case RadioGroupPessoa.ItemIndex of
    0:
    begin
       PageControlModeloCadastro.TabIndex:=0;
       PageControlConsulta.TabIndex := 0;
       DBNavigator1.DataSource := DSoutros;
    end;

    1:    //advogado
    BEGIN
       PageControlModeloCadastro.TabIndex:=1;
       PageControlConsulta.TabIndex := 1;
       DBNavigator1.DataSource := DSadvogado;
    end;

    2:     //autoridade
    begin
       PageControlModeloCadastro.TabIndex:=2;
       PageControlConsulta.TabIndex := 2;
       DBNavigator1.DataSource := DSautoridade;
    end;
  END;

end;


end.

