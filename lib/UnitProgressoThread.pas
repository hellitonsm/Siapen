unit UnitProgressoThread;

interface

uses
  System.Classes, Data.DB, Vcl.ComCtrls;

type
  TProgressoThread = class(TThread)
  private
    FDataSource: TDataSource;
    FProgressBar: TProgressBar;
  protected
    procedure Execute; override;
  public
    constructor Create(DataSource: TDataSource; ProgressBar: TProgressBar);
    function getactivedatasource: boolean;
    function getposition: integer;
  end;

implementation

constructor TProgressoThread.Create(DataSource: TDataSource;
  ProgressBar: TProgressBar);
begin
  inherited Create(True);
  FreeOnTerminate := True;
  FDataSource := DataSource;
  FProgressBar := ProgressBar;
end;

procedure TProgressoThread.Execute;
var
  i: integer;
begin
  // Abra o banco de dados em segundo plano

  // Atualize o ProgressBar em um loop
  for i := 1 to 100 do
  begin
    // Sincronize a atualização do ProgressBar com a thread principal
    Synchronize(
      procedure
      begin
        FProgressBar.Position := i;
      end);

    // Aguarde um curto período de tempo para simular o processamento
    Sleep(10);
  end;

  

end;

function TProgressoThread.getactivedatasource: boolean;
begin
  // if FDataSource.DataSet.Active and (FProgressBar.Position = 100) then
  if FDataSource.DataSet.Active then
    result := True;
end;

function TProgressoThread.getposition: integer;
begin
  result := FProgressBar.Position;
end;

end.
