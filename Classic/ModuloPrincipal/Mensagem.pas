unit Mensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, StdCtrls, jpeg, ExtCtrls, ComCtrls, ToolWin,
  Buttons;

type
  TFrmMensagem = class(TFrmModeloFormulario)
    MemoMensagem: TMemo;
    Timer1: TTimer;
    ToolBar1: TToolBar;
    ToolButtonAlerta: TToolButton;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensagem: TFrmMensagem;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmMensagem.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Left := Screen.Width-Self.Width;
  Self.Top := Screen.WorkAreaHeight-Self.Height;
end;

procedure TFrmMensagem.Timer1Timer(Sender: TObject);
begin
  inherited;
  ToolButtonAlerta.Down := not ToolButtonAlerta.Down;
end;

procedure TFrmMensagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  Action := caFree;

end;

procedure TFrmMensagem.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.

