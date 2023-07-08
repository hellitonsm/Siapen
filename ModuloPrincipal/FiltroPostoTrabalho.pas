unit FiltroPostoTrabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, DBCtrls, StdCtrls, Buttons;

type
  TFrmFiltroPostoTrabalho = class(TFrmModeloFormulario)
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btn1: TBitBtn;
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroPostoTrabalho: TFrmFiltroPostoTrabalho;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmFiltroPostoTrabalho.DBLookupComboBox3Click(Sender: TObject);
begin
  inherited;
  
  btn1.Enabled := (DBLookupComboBox3.KeyValue <> null);

end;

procedure TFrmFiltroPostoTrabalho.FormCreate(Sender: TObject);
begin
  inherited;
  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

end;

end.
