unit PermaneciaScaner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, ImgList, StdCtrls, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, DBCtrls, jpeg,
  Buttons, System.ImageList;

type
  TFrmPermaneciaScaner = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    Label51: TLabel;
    OpenDialog1: TOpenDialog;
    SQLpermanenciascaner: TSQLQuery;
    DSPpermanenciascaner: TDataSetProvider;
    CDSpermanenciascaner: TClientDataSet;
    DSpermanenciascaner: TDataSource;
    Image1: TImage;
    dsfiltroautos: TDataSource;
    SQLfiltroautos: TSQLQuery;
    cdsfiltroautos: TClientDataSet;
    dspfiltroautos: TDataSetProvider;
    CDSpermanenciascanerID_PERMANENCIA_SCANER: TIntegerField;
    CDSpermanenciascanerDESCRICAO_PERMANENCIA: TStringField;
    CDSpermanenciascanerDOC_SCANER: TBlobField;
    CDSpermanenciascanerID_CONTROLE_PERMANENCIA: TIntegerField;
    BitBtn15: TBitBtn;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Editdescricao: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function IniciaTransCadastro: Boolean;
    function FinalizaTransCadastro: Boolean;
    function CancelaTransCadastro: Boolean;
    function ReeiniciaTransCadastro: Boolean;
  end;

var
  FrmPermaneciaScaner: TFrmPermaneciaScaner;
  TD: TTransactionDesc; // Para os Lançamentos .

implementation

uses CadastroInternoJuridico, DmPrincipal, Lib;

{$R *.dfm}

function TFrmPermaneciaScaner.IniciaTransCadastro: Boolean;
begin
  try
    TD.TransactionID := 0;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction();
    DM.SQLConnect.ExecSql('EXECUTE PROCEDURE SET_CONTEXT(' + inttostr(GLOBAL_ID_FUNCIONARIO) + ')');
  except //se der erro para abrir uma TransCadastro
    begin //tente uma nova
      try
        Result := False;
        TD.TransactionID := TD.TransactionID + 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        DM.SQLConnect.StartTransaction();
      except
      end;
    end;
  end;
end;

function TFrmPermaneciaScaner.ReeiniciaTransCadastro: Boolean;
begin
  try
    FinalizaTransCadastro;
    TD.TransactionID := TD.TransactionID + 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction();
  except
  end;
end;

function TFrmPermaneciaScaner.FinalizaTransCadastro: Boolean;
begin
  try
    Result := False;
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Commit();
    Result := True;
  except
  end;
end;

function TFrmPermaneciaScaner.CancelaTransCadastro: Boolean;
begin
  try
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Rollback();
  except
  end;

end;

procedure TFrmPermaneciaScaner.FormShow(Sender: TObject);
begin
  DSpermanenciascaner.DataSet.Close;
  DSpermanenciascaner.DataSet.Open;
end;

procedure TFrmPermaneciaScaner.BitBtn15Click(Sender: TObject);
var
  JPeg: TJpegImage;
begin

  if OpenDialog1.Execute then
  begin
    JPeg := TJPEGImage.Create;
    JPeg.LoadFromFile(OpenDialog1.FileName);
    Image1.Picture.Bitmap.Assign(JPeg);
  end;

end;

procedure TFrmPermaneciaScaner.BitBtn1Click(Sender: TObject);
begin

  if DBLookupComboBox1.Text = '' then
  begin
    ShowMessage('Selecione Nº Autos!');
    DBLookupComboBox1.SetFocus;
  end
  else
  begin
    if Editdescricao.Text = '' then
    begin
      ShowMessage('Informe Descrição do Anexo!');
      Editdescricao.SetFocus;
    end
    else
    begin
      if Image1.Picture = nil then
      begin
        ShowMessage('Selecione o Anexo!');
        Editdescricao.SetFocus;
      end
    end;
  end;

  DSpermanenciascaner.DataSet.Append;
  DSpermanenciascaner.DataSet.FieldByName('id_permanencia_scaner').AsInteger := 0;
  DSpermanenciascaner.DataSet.FieldByName('id_controle_permanencia').AsInteger := DBLookupComboBox1.KeyValue;

  (DSpermanenciascaner.DataSet.FieldByName('doc_scaner') as TBlobField).LoadFromFile(OpenDialog1.FileName);

  DSpermanenciascaner.DataSet.FieldByName('descricao_permanencia').AsString := Editdescricao.Text;

  DSpermanenciascaner.DataSet.Post;

  if DSpermanenciascaner.DataSet.State in [dsedit, dsinsert] then
    DSpermanenciascaner.DataSet.Post;
  IniciaTransCadastro;
  if TClientDataSet(DSpermanenciascaner.DataSet).ApplyUpdates(0) = 0 then
  begin
    finalizaTransCadastro;
    ShowMessage('Anexo Inserido com Sucesso!');
  end
  else
  begin
    CancelaTransCadastro;
    ShowMessage('Transação Cancelada!');
  end;

  DBLookupComboBox1.KeyValue := null;
  Editdescricao.Text := '';
  Image1.Picture := nil;

  if MessageDlg('Deseja Anexar Outro Arquivo?', mtConfirmation, [mbYes, mbNo], 0) = mrno then
    close;
end;

end.

