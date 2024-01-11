unit Patrimonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls,
  Buttons, jpeg, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFrmPatrimonio = class(TFrmModeloCadastro)
    PageControlPatrimonio: TPageControl;
    TabSheet1: TTabSheet;
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
    Label9: TLabel;
    DBEdit8: TDBEdit;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    lbl7: TLabel;
    DBLookupComboBoxFuncionario: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label46: TLabel;
    lbl2: TLabel;
    DBLookupComboBoxTipoContato: TDBLookupComboBox;
    btn2: TSpeedButton;
    CdsCadastroIDPATRIMONIO: TIntegerField;
    CdsCadastroTOMBO: TStringField;
    CdsCadastroNUM_SERIAL: TStringField;
    CdsCadastroNOME: TStringField;
    CdsCadastroCOMPLEMENTO: TStringField;
    CdsCadastroMARCA: TStringField;
    CdsCadastroMODELO: TStringField;
    CdsCadastroESTADO: TStringField;
    CdsCadastroIDTIPO_PATRIMONIO: TIntegerField;
    CdsCadastroVALOR: TFloatField;
    CdsCadastroUTILIZACAO: TStringField;
    CdsCadastroDISPONIBILIDADE: TStringField;
    CdsCadastroID_UP: TIntegerField;
    CdsCadastroIDPOSTO_TRABALHO: TIntegerField;
    CdsCadastroOBSERVACAO: TStringField;
    CdsCadastroIDFUNCIONARIO_CADASTROU: TIntegerField;
    CdsCadastroDATA_CADASTRO: TSQLTimeStampField;
    CdsCadastroDATA_CAUTELA: TSQLTimeStampField;
    CdsCadastroCAUTELA: TStringField;
    CdsCadastroIDPOSTO_TRABALHO_CAUTELA: TIntegerField;
    CdsCadastroIDFUNCIONARIO_CAUTELA: TIntegerField;
    CdsCadastroMISSAO_CAUTELA: TStringField;
    CdsCadastroOBS_CAUTELA: TStringField;
    CdsCadastroFOTO_PATRIMONIO: TBlobField;
    DBRadioGroup1: TDBRadioGroup;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    TabSheet3: TTabSheet;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label15: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    TabSheet4: TTabSheet;
    FOTO: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBImageFOTOFRENTE: TDBImage;
    DBImageFOTOLATERALDIREITA: TDBImage;
    DBImageFOTOLATERALESQUERDA: TDBImage;
    DBImageFOTO_OUTROS: TDBImage;
    OpenDialog1: TOpenDialog;
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBImageFOTOFRENTEClick(Sender: TObject);
    procedure DBImageFOTOLATERALDIREITAClick(Sender: TObject);
    procedure DBImageFOTOLATERALESQUERDAClick(Sender: TObject);
    procedure DBImageFOTO_OUTROSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPatrimonio: TFrmPatrimonio;

implementation

uses TipoPatrimonio, DmPrincipal, Lib, PostoTrabalho;

{$R *.dfm}

procedure TFrmPatrimonio.btn2Click(Sender: TObject);
begin
  inherited;

  FrmTipoPatrimonio := TFrmTipoPatrimonio.create(Application);
  FrmTipoPatrimonio.showmodal;
  FreeAndNil(FrmTipoPatrimonio);

  DM.DsTipoPatrimonio.DataSet.Close;
  DM.DsTipoPatrimonio.DataSet.OPEN;

end;

procedure TFrmPatrimonio.FormShow(Sender: TObject);
begin
  inherited;

  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.Open;

  DM.DsFuncionario.DataSet.Close;
  DM.DsFuncionario.DataSet.Open;

  DM.DsTipoPatrimonio.DataSet.Close;
  DM.DsTipoPatrimonio.DataSet.Open;

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

  PageControlPatrimonio.ActivePageIndex := 0 ;

end;

procedure TFrmPatrimonio.NovoClick(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.FieldByName('IDPATRIMONIO').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(IDPATRIMONIO,1) FROM RDB$DATABASE');
  DsCadastro.DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.FieldByName('IDFUNCIONARIO_CADASTROU').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DsCadastro.DataSet.FieldByName('DATA_CADASTRO').AsDateTime := Date;
  
end;

procedure TFrmPatrimonio.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  
  FrmPostoTrabalho := TFrmPostoTrabalho.create(Application);
  FrmPostoTrabalho.showmodal;
  FreeAndNil(FrmPostoTrabalho);

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

end;

procedure TFrmPatrimonio.DBImageFOTOFRENTEClick(Sender: TObject);
var
  JPeg: TJpegImage;
begin

  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTOFRENTE.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmPatrimonio.DBImageFOTOLATERALDIREITAClick(Sender: TObject);
var
  JPeg: TJpegImage;
begin

  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTOLATERALDIREITA.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmPatrimonio.DBImageFOTOLATERALESQUERDAClick(Sender: TObject);
var
  JPeg: TJpegImage;
begin

  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFotoLATERALESQUERDA.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmPatrimonio.DBImageFOTO_OUTROSClick(Sender: TObject);
var
  JPeg: TJpegImage;
begin

  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTO_OUTROS.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

end.
