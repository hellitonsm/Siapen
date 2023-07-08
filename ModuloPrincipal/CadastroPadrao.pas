unit CadastroPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, jpeg;

type
  TFrmCadastroPadrao = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    LabelPavilhao: TLabel;
    DBLookupComboBoxPavilhao: TDBLookupComboBox;
    LabelGaleria: TLabel;
    DBLookupComboBoxGaleria: TDBLookupComboBox;
    LabelSolario: TLabel;
    DBLookupComboBoxSolario: TDBLookupComboBox;
    LabelCela: TLabel;
    DBLookupComboBoxCela: TDBLookupComboBox;
    SqlPavilhao: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    SqlGaleria: TSQLQuery;
    DspGaleria: TDataSetProvider;
    CdsGaleria: TClientDataSet;
    DsGaleria: TDataSource;
    DsSolario: TDataSource;
    DsCela: TDataSource;
    CdsCela: TClientDataSet;
    CdsSolario: TClientDataSet;
    DspSolario: TDataSetProvider;
    SqlSolario: TSQLQuery;
    SqlCela: TSQLQuery;
    DspCela: TDataSetProvider;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroPadrao: TFrmCadastroPadrao;

implementation

uses Lib;

{$R *.dfm}

procedure TFrmCadastroPadrao.NovoClick(Sender: TObject);
begin
  inherited;
DBEdit2.SetFocus;
end;

procedure TFrmCadastroPadrao.FormCreate(Sender: TObject);
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

end;

end.
