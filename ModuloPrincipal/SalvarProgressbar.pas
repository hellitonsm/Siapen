unit SalvarProgressbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls,IBX.IBHeader, IBX.IBBlob, IBX.IBIntf, IBX.IB, IBX.IBErrorcodes,
  IBX.IBCustomDataSet, IBX.IBDatabaseInfo, DB, IBX.IBDatabase, IBX.IBServices, DBClient
  ;

type
  TCBBlobCallBackMode = (bcbmStart, bcbmProgress, bcbmEnd);
  TCBBlobCallBack     = procedure(ATotal, AReceived: Integer;
    AMode: TCBBlobCallBackMode) of object;
  TFrmSalvarProgressbar = class(TForm)
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    IBBackupService1: TIBBackupService;
    IBConfigService1: TIBConfigService;
    IBDatabase1: TIBDatabase;
    IBDatabaseInfo1: TIBDatabaseInfo;
    IBDataSet1: TIBDataSet;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
  private
    procedure CopyFileWithProgressBar(Source, Destination: string);
//function cbGetBlobWithCallBack(ABlobID: TISC_Quad;
//  ADBHandle: PISC_DB_Handle;
//  ATRHandle: PISC_TR_Handle;
//  AFileName: string; ACallBack: TCBBlobCallBack): Boolean;
    { Private declarations }
  public
    procedure CopyFileWithProgressBar2(Source, Destination: string);
    { Public declarations }
  end;

var
  FrmSalvarProgressbar: TFrmSalvarProgressbar;

implementation

{$R *.dfm}

{
 You need a TProgressBar on your form for this tip.
 Für diesen Tip wird eine TProgressBar benötigt.
}


procedure TFrmSalvarProgressbar.CopyFileWithProgressBar(Source, Destination: string);
var
  FromF, ToF: file of byte ;
  Buffer: array[0..4096] of char ;
  NumRead: integer;
  FileLength: longint;
begin
  AssignFile(FromF, Source);
  reset(FromF);
  AssignFile(ToF, Destination);
  rewrite(ToF);
  FileLength := FileSize(FromF);
  with Progressbar1 do
  begin
    Min := 0;
    Max := FileLength;
    while FileLength > 0 do
    begin
      BlockRead(FromF, Buffer[0], SizeOf(Buffer), NumRead);
      FileLength := FileLength - NumRead;
      BlockWrite(ToF, Buffer[0], NumRead);
      Position := Position + NumRead;
    end;
    CloseFile(FromF);
    CloseFile(ToF);
  end;
end;


procedure TFrmSalvarProgressbar.CopyFileWithProgressBar2(Source, Destination: string);
const
  OffsetMemoryStream : Int64 = 0;
var
  FromF, ToF: file of byte ;
  Buffer: array[0..4096] of char ;
  NumRead: integer;
  FileLength: longint;
  MemoryStream: TMemoryStream;
begin
  AssignFile(FromF, Source);
  reset(FromF);
//  AssignFile(ToF, Destination);
//  rewrite(ToF);
  FileLength := FileSize(FromF);

  MemoryStream := TMemoryStream.Create;
  MemoryStream.Position := OffsetMemoryStream;

  with Progressbar1 do
  begin
    Min := 0;
    Max := FileLength;
    while FileLength > 0 do
    begin
      BlockRead(FromF, Buffer[0], SizeOf(Buffer), NumRead);
      FileLength := FileLength - NumRead;
      //BlockWrite(ToF, Buffer[0], NumRead);
      MemoryStream.WriteBuffer(Buffer[0], NumRead);
      Position := Position + NumRead;
    end;
    MemoryStream.SaveToFile(Destination);
    CloseFile(FromF);
//    CloseFile(ToF);
  end;

//  (DsBlobOrigem.DataSet.FieldByName(sCampo) as TBlobField).SaveToStream(MemoryStream);
//
//  if Assigned(MemoryStream) then
//  begin
//    DsBlobDestino.DataSet.Edit;
//    (DsBlobDestino.DataSet.FieldByName(sCampo) as TBlobField).LoadFromStream(MemoryStream);
//    DsBlobDestino.DataSet.Post;
//    TClientDataSet(DsBlobDestino.DataSet).ApplyUpdates(0);
//    SQLConnectDestino.Commit(TD_Destino);
//  end;

end;

procedure TFrmSalvarProgressbar.Button1Click(Sender: TObject);
begin
  CopyFileWithProgressBar2(Edit1.Text,Edit2.Text);
end;

procedure TFrmSalvarProgressbar.Edit1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    edit1.text := OpenDialog1.FileName;
end;

procedure TFrmSalvarProgressbar.Edit2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    edit2.text := SaveDialog1.FileName;
end;

end.
