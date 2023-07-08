unit InternoInclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, ComCtrls, adpDBDateTimePicker, Mask,
  DBCtrls, DB, DBClient, Provider, SqlExpr, ImgList, jpeg, ExtCtrls, Grids,
  DBGrids, StdCtrls, ToolWin;

type
  TFrmInternoInclusao = class(TFrmModeloCadastro)
    CdsCadastroID_INTERNO_INCLUSAO: TIntegerField;
    CdsCadastroALCUNHA: TStringField;
    CdsCadastroDATA_NASCIMENTO: TSQLTimeStampField;
    CdsCadastroNOME_INTERNO: TStringField;
    CdsCadastroID_ESTADO: TIntegerField;
    CdsCadastroMAE_INTERNO: TStringField;
    Label2: TLabel;
    DBEditCodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInternoInclusao: TFrmInternoInclusao;

implementation

{$R *.dfm}

end.
