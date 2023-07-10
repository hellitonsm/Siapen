unit CancelarSaidao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, adpDBDateTimePicker;

type
  TFrmCancelarSaidao = class(TForm)
    Label17: TLabel;
    Label15: TLabel;
    Label41: TLabel;
    Button1: TButton;
    DBLookupComboBoxfuncionario: TDBLookupComboBox;
    Memomotivocancelamento: TMemo;
    DateTimePickerDTCANCELAMENTO: TDateTimePicker;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCancelarSaidao: TFrmCancelarSaidao;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmCancelarSaidao.FormShow(Sender: TObject);
begin

  dm.DsFuncionarioLista.DataSet.Close;
  dm.DsFuncionarioLista.DataSet.open;

  DBLookupComboBoxfuncionario.KeyValue:= GLOBAL_ID_FUNCIONARIO;
end;

end.

