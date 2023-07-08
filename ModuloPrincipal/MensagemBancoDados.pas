unit MensagemBancoDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  Grids, DBGrids, SqlExpr, StdCtrls, jpeg;

type
  TFrmMensagemBancoDados = class(TFrmModeloFormulario)
    SqlMensagemBancoDados: TSQLQuery;
    DBGrid1: TDBGrid;
    DpsMensagemBancoDados: TDataSetProvider;
    CdsMensagemBancoDados: TClientDataSet;
    DsMensagemBancoDados: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensagemBancoDados: TFrmMensagemBancoDados;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmMensagemBancoDados.FormShow(Sender: TObject);
begin
  inherited;
  DsMensagemBancoDados.DataSet.Close;
  DsMensagemBancoDados.DataSet.OPen;
end;

end.
