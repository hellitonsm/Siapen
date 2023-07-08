unit FiltroAgendaAtendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, StdCtrls, DBCtrls, Buttons, jpeg;

type
  TFrmFiltroAgendaAtendimento = class(TFrmModeloFormulario)
    BtnAgenda: TButton;
    BtnRequerimento: TButton;
    Label8: TLabel;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    ButtonSairAgenda: TButton;
    procedure BtnAgendaClick(Sender: TObject);
    procedure BtnRequerimentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonSairAgendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    STATUS, liberado: string;
    { Public declarations }
  end;

var
  FrmFiltroAgendaAtendimento: TFrmFiltroAgendaAtendimento;

implementation

uses AgendaAtendimento, DmPrincipal, lib;

{$R *.dfm}

procedure TFrmFiltroAgendaAtendimento.BtnAgendaClick(Sender: TObject);
begin
  inherited;

  statusfiltroagenda := '';
  filtropostotrabalho := -1;
  if DBLookupComboBoxPostoTrabalho.KeyValue <> null then
    filtropostotrabalho := DBLookupComboBoxPostoTrabalho.KeyValue;
  // ModalResult := mrOk;
  liberado := 'S';
  close;

end;

procedure TFrmFiltroAgendaAtendimento.BtnRequerimentoClick(Sender: TObject);
begin

  inherited;
  statusfiltroagenda := 'R';
  filtropostotrabalho := -1;
  if DBLookupComboBoxPostoTrabalho.KeyValue <> null then
    filtropostotrabalho := DBLookupComboBoxPostoTrabalho.KeyValue;
  // ModalResult := mrOk;
  liberado := 'S';
  close;

  {  filtropostotrabalho := DBLookupComboBoxPostoTrabalho.KeyValue;
  statusfiltroagenda := 'R';
 // ModalResult := mrOk;
 }
end;

procedure TFrmFiltroAgendaAtendimento.FormCreate(Sender: TObject);
begin
  inherited;
  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

end;

procedure TFrmFiltroAgendaAtendimento.ButtonSairAgendaClick(
  Sender: TObject);
begin
  inherited;
  //variavel que se encontra la lib que verifica se o botão sair foi ou não selecionado para fechar agendaAtendimento
  liberado := '';
  close;
end;

end.

