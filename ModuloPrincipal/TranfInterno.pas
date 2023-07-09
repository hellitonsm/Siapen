unit TranfInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, Buttons;

type
  TFrmTranfInterno = class(TFrmModeloCadastro)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    DBEditcodigo: TDBEdit;
    DBEdit2: TDBEdit;
    DBEditdata: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Button4: TButton;
    Sqlvinc_transferencia_interno: TSQLQuery;
    Dspvinc_transferencia_interno: TDataSetProvider;
    Cdsvinc_transferencia_interno: TClientDataSet;
    Cdsvinc_transferencia_internoID_VINC_TRANSFERENCIA_INTERNO: TIntegerField;
    Cdsvinc_transferencia_internoID_INTERNO: TIntegerField;
    Cdsvinc_transferencia_internoID_TRANSFERENCIA_INTERNO: TIntegerField;
    Cdsvinc_transferencia_internoInterno: TStringField;
    Cdsvinc_transferencia_internoRGI: TStringField;
    Dsvinc_transferencia_interno: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTranfInterno: TFrmTranfInterno;

implementation

{$R *.dfm}

end.
