unit ModeloFormulario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, SqlExpr;

type
  TFrmModeloFormulario = class(TForm)
    PanelGeral: TPanel;
    PanelTitulo: TPanel;
    Image2: TImage;
    LabelTitulo: TLabel;
    Image3: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModeloFormulario: TFrmModeloFormulario;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmModeloFormulario.FormCreate(Sender: TObject);
var
  iComp: Integer;
begin
  for iComp := 0 to Componentcount - 1 do
    if (Components[iComp] is TSQLQuery) then
      TSQLQuery(Components[iComp]).SQLConnection := DM.SQLConnect;


  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.ExecuteDirect('update conexao set tela_momento = ' + qs(Self.Caption)
        + ' where idconexao=' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;
  LabelTitulo.Caption := self.Caption;
  SetCurrentDir(GLOBAL_PATCH_SISTEMA);
end;

end.

