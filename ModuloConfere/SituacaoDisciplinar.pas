unit SituacaoDisciplinar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask;

type
  TFrmSituacaoDisciplinar = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    MaskEdit1: TMaskEdit;
    procedure FormCreate(Sender: TObject);
  private

  public
    
  end;

var
  FrmSituacaoDisciplinar: TFrmSituacaoDisciplinar;

implementation

{$R *.dfm}

procedure TFrmSituacaoDisciplinar.FormCreate(Sender: TObject);
begin
MaskEdit1.Text := DateToStr(date);
end;

end.
