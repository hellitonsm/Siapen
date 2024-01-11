unit DmSecundario;

interface

uses
    SysUtils, Classes, DB, SqlExpr,
  IniFiles, DBClient, Forms, FMTBcd, Provider, ImgList,
  Controls, Dialogs, Data.DBXFirebird, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TDM2 = class(TDataModule)
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    dspvestimentas: TDataSetProvider;
    cdsvestimentas: TClientDataSet;
    dsvestimentas: TDataSource;
    SQLConnect: TFDConnection;
    FDTransaction1: TFDTransaction;
    SQLQuery1: TFDQuery;
    SQLvestimentas: TFDQuery;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;

implementation

uses Lib;

{$R *.dfm}




end.
