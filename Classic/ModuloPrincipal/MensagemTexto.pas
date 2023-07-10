unit MensagemTexto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, StdCtrls, jpeg, ExtCtrls, Buttons;

type
  TFrmMensagemTexto = class(TFrmModeloFormulario)
    Memo1: TMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensagemTexto: TFrmMensagemTexto;

implementation

{$R *.dfm}

end.
