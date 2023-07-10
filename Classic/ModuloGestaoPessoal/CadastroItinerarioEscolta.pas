unit CadastroItinerarioEscolta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, lib,
  ToolWin, adpDBDateTimePicker;

type
  TFrmItinerarioEscolta = class(TFrmModeloCadastro)
    SqlCadastroID_ITINERARIO_ESCOLTA: TIntegerField;
    SqlCadastroID_ESCOLTA: TIntegerField;
    SqlCadastroID_MEIO_TRANSPORTE: TIntegerField;
    SqlCadastroID_ITINERARIO_DESTINO: TIntegerField;
    SqlCadastroID_ITINERARIO_ORIGEM: TIntegerField;
    SqlCadastroITINERARIO_NUMERO: TStringField;
    SqlCadastroITINERARIO_DATA_INICIAL: TSQLTimeStampField;
    SqlCadastroITINERARIO_DATA_FINAL: TSQLTimeStampField;
    SqlCadastroITINERARIO_HORA_INICIAL: TTimeField;
    SqlCadastroITINERARIO_HORA_FINAL: TTimeField;
    CdsCadastroID_ITINERARIO_ESCOLTA: TIntegerField;
    CdsCadastroID_ESCOLTA: TIntegerField;
    CdsCadastroID_MEIO_TRANSPORTE: TIntegerField;
    CdsCadastroID_ITINERARIO_DESTINO: TIntegerField;
    CdsCadastroID_ITINERARIO_ORIGEM: TIntegerField;
    CdsCadastroITINERARIO_NUMERO: TStringField;
    CdsCadastroITINERARIO_DATA_INICIAL: TSQLTimeStampField;
    CdsCadastroITINERARIO_DATA_FINAL: TSQLTimeStampField;
    CdsCadastroITINERARIO_HORA_INICIAL: TTimeField;
    CdsCadastroITINERARIO_HORA_FINAL: TTimeField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    adpDBDateTimePicker2: TadpDBDateTimePicker;
    CdsCadastroOrdemMissao: TStringField;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmItinerarioEscolta: TFrmItinerarioEscolta;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmItinerarioEscolta.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('id_itinerario_escolta').AsInteger := DBGenerator('id_itinerario_escolta');
end;

procedure TFrmItinerarioEscolta.FormCreate(Sender: TObject);
begin
  inherited;
  dm.dsEscolta.DataSet.Close;
  dm.dsEscolta.DataSet.open;

  dm.dsMeioTransporte.DataSet.Close;
  dm.dsMeioTransporte.DataSet.Open;

  dm.dsItinerario.DataSet.Close;
  dm.dsItinerario.DataSet.open;
end;

end.
