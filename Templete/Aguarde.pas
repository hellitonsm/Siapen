unit Aguarde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TFrmAguarde = class(TForm)
    ProgressBarAguarde: TProgressBar;
    LblAguarde: TLabel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAguarde: TFrmAguarde;

implementation

{$R *.dfm}

end.
