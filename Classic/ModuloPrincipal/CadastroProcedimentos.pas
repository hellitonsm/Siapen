unit CadastroProcedimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, Buttons, jpeg;

type
  TFrmCadastroProcedimentos = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    PageControlPrincipal: TPageControl;
    TabSheetInterno: TTabSheet;
    TabSheetAdvogado: TTabSheet;
    TabSheetFuncionario: TTabSheet;
    TabSheetVisitante: TTabSheet;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    SpeedButton1: TSpeedButton;
    TabSheetPosto: TTabSheet;
    Label6: TLabel;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    DsProcedimentoPosto: TDataSource;
    CdsProcedimentoPosto: TClientDataSet;
    DspProcedimentoPosto: TDataSetProvider;
    SqlProcedimentoPosto: TSQLQuery;
    CdsProcedimentoPostoIDPROCEDIMENTO_POSTO: TIntegerField;
    CdsProcedimentoPostoIDPOSTO_TRABALHO: TIntegerField;
    CdsProcedimentoPostoIDPROCEDIMENTO: TIntegerField;
    CdsProcedimentoPostoPOSTO_TRABALHO: TStringField;
    Button1: TButton;
    TabSheetOcorrencias: TTabSheet;
    Label7: TLabel;
    DBLookupComboBoxOCORRENCIAS: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    Button2: TButton;
    DBGridOcorrenciasProcedimentos: TDBGrid;
    Button4: TButton;
    DsOcorrenciaProcedimento: TDataSource;
    CdsOcorrenciaProcedimento: TClientDataSet;
    DspOcorrenciaProcedimento: TDataSetProvider;
    SqlOcorrenciaProcedimento: TSQLQuery;
    CdsOcorrenciaProcedimentoIDOCORRENCIA_PROCEDIMENTOS: TIntegerField;
    CdsOcorrenciaProcedimentoIDOCORRENCIA: TIntegerField;
    CdsOcorrenciaProcedimentoIDPROCEDIMENTOS: TIntegerField;
    CdsOcorrenciaProcedimentoOCORRENCIA: TStringField;
    Status: TDBRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    Label9: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroProcedimentos: TFrmCadastroProcedimentos;

implementation

uses PostoTrabalho, DmPrincipal, Lib, Ocorrencias;

{$R *.dfm}

procedure TFrmCadastroProcedimentos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('FUNCAO_FUNCIONARIO').AsVariant := Null;
end;

procedure TFrmCadastroProcedimentos.NovoClick(Sender: TObject);
begin
  inherited;
  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

  DsProcedimentoPosto.DataSet.Close;
  DsProcedimentoPosto.DataSet.Open;

  PageControlPrincipal.ActivePageIndex := 0 ;
  DsCadastro.DataSet.FieldByName('IDPROCEDIMENTOS').AsVariant := DBGenerator('IDPROCEDIMENTOS');
  DsCadastro.DataSet.FieldByName('APROVACAO_DIRETA').AsVariant := 'N';
  DsCadastro.DataSet.FieldByName('ST').AsVariant := 'A';
  DsCadastro.DataSet.FieldByName('ENVOLVE_ADVOGADO').AsVariant := 'N';
  DsCadastro.DataSet.FieldByName('ENVOLVE_FUNCIONARIO').AsVariant := 'N';
  DsCadastro.DataSet.FieldByName('ENVOLVE_INTERNO').AsVariant := 'N';
  DsCadastro.DataSet.FieldByName('ENVOLVE_VISITANTE').AsVariant := 'N';
  DsCadastro.DataSet.FieldByName('HORA_INICIAL').AsString := '08:00';
  DsCadastro.DataSet.FieldByName('HORA_FINAL').AsString := '18:00';
end;

procedure TFrmCadastroProcedimentos.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  FrmPostoTrabalho := TFrmPostoTrabalho.create(Application);
  FrmPostoTrabalho.showmodal;
  FreeAndNil(FrmPostoTrabalho);

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

end;

procedure TFrmCadastroProcedimentos.Button3Click(Sender: TObject);
begin
  inherited;
  if DBLookupComboBoxPostoTrabalho.KeyValue = null then
  begin
    ShowMessage('Informe um posto/local de trabalho.');
    Exit;
  end;

  with DsProcedimentoPosto.DataSet do
  begin
    Append;
    fieldbyname('IDPROCEDIMENTO_POSTO').AsInteger := 0;
    fieldbyname('IDPROCEDIMENTO').AsInteger := DsCadastro.DataSet.fieldbyname('IDPROCEDIMENTOS').AsInteger;
    fieldbyname('IDPOSTO_TRABALHO').AsInteger := DBLookupComboBoxPostoTrabalho.KeyValue;
    Post;
  end;

end;

procedure TFrmCadastroProcedimentos.FormShow(Sender: TObject);
begin
  inherited;
  PageControlPrincipal.ActivePageIndex := 0 ;

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

  DsProcedimentoPosto.DataSet.Close;
  DsProcedimentoPosto.DataSet.Open;

  DsOcorrenciaProcedimento.DataSet.Close;
  DsOcorrenciaProcedimento.DataSet.Open;

  DM.DsProcedimentos.DataSet.Close;
  DM.DsProcedimentos.DataSet.Open;
  
end;

procedure TFrmCadastroProcedimentos.Button1Click(Sender: TObject);
begin
  inherited;
  with DsProcedimentoPosto.DataSet do
  begin
    if not Active then
      Exit;
    if IsEmpty then
      Exit;
    Delete;
  end;
end;

procedure TFrmCadastroProcedimentos.SalvarClick(Sender: TObject);
begin
  if DsProcedimentoPosto.DataSet.IsEmpty then
  begin
    ShowMessage('Por favor informe ao menos um posto/local de trabalho deste procedimento.');
    PageControlPrincipal.ActivePage := TabSheetPosto;
    Exit;
  end;
  if DsOcorrenciaProcedimento.DataSet.IsEmpty then
  begin
    ShowMessage('Por favor informe ao menos uma ocorrencias permitidas neste procedimento.');
    PageControlPrincipal.ActivePage := TabSheetOcorrencias;
    Exit;
  end;
  inherited;
end;

procedure TFrmCadastroProcedimentos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FrmOcorrencias := TFrmOcorrencias.create(Application);
  FrmOcorrencias.showmodal;
  FreeAndNil(FrmOcorrencias);

  DM.DsOcorrencias.DataSet.Close;
  DM.DsOcorrencias.DataSet.Open;
end;

procedure TFrmCadastroProcedimentos.Button2Click(Sender: TObject);
begin
  inherited;
  if DBLookupComboBoxOCORRENCIAS.KeyValue = null then
  begin
    ShowMessage('Informe uma ocorrencia.');
    Exit;
  end;

  with DsOcorrenciaProcedimento.DataSet do
  begin
    Append;
    fieldbyname('IDOCORRENCIA_PROCEDIMENTOS').AsInteger := 0;
    fieldbyname('IDPROCEDIMENTOS').AsInteger := DsCadastro.DataSet.fieldbyname('IDPROCEDIMENTOS').AsInteger;
    fieldbyname('IDOCORRENCIA').AsInteger := DBLookupComboBoxOCORRENCIAS.KeyValue;
    Post;
  end;

end;

procedure TFrmCadastroProcedimentos.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('IDPROCEDIMENTOS_MESTRE').AsVariant := Null;
  FrmCadastroProcedimentos := TFrmCadastroProcedimentos.create(Application);
  FrmCadastroProcedimentos.showmodal;
  FreeAndNil(FrmCadastroProcedimentos);

  DM.DsProcedimentos.DataSet.Close;
  DM.DsProcedimentos.DataSet.Open;

end;

end.

