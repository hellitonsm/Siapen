unit RoundedPanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.Graphics;

type
  TRoundedPanel = class(TPanel)
  private
    FRoundedRadius: Integer;
    procedure SetRoundedRadius(const Value: Integer);
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property RoundedRadius: Integer read FRoundedRadius write SetRoundedRadius default 10;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Custom', [TRoundedPanel]);
end;

{ TRoundedPanel }

constructor TRoundedPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FRoundedRadius := 10;
end;

procedure TRoundedPanel.Paint;
var
  RoundRectRgn: HRGN;
  dc : HDC;
begin
  inherited Paint;

  RoundRectRgn := CreateRoundRectRgn(0, 0, Width, Height, FRoundedRadius, FRoundedRadius);
  try
    SelectClipRgn(Canvas.Handle, RoundRectRgn);
    dc := GetDC(Canvas.Handle);
    SetWindowRgn(Canvas.Handle, RoundRectRgn, true);
   // Canvas.FillRect(Rect(0, 0, Width, Height));
  finally
    DeleteObject(RoundRectRgn);
    ReleaseDC(Canvas.Handle, dc);
  end;
end;

procedure TRoundedPanel.SetRoundedRadius(const Value: Integer);
begin
  if FRoundedRadius <> Value then
  begin
    FRoundedRadius := Value;
    Invalidate;
  end;
end;

end.
