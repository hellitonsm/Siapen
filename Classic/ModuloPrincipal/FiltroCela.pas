unit FiltroCela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, StdCtrls, jpeg, ExtCtrls, Buttons, DBCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TFrmFiltroCela = class(TFrmModeloFormulario)
    GroupBox1: TGroupBox;
    LabelPavilhao: TLabel;
    LabelGaleria: TLabel;
    LabelCela: TLabel;
    LabelSolario: TLabel;
    DBLookupComboBoxPavilhao: TDBLookupComboBox;
    DBLookupComboBoxGaleria: TDBLookupComboBox;
    DBLookupComboBoxCela: TDBLookupComboBox;
    DBLookupComboBoxSolario: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SqlPavilhao: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    SqlGaleria: TSQLQuery;
    SqlSolario: TSQLQuery;
    DspSolario: TDataSetProvider;
    CdsSolario: TClientDataSet;
    DsSolario: TDataSource;
    DsCela: TDataSource;
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    SqlCela: TSQLQuery;
    SQLconspadrao: TSQLQuery;
    Dspconspadrao: TDataSetProvider;
    Cdsconspadrao: TClientDataSet;
    Dsconspadrao: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBoxPavilhaoClick(Sender: TObject);
    procedure DBLookupComboBoxGaleriaClick(Sender: TObject);
    procedure DBLookupComboBoxSolarioClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroCela: TFrmFiltroCela;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmFiltroCela.FormCreate(Sender: TObject);
begin
  inherited;
  LabelPavilhao.Caption := GLOBAL_NIVEL_1;
  LabelGaleria.Caption := GLOBAL_NIVEL_2;
  LabelSolario.Caption := GLOBAL_NIVEL_3;
  LabelCela.Caption := GLOBAL_NIVEL_4;

  SqlPavilhao.SQL.Text := ' select * from pavilhao where id_up=' + inttostr(GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.Open;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.Open;

  DsSolario.DataSet.Close;
  DsSolario.DataSet.Open;

  DsCela.DataSet.Close;
  DsCela.DataSet.Open;

  {selecionando cela virtual}
  SQLconspadrao.sql.text := 'select * from padrao where cod_up ='
    + qs(inttostr(global_id_up));
  dsconspadrao.dataset.close;
  dsconspadrao.dataset.open;

  DBLookupComboBoxPavilhao.KeyValue := dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsVariant;
  DBLookupComboBoxGaleria.KeyValue := dsconspadrao.DataSet.fieldbyname('id_galeria').AsVariant;
  DBLookupComboBoxSolario.KeyValue := dsconspadrao.DataSet.fieldbyname('id_solario').AsVariant;
  DBLookupComboBoxCela.KeyValue := dsconspadrao.DataSet.fieldbyname('id_cela').AsVariant;


end;

procedure TFrmFiltroCela.DBLookupComboBoxPavilhaoClick(Sender: TObject);
begin
  inherited;
  DBLookupComboBoxGaleria.KeyValue := null;
  DBLookupComboBoxSolario.KeyValue := null;
  DBLookupComboBoxCela.KeyValue := null;

end;

procedure TFrmFiltroCela.DBLookupComboBoxGaleriaClick(Sender: TObject);
begin
  inherited;
  DBLookupComboBoxSolario.KeyValue := null;
  DBLookupComboBoxCela.KeyValue := null;

end;

procedure TFrmFiltroCela.DBLookupComboBoxSolarioClick(Sender: TObject);
begin
  inherited;
  DBLookupComboBoxCela.KeyValue := null;

end;

procedure TFrmFiltroCela.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DBLookupComboBoxPavilhao.KeyValue := -1;
  DBLookupComboBoxGaleria.KeyValue := null;
  DBLookupComboBoxSolario.KeyValue := null;
  DBLookupComboBoxCela.KeyValue := null;
end;

procedure TFrmFiltroCela.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  DBLookupComboBoxSolario.KeyValue := -1;
  DBLookupComboBoxCela.KeyValue := null;

end;

procedure TFrmFiltroCela.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  DBLookupComboBoxCela.KeyValue := -1;

end;

procedure TFrmFiltroCela.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  DBLookupComboBoxGaleria.KeyValue := -1;
  DBLookupComboBoxSolario.KeyValue := null;
  DBLookupComboBoxCela.KeyValue := null;

end;

end.
