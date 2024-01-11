unit Ocorrencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, Buttons, jpeg, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmOcorrencias = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBLookupComboBoxOCORRENCIAS: TDBLookupComboBox;
    SqlQuestionamentoold: TSQLQuery;
    DSpQuestionamento: TDataSetProvider;
    CdsQuestionamento: TClientDataSet;
    DsQuestionamento: TDataSource;
    CdsQuestionamentoIDQUESTIONAMENTO: TIntegerField;
    CdsQuestionamentoIDOCORRENCIA: TIntegerField;
    CdsQuestionamentoPERGUNTA: TStringField;
    CdsQuestionamentoTIPO_RESPOSTA: TStringField;
    CdsQuestionamentoRESPOSTA: TStringField;
    SpeedButton2: TSpeedButton;
    DBRadioGroup1: TDBRadioGroup;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    label89: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditPergunta: TEdit;
    ComboBoxTipo: TComboBox;
    Button1: TButton;
    MemoResposta: TMemo;
    DBGrid1: TDBGrid;
    Button2: TButton;
    DBNavigator2: TDBNavigator;
    TabSheet2: TTabSheet;
    Status: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    SqlQuestionamento: TFDQuery;
    procedure ComboBoxTipoKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBoxTipoChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBLookupComboBoxOCORRENCIASClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOcorrencias: TFrmOcorrencias;

implementation

uses Lib, DmPrincipal, CadastroProcedimentos;

{$R *.dfm}

procedure TFrmOcorrencias.ComboBoxTipoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmOcorrencias.Button1Click(Sender: TObject);
begin
  inherited;
  if trim(EditPergunta.Text)='' then
  begin
    ShowMessage('Informe um par�metro.');
    Exit;
  end;

  if ComboBoxTipo.Text = '' then
  begin
    ShowMessage('Informe o tipo da resposta.');
    Exit;
  end;

  if ComboBoxTipo.ItemIndex = 0 then
  begin
    if MemoResposta.Lines.Count <= 1 then
    begin
      ShowMessage('Para resposta "' + ComboBoxTipo.Text + '" tem que ter mais de uma resposta possivel.');
      Exit;
    end;
  end;

  with DsQuestionamento.DataSet do
  begin
    Append;
    fieldbyname('IDQUESTIONAMENTO').AsInteger := 0;
    fieldbyname('IDOCORRENCIA').AsInteger := DsCadastro.DataSet.fieldbyname('IDOCORRENCIA').AsInteger;
    fieldbyname('PERGUNTA').AsString := EditPergunta.Text;
    fieldbyname('TIPO_RESPOSTA').AsString := ComboBoxTipo.Text;
    fieldbyname('RESPOSTA').AsString := MemoResposta.Lines.Text;
    Post;

    EditPergunta.Text := '';
    ComboBoxTipo.Text := '';
    MemoResposta.Lines.Text := '';

  end;

end;

procedure TFrmOcorrencias.Button2Click(Sender: TObject);
begin
  inherited;
  DsQuestionamento.DataSet.Delete;
end;

procedure TFrmOcorrencias.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('IDOCORRENCIA').AsVariant := DBGenerator('IDOCORRENCIA');
  DsCadastro.DataSet.FieldByName('ST').AsString := 'A';
  DsCadastro.DataSet.FieldByName('MULTIPLOS_REGISTROS').AsString := 'S';
  DsCadastro.DataSet.FieldByName('PROCEDIMENTO_TEM_DATA').AsString := 'S';

  DM.DsOcorrencias.DataSet.Close;
  DM.DsOcorrencias.DataSet.Open;
end;

procedure TFrmOcorrencias.FormShow(Sender: TObject);
begin
  inherited;
  DM.DsProcedimentos.DataSet.Close;
  DM.DsProcedimentos.DataSet.Open;

  DsQuestionamento.DataSet.Close;
  DsQuestionamento.DataSet.Open;

end;

procedure TFrmOcorrencias.ComboBoxTipoChange(Sender: TObject);
begin
  inherited;

  {
  0-Pr� Definido
  1-Texto Curto
  2-Texto Longo
  3-Nome do Interno
  4-Nome do Advogado
  5-Nome do Visitante
  6-Nome do Funcion�rio
  }

  if ComboBoxTipo.ItemIndex = 0 then
  begin
    //0-Pr� Definido
    MemoResposta.Lines.Clear;
    MemoResposta.Lines.Add('Sim');
    MemoResposta.Lines.Add('N�o');
  end;

  if ComboBoxTipo.ItemIndex = 3 then
  begin
    //3-Nome do Interno
    EditPergunta.Text := 'Nome do interno:'
  end;

  if ComboBoxTipo.ItemIndex = 4 then
  begin
    //4-Nome do Advogado
    EditPergunta.Text := 'Nome do advogado:'
  end;

  if ComboBoxTipo.ItemIndex = 5 then
  begin
    //5-Nome do Visitante
    EditPergunta.Text := 'Nome do visitante:'
  end;

  if ComboBoxTipo.ItemIndex = 6 then
  begin
    //6-Nome do Funcion�rio
    EditPergunta.Text := 'Nome do funcion�rio:'
  end;

end;

procedure TFrmOcorrencias.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.FieldByName('IDPROCEDIMENTO_NOVO').AsVariant := Null;
  FrmCadastroProcedimentos := TFrmCadastroProcedimentos.create(Application);
  FrmCadastroProcedimentos.showmodal;
  FreeAndNil(FrmCadastroProcedimentos);

  DM.DsProcedimentos.DataSet.Close;
  DM.DsProcedimentos.DataSet.Open;

end;

procedure TFrmOcorrencias.DBLookupComboBoxOCORRENCIASClick(
  Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('PROCEDIMENTO_TEM_DATA').AsVariant := 'N';
end;

procedure TFrmOcorrencias.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.activepageindex := 0 ;
end;

end.

