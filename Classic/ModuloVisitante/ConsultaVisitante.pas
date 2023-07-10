unit ConsultaVisitante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  Grids, DBGrids, ExtCtrls;

type
  TFrmConsultaVisitante = class(TForm)
    Label1: TLabel;
    EditLocalizar: TEdit;
    RadioGroupStatus: TRadioGroup;
    DBGridConsulta: TDBGrid;
    BitBtn1: TBitBtn;
    SqlConsulta: TSQLQuery;
    Dspconsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    SqlSelectVisita: TSQLQuery;
    CdsConsultaNOME_VISITANTE: TStringField;
    CdsConsultaGRAU_PARENTESCO: TStringField;
    CdsConsultaNUMERO_CARTEIRINHA: TStringField;
    CdsConsultaDATA_VISITA: TSQLTimeStampField;
    CdsConsultaSEXO: TStringField;
    CdsConsultaNOME_INTERNO: TStringField;
    DSPCONSULTAINTERNO: TDataSetProvider;
    SQLCONSULTAINTERNO: TSQLQuery;
    CDSinterno: TClientDataSet;
    DSCONSULTAINTERNO: TDataSource;
    SqlSelectInterno: TSQLQuery;
    DBGrid1: TDBGrid;
    CDSinternoVISITANTE: TStringField;
    CDSinternoGRAU_PARENTESCO: TStringField;
    CDSinternoSEXO: TStringField;
    CDSinternoNOME_INTERNO: TStringField;
    CDSinternoID_UP: TIntegerField;
    CDSinternoSigla: TStringField;
    CdsConsultaID_UP: TIntegerField;
    CdsConsultaSigla: TStringField;
    SQLvisitante: TSQLQuery;
    dspvisitante: TDataSetProvider;
    cdsvisitante: TClientDataSet;
    dsvisitante: TDataSource;
    SQLselectvisitantes: TSQLQuery;
    DBGrid2: TDBGrid;
    cdsvisitanteSigla: TStringField;
    cdsvisitanteNOME_INTERNO: TStringField;
    cdsvisitanteVISITANTE: TStringField;
    cdsvisitanteGRAU_PARENTESCO: TStringField;
    cdsvisitanteNUMERO_CARTEIRINHA: TStringField;
    cdsvisitanteSEXO: TStringField;
    cdsvisitanteID_UP: TIntegerField;
    cdsvisitanteSTATUS: TStringField;
    SQLCONSULTAINTERNONOME_INTERNO: TStringField;
    SQLCONSULTAINTERNOVISITANTE: TStringField;
    SQLCONSULTAINTERNOGRAU_PARENTESCO: TStringField;
    SQLCONSULTAINTERNOSEXO: TStringField;
    SQLCONSULTAINTERNOID_UP: TIntegerField;
    SQLCONSULTAINTERNODATA_ULT_VISITA: TSQLTimeStampField;
    CDSinternoDATA_ULT_VISITA: TSQLTimeStampField;
    SQLCONSULTAINTERNORGI: TStringField;
    CDSinternoRGI: TStringField;
    SQLvisitanteNOME_INTERNO: TStringField;
    SQLvisitanteVISITANTE: TStringField;
    SQLvisitanteGRAU_PARENTESCO: TStringField;
    SQLvisitanteNUMERO_CARTEIRINHA: TStringField;
    SQLvisitanteSEXO: TStringField;
    SQLvisitanteID_UP: TIntegerField;
    SQLvisitanteSTATUS: TStringField;
    SQLCONSULTAINTERNOSTATUS: TStringField;
    CDSinternoSTATUS: TStringField;
    btnBuscar: TButton;
    procedure RadioGroupStatusClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaVisitante: TFrmConsultaVisitante;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmConsultaVisitante.RadioGroupStatusClick(Sender: TObject);
begin
  if RadioGroupStatus.ItemIndex = 0 then
  begin
    DBGridConsulta.Visible := False;
    DBGrid1.Visible := True;
    DBGrid2.Visible := false;
    EditLocalizar.Text := '';
  end;

  if RadioGroupStatus.ItemIndex = 1 then
  begin
    DBGridConsulta.Visible := false;
    DBGrid1.Visible := False;
    DBGrid2.Visible := true;
    EditLocalizar.Text := '';
  end;

  if RadioGroupStatus.ItemIndex = 2 then
  begin
    DBGridConsulta.Visible := true;
    DBGrid1.Visible := False;
    DBGrid2.Visible := false;
    EditLocalizar.Text := '';
  end;

  if RadioGroupStatus.ItemIndex = 3 then
  begin
    DBGridConsulta.Visible := False;
    DBGrid1.Visible := True;
    DBGrid2.Visible := false;
    EditLocalizar.Text := '';
  end;

  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
    EditLocalizar.Text := '';
  end;
  
end;

procedure TFrmConsultaVisitante.btnBuscarClick(Sender: TObject);
begin
  if RadioGroupStatus.ItemIndex = 0 then
  begin
    SQLCONSULTAINTERNO.sql.text := SqlSelectInterno.SQL.Text + ' where i.nome_interno like '
      + qs(EditLocalizar.text + '%') + ' order by v.visitante ';
    DSCONSULTAINTERNO.DataSet.Close;
    DSCONSULTAINTERNO.DataSet.Open;
  end;

  if RadioGroupStatus.ItemIndex = 1 then
  begin
    Sqlvisitante.sql.text := SQLselectvisitantes.SQL.Text + ' where v.visitante like '
      + qs(EditLocalizar.text + '%') + ' order by v.visitante ';
    dsvisitante.DataSet.Close;
    dsvisitante.DataSet.Open;
  end;

  if RadioGroupStatus.ItemIndex = 2 then
  begin
    SqlConsulta.sql.text := SqlSelectVisita.SQL.Text + ' where m.nome_visitante like '
      + qs(EditLocalizar.text + '%') + ' order by m.data_visita desc ';
    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;
  end;
  if RadioGroupStatus.ItemIndex = 3 then
  begin
    SQLCONSULTAINTERNO.sql.text := SqlSelectInterno.SQL.Text + ' where I.RGI = '
      + qs(EditLocalizar.text) + ' order by v.visitante ';
    DSCONSULTAINTERNO.DataSet.Close;
    DSCONSULTAINTERNO.DataSet.Open;
  end;
end;

end.

