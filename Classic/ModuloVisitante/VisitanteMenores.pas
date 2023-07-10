unit VisitanteMenores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, StdCtrls, Buttons, DBCtrls;

type
  TFrmVisitanteMenores = class(TFrmModeloFormulario)
    Label33: TLabel;
    BitBtnConfirma: TBitBtn;
    BitBtnCancela: TBitBtn;
    EditMenor: TEdit;
    procedure EditMenorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVisitanteMenores: TFrmVisitanteMenores;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmVisitanteMenores.EditMenorChange(Sender: TObject);
begin
  inherited;
  BitBtnConfirma.Enabled := length(Trim(EditMenor.Text))>3 ;
end;

end.
