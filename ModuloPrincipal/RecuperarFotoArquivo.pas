unit RecuperarFotoArquivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FMTBcd, SqlExpr, Provider, DB, DBClient, Jpeg, DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRecuperarFotoArquivo = class(TForm)
    EditPasta: TEdit;
    Label1: TLabel;
    Button1: TButton;
    DsExecute: TDataSource;
    CdsExecute: TClientDataSet;
    DspExecute: TDataSetProvider;
    DsInterno: TDataSource;
    CdsInterno: TClientDataSet;
    DspInterno: TDataSetProvider;
    DBImageFOTO: TDBImage;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    SqlExecute: TFDQuery;
    SqlInterno: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecuperarFotoArquivo: TFrmRecuperarFotoArquivo;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmRecuperarFotoArquivo.Button1Click(Sender: TObject);
var
  JPeg: TJpegImage;
  sJpeg: string;
  total : integer;

  procedure FazExecucao(sRGI, sExt: string);
  begin
    inc(total);

    SqlExecute.ParamByName('ID_INTERNO').AsInteger :=
      DsInterno.DataSet.fieldbyname('ID_INTERNO').AsInteger;

    CdsExecute.close;
    CdsExecute.open;

    CdsExecute.Edit;

    try

      JPeg := TJPEGImage.Create;
      sJpeg := ConverterBmpParaJPeg(JpgToBmp(EditPasta.text + sRGI + '.' + sExt));
      JPeg.LoadFromFile(sJpeg);
      DBImageFOTO.Picture.Bitmap.Assign(JPeg);
      FreeAndNil(JPeg);
      DeleteFile(sJpeg);

    except

      FreeAndNil(JPeg);

    end;

    CdsExecute.Post;
    IniciaTransMovimento;
    CdsExecute.ApplyUpdates(0);
    FinalizaTransMovimento;
    CdsExecute.close;

  end;

begin

  total := 0;
  
  with dsinterno.dataset do
  begin

    close;
    open;

    first;

    while not eof do
    begin

      if FileExists(EditPasta.text + trim(fieldbyname('RGI').AsString) + '.jpg') then
        FazExecucao(trim(fieldbyname('RGI').AsString), 'jpg')
      else if FileExists(EditPasta.text + trim(fieldbyname('RGI').AsString) + '.JPG') then
        FazExecucao(trim(fieldbyname('RGI').AsString), 'JPG');

      Label2.Caption := 'Total: '+inttostr(total);

      Application.ProcessMessages;

      if CheckBox1.Checked then
        break;


      next ;

    end;

    close;

  end;

end;

end.

