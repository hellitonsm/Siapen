program Atualizacao;

uses
  //ExceptionLog,
  Forms,
  windows,
  System,
  UAtualizacao in 'UAtualizacao.pas' {FrmAtualizacao};

{$R *.res}
begin

  if FindWindow( nil, PChar('Atualizando')) = 0 then
  begin
    Application.Initialize;
    Application.Title := 'SIAPEN - Sistema Integrado de Administração Penitenciária';
  Application.CreateForm(TFrmAtualizacao, FrmAtualizacao);
    Application.Run;
  end
  else
    Application.MessageBox(PChar('O sistema está sendo inicializado!'), 'Erro ', MB_OK + MB_ICONERROR);

end.
