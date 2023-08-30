unit MensagemBancoDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  Grids, DBGrids, SqlExpr, StdCtrls, jpeg, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmMensagemBancoDados = class(TFrmModeloFormulario)
    SqlMensagemBancoDadosold: TSQLQuery;
    DBGrid1: TDBGrid;
    DpsMensagemBancoDados: TDataSetProvider;
    CdsMensagemBancoDados: TClientDataSet;
    DsMensagemBancoDados: TDataSource;
    SqlMensagemBancoDados: TFDQuery;
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
