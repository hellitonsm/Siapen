unit ConclusaoCD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmConclusaoCD = class(TForm)
    Button1: TButton;
    Label17: TLabel;
    ComboBoxsituacaopdi: TComboBox;
    Label15: TLabel;
    Editdtcondenacao: TEdit;
    Label26: TLabel;
    Editdtreabilitacao: TEdit;
    Label29: TLabel;
    Edit5: TEdit;
    Label41: TLabel;
    ComboBox2: TComboBox;
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConclusaoCD: TFrmConclusaoCD;

implementation

{$R *.dfm}

procedure TFrmConclusaoCD.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

end.
