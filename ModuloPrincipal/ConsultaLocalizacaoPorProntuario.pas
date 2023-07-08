unit ConsultaLocalizacaoPorProntuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Grids, DBGrids, SqlExpr, Provider, DBClient,
  StdCtrls, ExtCtrls, DBCtrls, Buttons;

type
  TFrmConsultaLocalizacaoPorProntuario = class(TForm)
    DBGrid1: TDBGrid;
    DsVinc_Mudanca_Cela: TDataSource;
    DspVinc_Mudanca_Cela: TDataSetProvider;
    SqlVinc_Mudanca_Cela: TSQLQuery;
    CdsVinc_Mudanca_Cela: TClientDataSet;
    CdsVinc_Mudanca_CelaRGI: TStringField;
    CdsVinc_Mudanca_CelaNOME_INTERNO: TStringField;
    CdsVinc_Mudanca_CelaID_UP: TIntegerField;
    CdsVinc_Mudanca_CelaNOME_UP: TStringField;
    CdsVinc_Mudanca_CelaID_PAVILHAO_ANTES: TIntegerField;
    CdsVinc_Mudanca_CelaID_GALERIA_ANTES: TIntegerField;
    CdsVinc_Mudanca_CelaGALERIA: TStringField;
    CdsVinc_Mudanca_CelaID_SOLARIO_ANTES: TIntegerField;
    CdsVinc_Mudanca_CelaSOLARIO: TStringField;
    CdsVinc_Mudanca_CelaID_CELA_ANTES: TIntegerField;
    CdsVinc_Mudanca_CelaCELA: TStringField;
    CdsVinc_Mudanca_CelaID_PAVILHAO_NOVO: TIntegerField;
    CdsVinc_Mudanca_CelaID_GALERIA_NOVO: TIntegerField;
    CdsVinc_Mudanca_CelaGALERIA_1: TStringField;
    CdsVinc_Mudanca_CelaID_SOLARIO_NOVO: TIntegerField;
    CdsVinc_Mudanca_CelaSOLARIO_1: TStringField;
    CdsVinc_Mudanca_CelaID_CELA_NOVO: TIntegerField;
    CdsVinc_Mudanca_CelaCELA_1: TStringField;
    CdsVinc_Mudanca_CelaDATA: TSQLTimeStampField;
    Label4: TLabel;
    Dsvinc_transferencia_interno: TDataSource;
    Dspvinc_transferencia_interno: TDataSetProvider;
    Sqlvinc_transferencia_interno: TSQLQuery;
    DBGrid2: TDBGrid;
    Label5: TLabel;
    SqlExecute: TSQLQuery;
    Cdsvinc_transferencia_interno: TClientDataSet;
    Cdsvinc_transferencia_internoRGI: TStringField;
    Cdsvinc_transferencia_internoNOME_INTERNO: TStringField;
    Cdsvinc_transferencia_internoORIGEM: TStringField;
    Cdsvinc_transferencia_internoDESTINO: TStringField;
    Cdsvinc_transferencia_internoDATA: TSQLTimeStampField;
    Cdsvinc_transferencia_internoTIPO_DOCUMENTO: TStringField;
    Cdsvinc_transferencia_internoMOTIVO_MOVIMENTACAO: TStringField;
    Cdsvinc_transferencia_internoLIBERADA: TStringField;
    Cdsvinc_transferencia_internoRECEBIDA: TStringField;
    EditLocalizar: TEdit;
    SqlExecute2: TSQLQuery;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    procedure Edit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditLocalizarExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaLocalizacaoPorProntuario: TFrmConsultaLocalizacaoPorProntuario;

implementation

uses DmPrincipal, CadastroDestino, Lib, CancelarSaidao,
  CancelarTransferencia, MenuRelatorio, FiltroCela, Aguarde;

{$R *.dfm}

procedure TFrmConsultaLocalizacaoPorProntuario.Edit1Exit(Sender: TObject);
begin
  {
    if Edit1.Text <> '' then
      begin

      SqlVinc_Mudanca_Cela.sql.text := SqlExecute2.sql.text + ' where i.rgi =' + Qs(Edit1.Text) + ' order by mc.data desc ';
      DsVinc_Mudanca_Cela.dataset.close;
      DsVinc_Mudanca_Cela.dataset.open;
      Sqlvinc_transferencia_interno.sql.text := SqlExecute.sql.text + ' where i.rgi =' + Qs(Edit1.Text)+ ' order by ti.data desc ';
      Dsvinc_transferencia_interno.dataset.close;
      Dsvinc_transferencia_interno.dataset.open;

      if Edit1.canfocus then
          Edit1.SetFocus;
      end
    else
      begin
        showmessage('Interno não Localizado!');
        if Edit1.canfocus then
          Edit1.SetFocus;
      end;
  }
end;

procedure TFrmConsultaLocalizacaoPorProntuario.Button1Click(
  Sender: TObject);
begin
  {
    if RadioGroupTipoLocalizar.ItemIndex = 0 then
    begin
      if EditLocalizar.text = '' then
        begin
          ShowMessage('Informe o prontuário do Interno!');
          if EditLocalizar.CanFocus then
          EditLocalizar.SetFocus;
        end;
      SqlVinc_Mudanca_Cela.sql.text := SqlExecute2.sql.text + ' where i.rgi =' + Qs(EditLocalizar.Text) + ' order by mc.data desc ';
      DsVinc_Mudanca_Cela.dataset.close;
      DsVinc_Mudanca_Cela.dataset.open;
      Sqlvinc_transferencia_interno.sql.text := SqlExecute.sql.text + ' where i.rgi =' + Qs(EditLocalizar.Text)+ ' order by ti.data desc ';
      Dsvinc_transferencia_interno.dataset.close;
      Dsvinc_transferencia_interno.dataset.open;
    end
    else
    begin
      if EditLocalizar.text = '' then
        begin
          ShowMessage('Informe o Nome do Interno!');
          if EditLocalizar.CanFocus then
          EditLocalizar.SetFocus;
        end;
      SqlVinc_Mudanca_Cela.sql.text := SqlExecute2.sql.text + ' where i.nome_interno like ' + qs(EditLocalizar.text + '%') + ' order by mc.data desc ';
      DsVinc_Mudanca_Cela.dataset.close;
      DsVinc_Mudanca_Cela.dataset.open;
      Sqlvinc_transferencia_interno.sql.text := SqlExecute.sql.text + ' where i.nome_interno like ' + qs(EditLocalizar.text + '%') + ' order by ti.data desc ';
      Dsvinc_transferencia_interno.dataset.close;
      Dsvinc_transferencia_interno.dataset.open;
    end;
   }
end;

procedure TFrmConsultaLocalizacaoPorProntuario.EditLocalizarExit(
  Sender: TObject);
begin
  inherited;
// Seleciona o interno pelo prontuário
  if EditLocalizar.Text <> '' then
  begin

    DM.SqlExecute.sql.text := 'select id_interno, nome_interno from interno where rgi =' + Qs(EditLocalizar.Text)
      + ' and id_up = ' + IntToStr(GLOBAL_ID_UP) + 'and st = ''A''';
    DM.DsExecute.dataset.close;
    DM.DsExecute.dataset.open;

    if DM.DsExecute.dataset.recordcount > 0 then
    begin
      DBLookupComboBoxinterno.KeyValue := DM.DsExecute.DataSet.fieldbyname('id_interno').Asfloat;
    end
    else
    begin
      showmessage('Interno não Localizado!');
      if EditLocalizar.canfocus then
        EditLocalizar.SetFocus;
    end;

    DM.DsExecute.dataset.close;

  end;

end;

procedure TFrmConsultaLocalizacaoPorProntuario.FormShow(Sender: TObject);
begin
  EditLocalizar.SetFocus
end;

procedure TFrmConsultaLocalizacaoPorProntuario.BitBtn1Click(
  Sender: TObject);
begin
  if EditLocalizar.Text <> '' then
  begin

    DM.SqlExecute.sql.text := 'select id_interno, nome_interno from interno where rgi =' + Qs(EditLocalizar.Text)
      + ' and id_up = ' + IntToStr(GLOBAL_ID_UP) + 'and st = ''A''';
    DM.DsExecute.dataset.close;
    DM.DsExecute.dataset.open;

    if DM.DsExecute.dataset.eof then
    begin
      showmessage('Interno não Localizado!');
      if EditLocalizar.canfocus then
        EditLocalizar.SetFocus;
      exit;
    end;
    DM.DsExecute.dataset.close;

    SqlVinc_Mudanca_Cela.sql.text := SqlExecute2.sql.text + ' where i.rgi =' + Qs(EditLocalizar.Text) + ' order by mc.data desc ';
    DsVinc_Mudanca_Cela.dataset.close;
    DsVinc_Mudanca_Cela.dataset.open;

    Sqlvinc_transferencia_interno.sql.text := SqlExecute.sql.text + ' where i.rgi =' + Qs(EditLocalizar.Text) + ' order by ti.data desc ';
    Dsvinc_transferencia_interno.dataset.close;
    Dsvinc_transferencia_interno.dataset.open;

    if ContemValor('C', PERMISSAO_TRANSFERENCIAINTERNO) then
    begin
      if Dsvinc_transferencia_interno.DataSet.Eof then
        showmessage('Não há Transferência Externa Para Este Interno!');
    end;

    if ContemValor('C', PERMISSAO_MUDANCACELA) then
    begin
      if DsVinc_Mudanca_Cela.DataSet.Eof then
        showmessage('Não há Mudança de Cela Para Este Interno!');
    end;

    if EditLocalizar.canfocus then
      EditLocalizar.SetFocus;
  end;
  if DBLookupComboBoxInterno.Text <> '' then
  begin

// Qs(DBLookupComboBoxinterno.KeyValue) - Qs é uma função da Lib que já converte o dado desejado em string
    SqlVinc_Mudanca_Cela.sql.text := SqlExecute2.sql.text + ' where i.id_interno =' + Qs(DBLookupComboBoxinterno.KeyValue) + ' order by mc.data desc ';
    DsVinc_Mudanca_Cela.dataset.close;
    DsVinc_Mudanca_Cela.dataset.open;

    Sqlvinc_transferencia_interno.sql.text := SqlExecute.sql.text + ' where i.id_interno =' + Qs(DBLookupComboBoxinterno.KeyValue) + ' order by ti.data desc ';
    Dsvinc_transferencia_interno.dataset.close;
    Dsvinc_transferencia_interno.dataset.open;

    if ContemValor('C', PERMISSAO_TRANSFERENCIAINTERNO) then
    begin
      if Dsvinc_transferencia_interno.DataSet.Eof then
        showmessage('Não há Transferência Externa Para Este Interno!');
    end;

    if ContemValor('C', PERMISSAO_MUDANCACELA) then
    begin
      if DsVinc_Mudanca_Cela.DataSet.Eof then
        showmessage('Não há Mudança de Cela Para Este Interno!');
    end;

    if EditLocalizar.canfocus then
      EditLocalizar.SetFocus;
  end;

  if (EditLocalizar.Text = '') and (DBLookupComboBoxInterno.Text = '') then
    Showmessage('Digite o Prontuário ou Selecione um Interno pelo nome!');
  if EditLocalizar.canfocus then
    EditLocalizar.SetFocus;


end;

procedure TFrmConsultaLocalizacaoPorProntuario.FormCreate(Sender: TObject);
begin
  DM.DsInterno.DataSet.Close;
  DM.DsInterno.DataSet.Open;

  if not ContemValor('C', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    DBGrid2.Visible := False;
    Label5.Visible := False;
  end;

  if not ContemValor('C', PERMISSAO_MUDANCACELA) then
  begin
    DBGrid1.Visible := False;
    Label4.Visible := False;
  end;
end;

procedure TFrmConsultaLocalizacaoPorProntuario.BitBtn2Click(
  Sender: TObject);
begin
  Close;
end;

end.

