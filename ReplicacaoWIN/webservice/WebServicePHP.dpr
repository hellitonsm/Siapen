program WebServicePHP;

uses
  ExceptionLog,
  Forms,
  windows,
  ReplicacaoWebService in 'ReplicacaoWebService.pas' {FrmReplicacaoWebService};

{$R *.res}

begin

  if FindWindow( nil, PChar('Replicação com Web Service PHP - SIAPEN')) = 0 then
  begin
    Application.Initialize;
    Application.Title := 'Replicação com Web Service PHP - SIAPEN';
    Application.CreateForm(TFrmReplicacaoWebService, FrmReplicacaoWebService);
    Application.Run;
  end;
//  else
//    Application.MessageBox(PChar('O programa está em funcionamento!'), 'Erro ', MB_OK + MB_ICONERROR);


end.
