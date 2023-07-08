unit RevogacaoBeneficio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFrmRevogacaoBeneficio = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRevogacaoBeneficio: TFrmRevogacaoBeneficio;

implementation

{$R *.dfm}

procedure TFrmRevogacaoBeneficio.FormShow(Sender: TObject);
begin
DateTimePicker1.Date := Date;
end;

procedure TFrmRevogacaoBeneficio.Button1Click(Sender: TObject);
begin
 if Memo1.Text = '' then
 begin
   ShowMessage('Digite o Motivo!');
   exit;
 end;

 ModalResult := mrok;
end;

end.
