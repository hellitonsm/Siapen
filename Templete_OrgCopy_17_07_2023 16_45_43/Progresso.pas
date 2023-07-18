unit Progresso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, db;

type
  TProgressBarThread = class(TThread)
  private
    FProgressBar: TProgressBar;
  protected
    procedure Execute; override;
  public
    constructor Create(ProgressBar: TProgressBar);
  end;

  TDatabaseThread = class(TThread)
  private
    FDataSource: TDataSource;
    FOnComplete: TNotifyEvent;
  protected
    procedure Execute; override;
    procedure DoComplete;
  public
    constructor Create(DataSource: TDataSource);
  end;

  TFormProgresso = class(TForm)
    ProgressBar1: TProgressBar;
    Label1: TLabel;
  private
    { Private declarations }
  public
    ThreadsCompleted:boolean;
    { Public declarations }
    procedure StartThreads(DataSource1: TdataSource);
    procedure DatabaseThreadComplete(Sender: TObject);
  end;

implementation

{$R *.dfm}

{ TProgressBarThread }

constructor TProgressBarThread.Create(ProgressBar: TProgressBar);
begin
  inherited Create(True);
  FProgressBar := ProgressBar;
end;

procedure TProgressBarThread.Execute;
begin
  sleep(10);
end;

{ TDatabaseThread }

constructor TDatabaseThread.Create(DataSource: TDataSource);
begin
  inherited Create(True);
  FDataSource := DataSource;
end;

procedure TDatabaseThread.Execute;
begin
  FDataSource.DataSet.Open;
  Synchronize(DoComplete);
end;

procedure TDatabaseThread.DoComplete;
begin
  if Assigned(FOnComplete) then
    FOnComplete(Self);
end;

{ TFormProgresso }

procedure TFormProgresso.StartThreads(DataSource1: TdataSource);
var
  ProgressBarThread: TProgressBarThread;
  DatabaseThread: TDatabaseThread;
begin
  ProgressBarThread := TProgressBarThread.Create(ProgressBar1);
  DatabaseThread := TDatabaseThread.Create(DataSource1);
  DatabaseThread.OnTerminate := DatabaseThreadComplete;

  ProgressBarThread.Start;
  DatabaseThread.Start;
end;

procedure TFormProgresso.DatabaseThreadComplete(Sender: TObject);
begin
   ThreadsCompleted := True;
end;
end.

