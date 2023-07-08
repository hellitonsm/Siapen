unit CadastroRoupa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, adpDBDateTimePicker, Mask, Buttons;

type
  TFrmRoupa = class(TFrmModeloCadastro)
    Label3: TLabel;
    Label4: TLabel;
    DBEditCodigo: TDBEdit;
    SQLRoupasInterno: TSQLQuery;
    CDSRoupasInterno: TClientDataSet;
    DSRoupasInterno: TDataSource;
    DSPRoupasInterno: TDataSetProvider;
    CDSRoupasInternoID_ROUPAS_INTERNO: TIntegerField;
    CDSRoupasInternoID_ROUPA: TIntegerField;
    CDSRoupasInternoQTDE: TIntegerField;
    CDSRoupasInternoID_VESTIMENTAS: TIntegerField;
    CDSRoupasInternoVestimenta: TStringField;
    Label7: TLabel;
    Editprontuario: TEdit;
    Label6: TLabel;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Button1: TButton;
    SqlSelectRoupaInterno: TSQLQuery;
    DBGrid2: TDBGrid;
    SqlConsulta: TSQLQuery;
    Dspconsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    CdsConsultaRGI: TStringField;
    CdsConsultaNOME_INTERNO: TStringField;
    CdsConsultaVESTIMENTAS: TStringField;
    CdsConsultaQTDE: TIntegerField;
    CdsConsultaDATA: TSQLTimeStampField;
    CdsConsultaID_ROUPAS: TIntegerField;
    DBEdit1: TDBEdit;
    Timer1: TTimer;
    procedure EditprontuarioExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure EditarClick(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EditLocalizarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRoupa: TFrmRoupa;

implementation

uses Lib, DmPrincipal, CadastroVestimentas;

{$R *.dfm}

procedure TFrmRoupa.EditprontuarioExit(Sender: TObject);
begin
  inherited;
  inherited;
// Seleciona o interno pelo prontuário
  if Editprontuario.Text <> '' then
  begin

    DM.SqlExecute.sql.text := 'select id_interno, nome_interno from interno where rgi =' + Qs(Editprontuario.Text)
      + ' and id_up = ' + IntToStr(GLOBAL_ID_UP) + 'and st = ''A''';
    DM.DsExecute.dataset.close;
    DM.DsExecute.dataset.open;

    if DM.DsExecute.dataset.recordcount > 0 then
    begin
      DsCadastro.DataSet.FieldByName('id_interno').AsInteger := DM.DsExecute.DataSet.fieldbyname('id_interno').AsInteger;

    end
    else
    begin
      showmessage('Interno não Localizado!');
      if Editprontuario.canfocus then
        Editprontuario.SetFocus;
    end;

    DM.DsExecute.dataset.close;

  end;
 // DBEdit1.SetFocus;
end;

procedure TFrmRoupa.FormShow(Sender: TObject);
begin
  inherited;
  PageControlModeloCadastro.ActivePageIndex := 1;

  dm.dsvestimentas.DataSet.close;
  dm.dsvestimentas.DataSet.Open;

  dm.DsInterno.DataSet.close;
  dm.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  dm.DsInterno.DataSet.Open;

  dsroupasinterno.DataSet.close;
  dsroupasinterno.DataSet.Open;

  Editprontuario.Text := '';
end;

procedure TFrmRoupa.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.fieldbyname('id_roupas').AsInteger := DBGenerator('id_roupas');
  DBEdit1.Field.EditMask :='99\/99\/9999;1;_';
  DBEdit1.Text := DateToStr(Date);
  
//  SqlConsulta.Sql.Clear;
end;

procedure TFrmRoupa.BitBtn1Click(Sender: TObject);
begin
  inherited;
  inherited;
  if dscadastro.DataSet.State in [dsedit] then
  begin
    showmessage('Não é possível inserir novos registros em modo de edição!!');
    exit;
  end;
  dsroupasinterno.DataSet.Append;
  dsroupasinterno.DataSet.FieldByName('id_roupas_interno').AsInteger := 0;
  dsroupasinterno.DataSet.FieldByName('id_roupa').AsInteger := DsCadastro.DataSet.FieldByName('id_roupas').AsInteger;
  dsroupasinterno.DataSet.FieldByName('qtde').AsString := Edit1.text;
  dsroupasinterno.DataSet.FieldByName('id_vestimentas').AsInteger := DBLookupComboBox1.KeyValue;
  dsroupasinterno.DataSet.Post;

  Edit1.Text := '';
  DBLookupComboBox1.KeyValue := null;

end;

procedure TFrmRoupa.SalvarClick(Sender: TObject);
begin
  inherited;
  Editprontuario.Text := '';
  dsroupasinterno.DataSet.Close;
  dsroupasinterno.DataSet.Open;
  DsCadastro.DataSet.Last;
end;

procedure TFrmRoupa.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Frmcadastrovestimentas := TFrmcadastrovestimentas.create(Application);
  Frmcadastrovestimentas.showmodal;
  FreeAndNil(Frmcadastrovestimentas);

  DM.dsvestimentas.DataSet.Close;
  DM.dsvestimentas.DataSet.Open;

end;

procedure TFrmRoupa.Button1Click(Sender: TObject);
var
  interno: variant;
begin
  inherited;
  interno := BuscaGeral(nil, 'INTERNO', '', 100, 100, self.Width, 400);
  if VarToStrDef(interno, '') <> '' then
  begin
    DBLookupComboBoxInterno.KeyValue := interno;
    Editprontuario.Text := DM.DsInterno.dataset.fieldbyname('RGI').asstring;
    if Editprontuario.CanFocus then
      Editprontuario.SetFocus;
  end;

end;

procedure TFrmRoupa.EditLocalizarChange(Sender: TObject);
begin
  // if not timer1.Enabled then timer1.Enabled := true;
end;

procedure TFrmRoupa.DBGridConsultaDblClick(Sender: TObject);
var
  cod: integer;
begin
  cod := DsConsulta.DataSet.FieldByName('id_roupas').AsInteger;

  SqlCadastro.ParamByName('id_roupas').AsInteger := cod;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  EditarClick(nil);

end;



procedure TFrmRoupa.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_ROUPAS)
    and not ContemValor('E', PERMISSAO_ROUPAS)
    and not ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ROUPAS)
    and not ContemValor('E', PERMISSAO_ROUPAS)
    and not ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ROUPAS)
    and ContemValor('E', PERMISSAO_ROUPAS)
    and not ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ROUPAS)
    and ContemValor('E', PERMISSAO_ROUPAS)
    and ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ROUPAS)
    and not ContemValor('E', PERMISSAO_ROUPAS)
    and ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ROUPAS)
    and not ContemValor('E', PERMISSAO_ROUPAS)
    and ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ROUPAS)
    and ContemValor('E', PERMISSAO_ROUPAS)
    and not ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
end;

procedure TFrmRoupa.DsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_ROUPAS)
    and not ContemValor('E', PERMISSAO_ROUPAS)
    and not ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ROUPAS)
    and not ContemValor('E', PERMISSAO_ROUPAS)
    and not ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ROUPAS)
    and ContemValor('E', PERMISSAO_ROUPAS)
    and not ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ROUPAS)
    and ContemValor('E', PERMISSAO_ROUPAS)
    and ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ROUPAS)
    and not ContemValor('E', PERMISSAO_ROUPAS)
    and ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ROUPAS)
    and not ContemValor('E', PERMISSAO_ROUPAS)
    and ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ROUPAS)
    and ContemValor('E', PERMISSAO_ROUPAS)
    and not ContemValor('D', PERMISSAO_ROUPAS) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
end;

procedure TFrmRoupa.EditarClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Field.EditMask :='99\/99\/9999;1;_';
  DBEdit1.Text := DateToStr(Date);
end;

procedure TFrmRoupa.DBEdit1Click(Sender: TObject);
begin
  inherited;
  DBEdit1.Field.EditMask :='99\/99\/9999;1;_';
  DBEdit1.Text := DateToStr(Date);
end;

procedure TFrmRoupa.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if Length(Editlocalizar.text) > 4 then
   begin
      SqlConsulta.sql.text := SqlSelectRoupaInterno.sql.text + ' where id_up = ' + IntToStr(GLOBAL_ID_UP) + ' and i.nome_interno like upper('
      + qs(EditLocalizar.text + '%') + ') order by i.nome_interno, r.data ';

      DsConsulta.DataSet.Close;
      DsConsulta.DataSet.Open;
   end;
end;

procedure TFrmRoupa.EditLocalizarKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not timer1.Enabled then timer1.Enabled := True;

end;

end.

