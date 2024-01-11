unit ConsultaProced;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids,
  ComCtrls, Mask, DBCtrls, Data.DB;

type
  TFrmConsultaProced = class(TFrmModeloFormulario)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dm: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditDataNascimento: TMaskEdit;
    EditNome: TEdit;
    EditMae: TEdit;
    EditNumeroProced: TEdit;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    DBRichEdit1: TDBRichEdit;
    procedure dmClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditNumeroProcedKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProced: TFrmConsultaProced;

implementation

uses Dm_Proced;

{$R *.dfm}

procedure TFrmConsultaProced.dmClick(Sender: TObject);
var
  iCod: integer;
begin
  inherited;

{  DmProced.Proced.Connected := false;
  DmProced.SpBuscaEnvolvido.close;
  DmProced.Proced.Connected := true;
  DmProced.SpBuscaEnvolvido.Parameters[1].Value := Null;
  if StrToIntDef(EditNumeroProced.Text, 0) > 0 then
    DmProced.SpBuscaEnvolvido.Parameters[1].Value := StrToIntDef(EditNumeroProced.Text, 0); //;
  DmProced.SpBuscaEnvolvido.Parameters[2].Value := EditNome.Text; //;
  DmProced.SpBuscaEnvolvido.Parameters[3].Value := EditMae.Text; //;
  DmProced.SpBuscaEnvolvido.Parameters[4].Value := EditDataNascimento.Text; //;
  DmProced.SpBuscaEnvolvido.Open;
  if not DmProced.SpBuscaEnvolvido.IsEmpty then
  begin
    DmProced.SpAntecedentesCriminais.close;
    DmProced.SpAntecedentesCriminais.Parameters[1].Value :=
      DmProced.DsBuscaEnvolvido.DataSet.FieldByName('cod_envolvido').AsInteger; //;
    DmProced.SpAntecedentesCriminais.Parameters[2].Value := 1; //;
    DmProced.SpAntecedentesCriminais.Open;
  end;
   }
   iCod := 0;
end;

procedure TFrmConsultaProced.Button1Click(Sender: TObject);
var
  iCod: integer;
begin
  inherited;
 { DmProced.Proced.Connected := false;
  DmProced.Proced.Connected := true;

  DmProced.SpAntecedentesCriminais.close;
  icod := strtointdef(InputBox('Digite código Proced ', 'Digite código Proced', ''), 0);
  DmProced.SpAntecedentesCriminais.Parameters[1].Value := icod; //;
  DmProced.SpAntecedentesCriminais.Parameters[2].Value := 1; //;
  DmProced.SpAntecedentesCriminais.Open;
 }
 iCod := 0;
end;

procedure TFrmConsultaProced.EditNumeroProcedKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 { if not (key in ['0'..'9']) then
    key := #0;       }
end;

procedure TFrmConsultaProced.FormCreate(Sender: TObject);
begin
  inherited;
  {DmProced.Proced.Connected := false;
  DmProced.SpAntecedentesCriminais.close;
  DmProced.SpAntecedentesCriminais.close;  }
end;

procedure TFrmConsultaProced.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 { DmProced.Proced.Connected := false;
  DmProced.SpAntecedentesCriminais.close;
  DmProced.SpAntecedentesCriminais.close;
  }
end;

end.

