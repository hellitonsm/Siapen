program ReplicacaoWIN;

uses
  //--- [MSS/Start] - Adicionado em 18/02/2011 ---\\
  // MANTER ESSAS 6 UNITS SEMPRE ATIVADAS QUANDO ATUALIZAR NO SVN
  FastMM4,
  ExceptionLog,
  MidasLib,
  MidasSpeedFix,
  //QForms,
  SysUtils,
  //--- [MSS/End] - 18/02/2011 ---\\

  //FastMM4 in '..\..\Componentes\FastMM\FastMM4.pas',
  //MidasLib,
  //MidasSpeedFix,
  Forms,
  ReplicacaoViaWindows in 'ReplicacaoViaWindows.pas' {FrmReplicacaoViaWindows},
  PrincipalSincronismo in 'PrincipalSincronismo.pas' {FrmPrincipalSincronismo},
  DmReplicacao in 'DmReplicacao.pas' {DM: TDataModule},
  uThreadReplicacao in 'uThreadReplicacao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmReplicacaoViaWindows, FrmReplicacaoViaWindows);
  Application.Run;
end.
