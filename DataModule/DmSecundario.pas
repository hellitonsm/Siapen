unit DmSecundario;

interface

uses
    SysUtils, Classes, DB, SqlExpr,
  IniFiles, DBClient, Forms, FMTBcd, Provider, ImgList,
  Controls, Dialogs, Data.DBXFirebird;

type
  TDM2 = class(TDataModule)
    SQLConnect: TSQLConnection;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    SQLvestimentas: TSQLQuery;
    dspvestimentas: TDataSetProvider;
    cdsvestimentas: TClientDataSet;
    dsvestimentas: TDataSource;

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
