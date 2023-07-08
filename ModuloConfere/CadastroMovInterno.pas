unit CadastroMovInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, jpeg;

type
  TFrmCadastroMovInterno = class(TFrmModeloCadastro)
    intgrfldCdsCadastroID_MOV_INTERNO: TIntegerField;
    intgrfldCdsCadastroID_INTERNO: TIntegerField;
    intgrfldCdsCadastroID_UNIDADE_PENAL: TIntegerField;
    strngfldCdsCadastroTIPO_MOVIMENTACAO: TStringField;
    CdsCadastroDATA_MOVIMENTACAO: TSQLTimeStampField;
    CdsCadastroHORA_MOVIMENTACAO: TSQLTimeStampField;
    intgrfldCdsCadastroID_FUNCIONARIO: TIntegerField;
    intgrfldCdsCadastroID_PROCEDENCIA: TIntegerField;
    intgrfldCdsCadastroID_DESTINO: TIntegerField;
    Label2: TLabel;
    dbedtID_MOV_INTERNO: TDBEdit;
    Label3: TLabel;
    dbedtID_INTERNO: TDBEdit;
    Label4: TLabel;
    dbedtID_UNIDADE_PENAL: TDBEdit;
    Label5: TLabel;
    dbedtTIPO_MOVIMENTACAO: TDBEdit;
    Label6: TLabel;
    dbedtDATA_MOVIMENTACAO: TDBEdit;
    Label7: TLabel;
    dbedtHORA_MOVIMENTACAO: TDBEdit;
    Label8: TLabel;
    dbedtID_FUNCIONARIO: TDBEdit;
    Label9: TLabel;
    dbedtID_PROCEDENCIA: TDBEdit;
    Label10: TLabel;
    dbedtID_DESTINO: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroMovInterno: TFrmCadastroMovInterno;

implementation

{$R *.dfm}

end.
