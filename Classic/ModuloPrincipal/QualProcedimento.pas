unit QualProcedimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, SqlExpr, ComCtrls, DBCtrls, mshtml,
  OleCtrls, SHDocVw, jpeg;

type
  TFrmQualProcedimento = class(TFrmModeloFormulario)
    DBGridOcorrencia: TDBGrid;
    Panel1: TPanel;
    BitBtnConfirma: TBitBtn;
    BitBtnCancela: TBitBtn;
    SqlMovProcDetalhado: TSQLQuery;
    DspMovProcDetalhado: TDataSetProvider;
    CdsMovProcDetalhado: TClientDataSet;
    DsMovProcDetalhado: TDataSource;
    Timer1: TTimer;
    CdsMovProcDetalhadoDESCRICAO: TStringField;
    CdsMovProcDetalhadoIDMOV_PROCEDIMENTOS: TIntegerField;
    CdsMovProcDetalhadoIDPROCEDIMENTOS: TIntegerField;
    CdsMovProcDetalhadoDATA: TSQLTimeStampField;
    CdsMovProcDetalhadoHORA_INICIAL: TTimeField;
    CdsMovProcDetalhadoHORA_FINAL: TTimeField;
    CdsMovProcDetalhadoOBSERVACAO: TStringField;
    CdsMovProcDetalhadoST: TStringField;
    CdsMovProcDetalhadoDATA_ENCERRAMENTO: TSQLTimeStampField;
    CdsMovProcDetalhadoMOTIVO_ENCERRAMENTO: TStringField;
    CdsMovProcDetalhadoID_UP: TIntegerField;
    CdsMovProcDetalhadoIDMOV_OCORRENCIA_ORIGEM: TIntegerField;
    CdsMovProcDetalhadoIDMOV_PROCEDIMENTOS_PRINCIPAL: TIntegerField;
    CdsMovProcDetalhadoDETALHE: TMemoField;
    CdsMovProcDetalhadoPESSOAS: TStringField;
    Panel2: TPanel;
    EditLocalizar: TEdit;
    Label1: TLabel;
    DBRichEdit1: TDBRichEdit;
    CdsMovProcDetalhadoOCORRENCIA_HORA: TMemoField;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridOcorrenciaDblClick(Sender: TObject);
    procedure CdsMovProcDetalhadoCalcFields(DataSet: TDataSet);
    procedure EditLocalizarChange(Sender: TObject);
    procedure DBGridOcorrenciaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    Data_Procedimento1, Data_Procedimento2: TDateTime;
    IDMOV_PROCEDIMENTOS_PRINCIPAL: Integer;
    { Public declarations }
  end;

var
  FrmQualProcedimento: TFrmQualProcedimento;

implementation

uses Lib, QualOcorrencia;

{$R *.dfm}

procedure TFrmQualProcedimento.Timer1Timer(Sender: TObject);
var
  ItenRecord: TBookmark;
begin

  Timer1.Enabled := False;

  SqlMovProcDetalhado.SQL.Text :=
    'select ' +
    'TRIM((SELECT LIST(MIX.DESC_HORA,''; '') ' +
    ' FROM ' +
    ' (SELECT MOV_OCORRENCIA.IDMOV_PROCEDIMENTOS, ' +
    '  OCORRENCIA.DESCRICAO||'' em ''||SUBSTR(MOV_OCORRENCIA.data,1,10)||'' (''||SUBSTR(MOV_OCORRENCIA.HORA,1,8)||''H)'' DESC_HORA ' +
    ' FROM MOV_OCORRENCIA ' +
    'JOIN OCORRENCIA ON OCORRENCIA.IDOCORRENCIA=MOV_OCORRENCIA.IDOCORRENCIA ' +
    ' WHERE COALESCE(CAST(MOV_OCORRENCIA.DATA AS DATE),CURRENT_DATE) BETWEEN '+QS(FORMATDATETIME('DD.MM.YYYY', DATA_PROCEDIMENTO1))+' AND '+QS(FORMATDATETIME('DD.MM.YYYY', DATA_PROCEDIMENTO2))+' ' +
    ' ORDER BY MOV_OCORRENCIA.DATA DESC, MOV_OCORRENCIA.HORA DESC) MIX ' +
    'WHERE MIX.IDMOV_PROCEDIMENTOS = M.IDMOV_PROCEDIMENTOS))||'';'' OCORRENCIA_HORA, ' +
    'p.descricao, ' +
    'm.* , trim((SELECT LIST(NOME,'';'') FROM SP_LISTA_MV_PESSOA_PROC(M.IDMOV_PROCEDIMENTOS))) DETALHE ' +
    'from mov_procedimentos m ' +
    'join procedimentos p on (m.idprocedimentos=p.idprocedimentos) ' +
    'where coalesce(cast(m.data as date),current_date) between '+qs(FormatDateTime('DD.MM.YYYY', Data_Procedimento1))+' and '+qs(FormatDateTime('DD.MM.YYYY', Data_Procedimento2))+' ' +
    'and coalesce(m.st,''A'')=''A'' ' +
    'and coalesce(m.ID_UP,' + inttostr(GLOBAL_ID_UP) + ')= ' + inttostr(GLOBAL_ID_UP) +
    'and m.idmov_procedimentos_principal = ' + inttostr(IDMOV_PROCEDIMENTOS_PRINCIPAL) +
    ' order by p.descricao ';

  with DsMovProcDetalhado.DataSet do
  begin

    DisableControls;

    ItenRecord := nil;

    if not IsEmpty then
      ItenRecord := GetBookmark;

    Close;
    Open;

    if Assigned(ItenRecord) then
    begin
      try
        if BookmarkValid(ItenRecord) then
          GotoBookmark(ItenRecord);
      finally
        FreeBookmark(ItenRecord);
      end;
    end;

    EnableControls;

  end;

end;

procedure TFrmQualProcedimento.FormShow(Sender: TObject);
begin
  inherited;

  Timer1Timer(nil);

  if (Self.Height + DsMovProcDetalhado.DataSet.RecordCount * 21) > 600 then
    Self.Height := 600
  else
    Self.Height := (Self.Height + DsMovProcDetalhado.DataSet.RecordCount * 21)-25;

  PanelTitulo.Caption := Caption;

end;

procedure TFrmQualProcedimento.DBGridOcorrenciaDblClick(Sender: TObject);
begin
  inherited;
  FrmQualOcorrencia := TFrmQualOcorrencia.Create(Application);
  FrmQualOcorrencia.IDMOV_PROCEDIMENTOS := DsMovProcDetalhado.DataSet.FieldByName('IDMOV_PROCEDIMENTOS').AsInteger;
  FrmQualOcorrencia.IDPROCEDIMENTOS := DsMovProcDetalhado.DataSet.FieldByName('IDPROCEDIMENTOS').AsInteger;
  FrmQualOcorrencia.Caption := DsMovProcDetalhado.DataSet.FieldByName('descricao').AsString;
  FrmQualOcorrencia.ShowModal;
  FreeAndNil(FrmQualOcorrencia);
end;

procedure HTMLSyntax(RichEdit: TRichEdit; TextCol, TagCol, DopCol: TColor);
var
  i, iDop: Integer;
  s: string;
  Col: TColor;
  isTag, isDop: Boolean;
begin
  iDop := 0;
  isDop := False;
  isTag := False;
  Col := TextCol;
  //  RichEdit.SetFocus;
  for i := 0 to Length(RichEdit.Text) do
  begin
    RichEdit.SelStart := i;
    RichEdit.SelLength := 1;
    s := RichEdit.SelText;
    if (s = '<') or (s = '{') then
      isTag := True;
    if isTag then
      if (s = '"') then
        if not isDop then
        begin
          iDop := 1;
          isDop := True;
        end
        else
          isDop := False;
    if isTag then
      if isDop then
      begin
        if iDop <> 1 then
          Col := DopCol;
      end
      else
        Col := TagCol
    else
      Col := TextCol;
    RichEdit.SelAttributes.Color := Col;
    iDop := 0;
    if (s = '>') or (s = '}') then
      isTag := False;
  end;
  RichEdit.SelLength := 0;
end;

procedure TFrmQualProcedimento.CdsMovProcDetalhadoCalcFields(
  DataSet: TDataSet);
var
  pagina: IHTMLElement;
begin
  inherited;

  DataSet.FieldByName('PESSOAS').AsString := DataSet.FieldByName('DETALHE').AsString
  + ' ' +DataSet.FieldByName('OBSERVACAO').AsString
  +#10#13+ DataSet.FieldByName('OCORRENCIA_HORA').AsString;

end;

procedure TFrmQualProcedimento.EditLocalizarChange(Sender: TObject);
begin
  inherited;

  DsMovProcDetalhado.DataSet.filtered := false;
  DBRichEdit1.Lines.BeginUpdate;
  DBRichEdit1.SelStart := 0;
  DBRichEdit1.SelLength := length(DBRichEdit1.Lines.Text);
  DBRichEdit1.SelAttributes.Color := clBlack;
  DBRichEdit1.SelAttributes.Style := [];
  DBRichEdit1.Lines.EndUpdate;
  if Length(Trim(EditLocalizar.text)) > 0 then
  begin

    DsMovProcDetalhado.DataSet.filter := 'PESSOAS LIKE '
      + qs('%' + BuscaTroca(EditLocalizar.text, ' ', '%') + '%');
    DsMovProcDetalhado.DataSet.filtered := True;

    DBRichEdit1.Lines.BeginUpdate;
    DBRichEdit1.SelStart := pos(EditLocalizar.text, DBRichEdit1.Lines.Text) - 1;
    DBRichEdit1.SelLength := length(EditLocalizar.text);
    DBRichEdit1.SelAttributes.Color := clNavy;
    DBRichEdit1.SelAttributes.Color := clNavy;
    DBRichEdit1.SelAttributes.Style := [fsBold];
    DBRichEdit1.Lines.EndUpdate;
  end;

end;

procedure TFrmQualProcedimento.DBGridOcorrenciaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (State = [gdSelected]) then
  begin
    TDBGrid(Sender).Canvas.Brush.color := $00854F3F;
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end;

end;

end.

