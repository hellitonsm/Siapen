unit FiltroProcedimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  TFrmFiltroProcedimentos = class(TFrmModeloFormulario)
    BitBtnConfirma: TBitBtn;
    BitBtnCancela: TBitBtn;
    DBLookupComboBoxProcedimentos: TDBLookupComboBox;
    Label33: TLabel;
    procedure DBLookupComboBoxProcedimentosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroProcedimentos: TFrmFiltroProcedimentos;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmFiltroProcedimentos.DBLookupComboBoxProcedimentosClick(
  Sender: TObject);
begin
  inherited;
  BitBtnConfirma.Enabled := (DBLookupComboBoxProcedimentos.KeyValue > 0);
end;

end.
