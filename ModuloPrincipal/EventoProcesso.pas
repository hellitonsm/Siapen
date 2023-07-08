unit EventoProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, Buttons, adpDBDateTimePicker;

type
  TFrmEventoProcesso = class(TFrmModeloCadastro)
    CdsCadastroIDEVENTO_PROCESSO: TIntegerField;
    CdsCadastroIDPROCESSO: TIntegerField;
    CdsCadastroDATA: TSQLTimeStampField;
    CdsCadastroIDTIPO_EVENTO_PROCESO: TIntegerField;
    CdsCadastroEXPEDIDO_POR: TStringField;
    CdsCadastroCUMPRIDO: TStringField;
    CdsCadastroMOTIVO: TStringField;
    CdsCadastroARQUIVADO: TStringField;
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    SqlTipoEventoProcesso: TSQLQuery;
    DspTipoEventoProcesso: TDataSetProvider;
    CdsTipoEventoProcesso: TClientDataSet;
    CdsCadastroIDTIPO_EVENTO_PROCESSO: TIntegerField;
    CdsCadastroDESCRICAO: TStringField;
    DsTipoEventoProcesso: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEventoProcesso: TFrmEventoProcesso;

implementation

uses TipoEventoProcesso;

{$R *.dfm}

procedure TFrmEventoProcesso.FormCreate(Sender: TObject);
begin
  inherited;
  
  DsTipoEventoProcesso.DataSet.Close;
  DsTipoEventoProcesso.DataSet.Open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

end;

procedure TFrmEventoProcesso.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  FrmTipoEventoProcesso := TFrmTipoEventoProcesso.Create(Application);
  FrmTipoEventoProcesso.ShowModal;
  FreeAndNil(FrmTipoEventoProcesso);

  DsTipoEventoProcesso.DataSet.Close;
  DsTipoEventoProcesso.DataSet.Open;

end;

procedure TFrmEventoProcesso.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.Dataset.FieldByName('IDPROCESSO').AsInteger :=
    SqlCadastro.ParamByName('IDPROCESSO').AsInteger;
end;

end.

