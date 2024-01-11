unit FiltroCela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, StdCtrls, jpeg, ExtCtrls, Buttons, DBCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmFiltroCela = class(TFrmModeloFormulario)
    GroupBox1: TGroupBox;
    LabelPavilhao: TLabel;
    LabelGaleria: TLabel;
    LabelCela: TLabel;
    LabelSolario: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    DspSolario: TDataSetProvider;
    CdsSolario: TClientDataSet;
    DsSolario: TDataSource;
    DsCela: TDataSource;
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    Dspconspadrao: TDataSetProvider;
    Cdsconspadrao: TClientDataSet;
    Dsconspadrao: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SqlPavilhao: TFDQuery;
    SqlGaleria: TFDQuery;
    SqlSolario: TFDQuery;
    SqlCela: TFDQuery;
    SQLconspadrao: TFDQuery;
    DBLookupComboBoxCela: TComboBox;
    DBLookupComboBoxSolario: TComboBox;
    DBLookupComboBoxPavilhao: TComboBox;
    DBLookupComboBoxGaleria: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBoxGaleriaClick(Sender: TObject);
    procedure DBLookupComboBoxSolarioClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBLookupComboBoxGaleriaEnter(Sender: TObject);
    procedure SqlPavilhaoBeforeExecute(DataSet: TFDDataSet);
    procedure DsPavilhaoUpdateData(Sender: TObject);
    procedure DsPavilhaoStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBoxPavilhaoChange(Sender: TObject);
    procedure DBLookupComboBoxGaleriaChange(Sender: TObject);
    procedure DBLookupComboBoxSolarioChange(Sender: TObject);
  private
    { Private declarations }
    escolhido: String;
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

  //DBLookupComboBoxPavilhao.KeyValue := dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsVariant;
  //DBLookupComboBoxGaleria.KeyValue := dsconspadrao.DataSet.fieldbyname('id_galeria').AsVariant;
  //DBLookupComboBoxSolario.KeyValue := dsconspadrao.DataSet.fieldbyname('id_solario').AsVariant;
 // DBLookupComboBoxCela.KeyValue := dsconspadrao.DataSet.fieldbyname('id_cela').AsVariant;
  escolhido := '';

end;

procedure TFrmFiltroCela.FormShow(Sender: TObject);
begin
  inherited;
  //
  SqlPavilhao.Close;
  SqlPavilhao.Open;
  DBLookupComboBoxPavilhao.Items.Clear;
  while not SqlPavilhao.Eof do
  begin
    DBLookupComboBoxPavilhao.Items.Add(SqlPAvilhao.FieldByName('PAVILHAO').AsString);
    SqlPavilhao.Next;
  end;
end;

procedure TFrmFiltroCela.DBLookupComboBoxGaleriaEnter(Sender: TObject);
begin
  inherited;
  //SqlPavilhao.Close;
end;

procedure TFrmFiltroCela.DBLookupComboBoxPavilhaoChange(Sender: TObject);
begin
  inherited;
  SqlGaleria.Close;
  SqlGaleria.SQL.Text:= 'Select * from galeria g inner join pavilhao p on (p.id_pavilhao = g.idpavilhao) where p.pavilhao=:pavilhao order by g.galeria';
  SqlGaleria.ParamByName('pavilhao').AsString := DBLookupComboBoxPavilhao.Text;
  SqlGaleria.Open;
  DBLookupComboBoxGaleria.Items.Clear;

  while not SqlGaleria.Eof do
  Begin
    DBLookupComboBoxGaleria.Items.Add(SqlGaleria.FieldByName('galeria').AsString);
    SqlGaleria.Next;
  End;

end;

procedure TFrmFiltroCela.DBLookupComboBoxGaleriaChange(Sender: TObject);
begin
  inherited;
  SqlSolario.Close;
  SqlSolario.SQL.Text := 'select * from solario s inner join galeria g on (s.idgaleria = g.id_galeria) inner join pavilhao p on (s.idpavilhao = p.id_pavilhao) where g.galeria=:galeria and p.pavilhao=:pavilhao  order by s.solario';
  SqlSolario.ParamByName('galeria').AsString := DBLookupComboBoxGaleria.Text;
  SqlSolario.ParamByName('pavilhao').AsString := DBLookupComboBoxPAvilhao.Text;
  SqlSolario.Open;
  DBLookupComboBoxSolario.Items.Clear;
  while not SqlSolario.EOF do
  begin
    DBLookupComboBoxSolario.Items.Add(SqlSolario.FieldByName('Solario').AsString);
    SqlSolario.Next;
  end;

end;

procedure TFrmFiltroCela.DBLookupComboBoxGaleriaClick(Sender: TObject);
begin
  inherited;
 // DBLookupComboBoxSolario.KeyValue := null;
  //DBLookupComboBoxCela.KeyValue := null;

end;

procedure TFrmFiltroCela.DBLookupComboBoxSolarioChange(Sender: TObject);
begin
  inherited;
  SqlCela.Close;
  SqlCela.SQL.Text := 'select * from cela c inner join solario s on(s.id_solario = c.idsolario) inner join galeria g on (g.id_galeria = c.idgaleria) where s.solario=:solario and g.galeria=:galeria order by c.cela';
  SqlCela.ParamByName('solario').AsString := DBLookupComboBoxSolario.Text;
  SqlCela.ParamByName('galeria').AsString := DBLookupComboBoxGaleria.Text;
  SqlCela.Open;
  DBLookupComboBoxCela.Items.Clear;
  while not SqlCela.EOF do
  begin
    DBLookupComboBoxCela.Items.Add(SqlCela.FieldByName('Cela').AsString);
    SqlCela.Next;
  end;

end;

procedure TFrmFiltroCela.DBLookupComboBoxSolarioClick(Sender: TObject);
begin
  inherited;
  //DBLookupComboBoxCela.KeyValue := null;

end;



procedure TFrmFiltroCela.DsPavilhaoStateChange(Sender: TObject);
begin
  inherited;
  //showmessage('mario');
end;

procedure TFrmFiltroCela.DsPavilhaoUpdateData(Sender: TObject);
begin
  inherited;
  Showmessage('ola');
end;

procedure TFrmFiltroCela.SqlPavilhaoBeforeExecute(DataSet: TFDDataSet);
begin
  inherited;
  //Showmessage('Aqui');
end;

procedure TFrmFiltroCela.SpeedButton2Click(Sender: TObject);
begin
  inherited;
 // DBLookupComboBoxGaleria.KeyValue := -1;
 // DBLookupComboBoxSolario.KeyValue := null;
 // DBLookupComboBoxCela.KeyValue := null;

end;

end.
