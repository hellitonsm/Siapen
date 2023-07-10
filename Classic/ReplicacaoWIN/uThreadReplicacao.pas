unit uThreadReplicacao;

interface

uses ComCtrls, Classes, SysUtils, Controls, StdCtrls, Forms, PrincipalSincronismo;

type
  TThreadReplicacao = class(TThread)
  private
    FIndice: Integer;
    FPrioridade: Integer;
    FConexao: Integer;
    FFazendo: Boolean;
  public
    property Conexao: Integer read FConexao write FConexao;
    property Prioridade: Integer read FPrioridade write FPrioridade;
    property Indice: Integer read FIndice write FIndice;
  protected
    procedure Execute; override;
  end;

implementation

uses ReplicacaoViaWindows;

{ TThreadProgresso }

procedure TThreadReplicacao.Execute;
begin

  case FPrioridade of
    0: Priority := tpLower;
    1: Priority := tpNormal;
    2: Priority := tpHigher;
    3: Priority := tpTimeCritical;
  end;
  
  try
    ReplicacaoViaWindows.FormPrincipalSincronismo[FIndice].ExecutaReplicacaoWin;
  except
  end;

  //  if not Self.Terminated then
  //    Self.Terminate;
  
  try
    inherited;
  except
  end;
  
end;

end.

