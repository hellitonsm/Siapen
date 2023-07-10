//------------------------------------------------------------------------------
// Modulo de reconhecimento da digital
//------------------------------------------------------------------------------
unit UnRecDig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg, unCompBio;

type
  TfrmRecDig = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    pnBot: TPanel;
    btRet: TBitBtn;
    Panel4: TPanel;
    imgDig: TImage;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    mmLog: TMemo;
    pnSts: TPanel;
    BtnIniciar: TButton;
    BtnParar: TButton;
    pnQual: TPanel;
    ComboBoxdigital: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btRetClick(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure BtnPararClick(Sender: TObject);
    procedure ComboBoxdigitalClick(Sender: TObject);
  private
    prvBio: TCompBio;
    procedure rPesquisa(var pStr: string);
    procedure rEvtImg(var pBmp: TBitmap);
  public
    DigitalReconhecida: boolean;
    { Public declarations }
  end;

var
  frmRecDig: TfrmRecDig;
  recDig_bmp: TBitmap;

implementation

uses DmPrincipal, MovimentoSemiAberto;

{$R *.dfm}
//------------------------------------------------------------------------------
// Rotina que irá pesquisar a digital
//------------------------------------------------------------------------------

procedure TfrmRecDig.rPesquisa(var pStr: string);
var
  lvLog: string;
  Probalidade: integer;
  sMensagem: array[0..1000] of Char;
  //------------------------------------------------------------------------------
  function fPesquisa_digitalBase(): boolean;
  var
    lvStr, lvNm, digital: string;
    lvIdx: integer;
    lvSc: integer;
  begin
    Result := false;
    Probalidade := 0;
    
    if ComboBoxdigital.ItemIndex = 0 then
      digital := 'CHAVE_POLEGAR_ESQUERDO'
    else if ComboBoxdigital.ItemIndex = 1 then
      digital := 'CHAVE_INDICADOR_ESQUERDO'
    else if ComboBoxdigital.ItemIndex = 2 then
      digital := 'CHAVE_MEDIO_ESQUERDO'
    else if ComboBoxdigital.ItemIndex = 3 then
      digital := 'CHAVE_ANELAR_ESQUERDO'
    else if ComboBoxdigital.ItemIndex = 4 then
      digital := 'CHAVE_MINIMO_ESQUERDO'
    else if ComboBoxdigital.ItemIndex = 5 then
      digital := 'CHAVE_POLEGAR_DIREITO'
    else if ComboBoxdigital.ItemIndex = 6 then
      digital := 'CHAVE_INDICADOR_DIREITO'
    else if ComboBoxdigital.ItemIndex = 7 then
      digital := 'CHAVE_MEDIO_DIREITO'
    else if ComboBoxdigital.ItemIndex = 8 then
      digital := 'CHAVE_ANELAR_DIREITO'
    else if ComboBoxdigital.ItemIndex = 9 then
      digital := 'CHAVE_MINIMO_DIREITO';

    frmmovimentosemiaberto.DsDigital.DataSet.first;
    while not frmmovimentosemiaberto.DsDigital.DataSet.eof do
    begin

      lvStr := frmmovimentosemiaberto.DsDigital.DataSet.fieldbyname(digital).asstring;

      prvBio.fIdentifica(lvStr, lvSc);
      if lvSc > Probalidade then
        Probalidade := lvSc;
      Result := (lvSc >= 60);
      DigitalReconhecida := false;
      if (Result = true) then
      begin
        DigitalReconhecida := true;
        break;
      end;

      frmmovimentosemiaberto.DsDigital.DataSet.Next;

    end;

  end;
begin
  if frmmovimentosemiaberto.DsDigital.tag = 1 then
    exit;
  frmmovimentosemiaberto.DsDigital.tag := 1;
  try
    lvLog := FormatDateTime('dd/MM/yyyy HH:mm:sss', now) + ' - ';
    if (fPesquisa_digitalBase()) then
    begin

      // coloque aqui outras informacoes
      mmLog.Lines.Add(lvLog + 'Digital identificada... (' + inttostr(Probalidade) + ')');
    //  mmLog.Lines.Add('Nome: ' + frmmovimentosemiaberto.DsDigital.DataSet.fieldbyname('NOME_INTERNO').asstring);

      //StrPCopy(sMensagem, 'Digital identificada, nome: ' + frmmovimentosemiaberto.DsDigital.DataSet.fieldbyname('NOME_INTERNO').asstring + '. Retornar?');

     // if Application.MessageBox(sMensagem,
      //  'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
      //begin
      close;
      //end;

    end
    else
    begin
      mmLog.Lines.Add(lvLog + 'Digital não identificada... (' + inttostr(Probalidade) + ')');
      imgDig.Picture := nil;
    end;
  except
  end;
  frmmovimentosemiaberto.DsDigital.tag := 0;
end;
//------------------------------------------------------------------------------
// Sair da tela
//------------------------------------------------------------------------------

procedure TfrmRecDig.btRetClick(Sender: TObject);
begin
  Close();
end;
//------------------------------------------------------------------------------
// Quando o formulario for criado
//------------------------------------------------------------------------------

procedure TfrmRecDig.FormCreate(Sender: TObject);
begin

  ComboBoxdigital.ItemIndex := 6;

  Panel2.Caption := 'Busca Biométrica Dedo ' + ComboBoxdigital.Text;

  if (not fGriauleLoadLib()) then
    ShowMessage('Falha ao carregar a DLL (GrFinger.dll)');

  BtnIniciarClick(nil);
end;
//------------------------------------------------------------------------------
// Quando o formulario for destruido
//------------------------------------------------------------------------------

procedure TfrmRecDig.FormDestroy(Sender: TObject);
begin

  BtnPararClick(nil);

end;

procedure TfrmRecDig.BtnIniciarClick(Sender: TObject);
begin

  BtnPararClick(nil);

  prvBio := TCompBio.Create(Self);
  prvBio.OnEvt := rPesquisa;
  prvBio.plPn01 := pnSts;
  prvBio.plPn02 := pnQual;
  prvBio.plBmp := recDig_bmp;
  prvBio.OnImg := rEvtImg;
  prvBio.fInitGrFinger();

  BtnIniciar.Enabled := false;
  BtnParar.Enabled := true;

end;

procedure TfrmRecDig.BtnPararClick(Sender: TObject);
begin
  BtnIniciar.Enabled := true;
  BtnParar.Enabled := false;
  if assigned(prvBio) then
  begin
    try
      prvBio.rFinalizeGrFinger();
      FreeAndNil(prvBio);
    except
    end;
  end;
end;

//------------------------------------------------------------------------------
// Evento de associacao da imagem
//------------------------------------------------------------------------------

procedure TfrmRecDig.rEvtImg(var pBmp: TBitmap);
begin
  imgDig.Picture.Bitmap.Assign(pBmp);
end;

procedure TfrmRecDig.ComboBoxdigitalClick(Sender: TObject);
begin
  Panel2.Caption := 'Busca Biométrica Dedo ' + ComboBoxdigital.Text;
end;

end.

