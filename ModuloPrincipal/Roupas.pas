unit Roupas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Buttons, adpDBDateTimePicker, Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFrmRoupas = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    dsproupasinternos: TDataSetProvider;
    cdsroupasinternos: TClientDataSet;
    dsroupasinternos: TDataSource;
    cdsroupasinternosID_ROUPAS_INTERNO: TIntegerField;
    cdsroupasinternosID_ROUPA: TIntegerField;
    cdsroupasinternosQTDE: TIntegerField;
    cdsroupasinternosID_VESTIMENTAS: TIntegerField;
    cdsroupasinternosRoupa: TStringField;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    Dspconsulta: TDataSetProvider;
    CdsCadastroID_ROUPAS: TIntegerField;
    CdsCadastroID_INTERNO: TIntegerField;
    CdsCadastroDATA: TSQLTimeStampField;
    CdsConsultaID_ROUPAS: TIntegerField;
    CdsConsultaNOME_INTERNO: TStringField;
    Button1: TButton;
    Editprontuario: TEdit;
    Label7: TLabel;
    SQLroupasinternos: TFDQuery;
    SqlSelectRoupaInterno: TFDQuery;
    SqlConsulta: TFDQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditprontuarioExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRoupas: TFrmRoupas;

implementation

uses DmSecundario, CadastroVestimentas, Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmRoupas.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Frmcadastrovestimentas := TFrmcadastrovestimentas.create(Application);
  Frmcadastrovestimentas.showmodal;
  FreeAndNil(Frmcadastrovestimentas);

  DM.dsvestimentas.DataSet.Close;
  dm.dsvestimentas.DataSet.OPEN;
end;

procedure TFrmRoupas.FormShow(Sender: TObject);
begin
  inherited;
  PageControlModeloCadastro.ActivePageIndex := 1;


  dm.dsvestimentas.DataSet.close;
  dm.dsvestimentas.DataSet.Open;

  dm.DsInterno.DataSet.close;
  dm.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  dm.DsInterno.DataSet.Open;

  dsroupasinternos.DataSet.close;
  dsroupasinternos.DataSet.Open;

end;

procedure TFrmRoupas.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.fieldbyname('id_roupas').AsInteger := DBGenerator('id_roupas');
  adpDBDateTimePicker1.Date := date;
  SqlConsulta.Sql.Clear;
end;

procedure TFrmRoupas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if dscadastro.DataSet.State in [dsedit] then
  begin
  showmessage('Não é possível inserir novos registros em modo de edição!!');
  exit;
  end;
  dsroupasinternos.DataSet.Append;
  dsroupasinternos.DataSet.FieldByName('id_roupas_interno').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(id_roupas_interno,1) FROM RDB$DATABASE');
  dsroupasinternos.DataSet.FieldByName('id_roupa').AsInteger := DsCadastro.DataSet.FieldByName('id_roupas').AsInteger;
  dsroupasinternos.DataSet.FieldByName('qtde').AsString := Edit1.text;
  dsroupasinternos.DataSet.FieldByName('id_vestimentas').AsInteger := DBLookupComboBox1.KeyValue;
  dsroupasinternos.DataSet.Post;

  Edit1.Text := '';
  DBLookupComboBox1.KeyValue:= null;
end;

procedure TFrmRoupas.SalvarClick(Sender: TObject);
begin
  inherited;
//  dsroupasinternos.DataSet.Close;
//  dsroupasinternos.DataSet.Open;
end;

procedure TFrmRoupas.EditLocalizarChange(Sender: TObject);
begin
  inherited;
  SqlConsulta.sql.text := SqlSelectRoupaInterno.sql.text + ' where id_up = '+ IntToStr(GLOBAL_ID_UP) +  ' and i.nome_interno like upper('
  + qs(EditLocalizar.text + '%') + ') order by i.nome_interno ';

//  Outro método para realização do Consulta Roupa Interno
//  DsConsulta.DataSet.Filter:= 'id_up = '+ IntToStr(GLOBAL_ID_UP) + ' and i.nome_interno like upper('
//  + qs(EditLocalizar.text + '%') + ') order by i.nome_interno ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmRoupas.DBGridConsultaDblClick(Sender: TObject);
var
  cod: integer;
begin
  cod := DsConsulta.DataSet.FieldByName('id_roupas').AsInteger;

  SqlCadastro.ParamByName('id_roupas').AsInteger := cod;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  EditarClick(nil);

  end;




procedure TFrmRoupas.FormCreate(Sender: TObject);
begin
  inherited;
//   SqlCadastro.ParamByName('id_roupas').AsInteger := 0;

end;

procedure TFrmRoupas.Button1Click(Sender: TObject);
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

procedure TFrmRoupas.EditprontuarioExit(Sender: TObject);
begin
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
      DBLookupComboBoxinterno.KeyValue := DM.DsExecute.DataSet.fieldbyname('id_interno').Asfloat;
    end
    else
    begin
      showmessage('Interno não Localizado!');
      if Editprontuario.canfocus then
        Editprontuario.SetFocus;
    end;

    DM.DsExecute.dataset.close;

  end;
  adpDBDateTimePicker1.SetFocus;

end;

end.

