unit CancelarTransferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls;

type
  TFrmCancelarTransferencia = class(TForm)
    LabelData: TLabel;
    LabelMotivo: TLabel;
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
  FrmCancelarTransferencia: TFrmCancelarTransferencia;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmCancelarTransferencia.FormShow(Sender: TObject);
begin
  dm.DsFuncionarioLista.DataSet.Close;
  dm.DsFuncionarioLista.DataSet.open;
  DateTimePickerDTCANCELAMENTO.Date := Date;
  DBLookupComboBoxfuncionario.KeyValue:= GLOBAL_ID_FUNCIONARIO;
end;

end.
