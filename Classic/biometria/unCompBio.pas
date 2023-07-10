//==============================================================================
// Componente de manipulação de impressão digital interface DLL Griaule
// Maiores informaçoes www.griaule.com.br
//==============================================================================
unit unCompBio;

interface

uses
  Windows, SysUtils, Classes, Graphics, ExtCtrls, dialogs;

procedure rGriauleFreeLib();
function fGriauleLoadLib(): boolean;
//==============================================================================
// GrFinger.pas
//==============================================================================
const
//******************************************************************************
//RETURN CODES
//******************************************************************************
//success
  GR_OK = 0;
  GR_BAD_QUALITY = 0;
  GR_MEDIUM_QUALITY = 1;
  GR_HIGH_QUALITY = 2;
  GR_MATCH = 1;
  GR_NOT_MATCH = 0;
  GR_DEFAULT_USED = 3;
//initialization errors codes
  GR_ERROR_INITIALIZE_FAIL = -1;
  GR_ERROR_NOT_INITIALIZED = -2;
  GR_ERROR_FAIL_LICENSE_READ = -3;
  GR_ERROR_NO_VALID_LICENSE = -4;
  GR_ERROR_NULL_ARGUMENT = -5;
  GR_ERROR_FAIL = -6;
  GR_ERROR_ALLOC = -7;
  GR_ERROR_PARAMETERS = -8;
//extract and match errors codes
  GR_ERROR_WRONG_USE = -107;
  GR_ERROR_EXTRACT = -108;
  GR_ERROR_SIZE_OFF_RANGE = -109;
  GR_ERROR_RES_OFF_RANGE = -110;
  GR_ERROR_CONTEXT_NOT_CREATED = -111;
  GR_ERROR_INVALID_CONTEXT = -112;
  GR_ERROR_ERROR = -113;
  GR_ERROR_NOT_ENOUGH_SPACE = -114;
//capture error codes
  GR_ERROR_CONNECT_SENSOR = -201;
  GR_ERROR_CAPTURING = -202;
  GR_ERROR_CANCEL_CAPTURING = -203;
  GR_ERROR_INVALID_ID_SENSOR = -204;
  GR_ERROR_SENSOR_NOT_CAPTURING = -205;
  GR_ERROR_INVALID_EXT = -206;
  GR_ERROR_INVALID_FILENAME = -207;
  GR_ERROR_INVALID_FILETYPE = -208;
  GR_ERROR_SENSOR = -209;
//******************************************************************************
//CONSTS
//******************************************************************************
//file format codes
  GRCAP_IMAGE_FORMAT_BMP = 501;
//event values codes
  GR_PLUG = 21;
  GR_UNPLUG = 20;
  GR_FINGER_DOWN = 11;
  GR_FINGER_UP = 10;
  GR_IMAGE = 30;
//image consts
  GR_DEFAULT_RES = 500;
  GR_DEFAULT_DIM = 500;
  GR_MAX_SIZE_TEMPLATE = 10000;
  GR_MAX_IMAGE_WIDTH = 1280;
  GR_MAX_IMAGE_HEIGHT = 1280;
  GR_MAX_RESOLUTION = 1000; // DPI
  GR_MIN_IMAGE_WIDTH = 50;
  GR_MIN_IMAGE_HEIGHT = 50;
  GR_MIN_RESOLUTION = 125; // DPI
//match const
  GR_MAX_THRESHOLD = 200;
  GR_MIN_THRESHOLD = 10;
  GR_VERYLOW_FRR = 30; // 1 IN 1000
  GR_LOW_FRR = 45; // 1 IN 10000
  GR_LOW_FAR = 60; // 1 IN 30000
  GR_VERYLOW_FAR = 80; // 1 IN 300000
  GR_ROT_MIN = 0;
  GR_ROT_MAX = 180;
//context const
  GR_DEFAULT_CONTEXT = 0;
  GR_NO_CONTEXT = -1;
//colors for BiometricDisplay
  GR_IMAGE_NO_COLOR = $1FFFFFFF;
//Version Constants
  GRFINGER_FULL = 1;
  GRFINGER_LIGHT = 2;
  GRFINGER_FREE = 3;
//******************************************************************************
//TYPE DEFINITIONS
//******************************************************************************
type
  GRCAP_STATUS_EVENTS = Integer;
  GRCAP_FINGER_EVENTS = Integer;
  GRCAP_IMAGE_FORMAT = Integer;
  LPHBitmap = ^HBITMAP;
  LPHDC = ^LongInt;
//******************************************************************************
//CALLBACK TYPES
//******************************************************************************
  GRCAP_STATUS_EVENT_PROC = procedure(idSensor: Pchar; event: GRCAP_STATUS_EVENTS); stdcall;
  GRCAP_FINGER_EVENT_PROC = procedure(idSensor: Pchar; event: GRCAP_FINGER_EVENTS); stdcall;
  GRCAP_IMAGE_EVENT_PROC = procedure(idSensor: PChar; width: Integer; height: Integer; rawImage: PChar; res: Integer); stdcall;
//******************************************************************************
// Functions - CAPTURE
//******************************************************************************
  TGrCapInitialize = function(StatusEventHandler: GRCAP_STATUS_EVENT_PROC): Integer; stdcall;
  TGrCapFinalize = function(): Integer; stdcall;
  TGrCapStartCapture = function(idSensor: PChar; FingerEventHandler: GRCAP_FINGER_EVENT_PROC; ImageEventHandler: GRCAP_IMAGE_EVENT_PROC): Integer; stdcall;
  TGrCapStopCapture = function(idSensor: PChar): Integer; stdcall;
  TGrCapRawImageToHandle = function(rawImage: PChar; width, height: Integer; hdc: HDC; var handle: HBITMAP): Integer; stdcall;
  TGrCapSaveRawImageToFile = function(rawImage: PChar; width, height: Integer; filename: string; imageFormat: GRCAP_IMAGE_FORMAT): Integer; stdcall;
  TGrCapLoadImageFromFile = function(filename: string; res: Integer): Integer; stdcall;
  TGrBiometricDisplay = function(templateQuery, rawImage: PChar; width, height, res: Integer; hdc: HDC; var handle: HBITMAP; context: Integer): Integer; stdcall;
//******************************************************************************
// Functions - EXTRACT
//******************************************************************************
  TGrExtract = function(rawimage: Pchar; width: Integer; height: Integer; res: Integer; tpt: PChar; var tptSize: Integer; context: Integer): Integer; stdcall;
//******************************************************************************
// Functions - MATCH
//******************************************************************************
  TGrInitialize = function: Integer; stdcall;
  TGrFinalize = function: Integer; stdcall;
  TGrCreateContext = function(var contextId: Integer): Integer; stdcall;
  TGrDestroyContext = function(contextId: Integer): Integer; stdcall;
  TGrVerify = function(queryTemplate: PChar; referenceTemplate: PChar; var verifyScore: Integer; context: Integer): Integer; stdcall;
  TGrIdentifyPrepare = function(templateQuery: PChar; context: Integer): Integer; stdcall;
  TGrIdentify = function(templateReference: PChar; var identifyScore: Integer; context: Integer): Integer; stdcall;
//******************************************************************************
// Functions - CONFIG
//******************************************************************************
  TGrSetIdentifyParameters = function(identifyThreshold: Integer; identifyRotationTolerance: Integer; context: Integer): Integer; stdcall;
  TGrSetVerifyParameters = function(verifyThreshold: Integer; verifyRotationTolerance: Integer; context: Integer): Integer; stdcall;
  TGrGetIdentifyParameters = function(var identifyThreshold: Integer; var identifyRotationTolerance: Integer; context: Integer): Integer; stdcall;
  TGrGetVerifyParameters = function(var verifyThreshold: Integer; var verifyRotationTolerance: Integer; context: Integer): Integer; stdcall;
  TGrSetBiometricDisplayColors = function(minutiaeColor, minutiaeMatchedColor: Integer; segmentColor, segmentMatchedColor: Integer; directionColor, directionMatchedColor: Integer): Integer; stdcall;
  TGrGetGrFingerVersion = function(var majorVersion: Byte; var minorVersion: Byte): Integer; stdcall;
//------------------------------------------------------------------------------
var
  GrCapInitialize: TGrCapInitialize;
  GrCapFinalize: TGrCapFinalize;
  GrCapStartCapture: TGrCapStartCapture;
  GrCapStopCapture: TGrCapStopCapture;
  GrCapRawImageToHandle: TGrCapRawImageToHandle;
  GrCapSaveRawImageToFile: TGrCapSaveRawImageToFile;
  GrCapLoadImageFromFile: TGrCapLoadImageFromFile;
  GrBiometricDisplay: TGrBiometricDisplay;
  GrExtract: TGrExtract;
  GrInitialize: TGrInitialize;
  GrFinalize: TGrFinalize;
  GrCreateContext: TGrCreateContext;
  GrDestroyContext: TGrDestroyContext;
  GrVerify: TGrVerify;
  GrIdentifyPrepare: TGrIdentifyPrepare;
  GrIdentify: TGrIdentify;
  GrSetIdentifyParameters: TGrSetIdentifyParameters;
  GrSetVerifyParameters: TGrSetVerifyParameters;
  GrGetIdentifyParameters: TGrGetIdentifyParameters;
  GrGetVerifyParameters: TGrGetVerifyParameters;
  GrSetBiometricDisplayColors: TGrSetBiometricDisplayColors;
  GrGetGrFingerVersion: TGrGetGrFingerVersion;
{*------------------------------------------------------------------------------
    Componente de interface com a DLL da Griaule
------------------------------------------------------------------------------*}
type
  TRetEvt = procedure(var pHex: string) of object;
  TEvtImg = procedure(var pBmp: TBitmap) of object;
  TCompBio = class(TComponent)
  private
    ttTp: PCHAR; // Template tpt
    ttSz: integer; // Template size
    riIm: PCHAR; // Raw Image
    riTm: integer; // Raw Image Tamanho
    riAt: integer; // Raw Image Altura
    riRs: integer; // Raw Image Resolucao

    FRetEvt: TRetEvt;
    FEvtImg: TEvtImg;

    function fTpValid(): boolean;

    procedure rLog(
      pAct: integer;
      pStr: string;
      pPn: integer);

    function fGetErro(pErr: Integer): string;
    function fExtractTemplate(): Integer;

    procedure rWriteEvent(
      pIdSen: PCHAR;
      pEvt: GRCAP_STATUS_EVENTS);

    procedure rPrintBioDisp(
      pBioDisp: boolean;
      pContext: Integer);

    procedure rImgCallback(
      pIdSen: PChar;
      pImgTm: Integer;
      pImgAl: Integer;
      pRawIm: PChar;
      pRawRs: Integer);

    function fInitializeGrCap(): Integer;

  public
    plPn01: TPanel;
    plPn02: TPanel;
//    plImg : TImage;
    plBmp: TBitmap;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy(); override;
    function fInitGrFinger(): integer;
    procedure rFinalizeGrFinger();
//    procedure   rImpDigToMS      (var pMS: TMemoryStream);
    function fImpDigToHex(): string;
    function fIdentifica(pStr: string; var pScore: integer): boolean;
    property OnEvt: TRetEvt read FRetEvt write FRetEvt;
    property OnImg: TEvtImg read FEvtImg write FEvtImg;
  end;


//==============================================================================
implementation

uses Lib;

const
  ERR_INVALID_ID = -998;
  ERR_INVALID_TEMPLATE = -997;

type
  TWriteEvent = procedure(
    pIdSen: PCHAR;
    pEvt: GRCAP_STATUS_EVENTS) of object;

  TImgCallback = procedure(
    pIdSen: PChar;
    pImgTm: Integer;
    pImgAl: Integer;
    pRawIm: PChar;
    pRawRs: Integer) of object;
var
  glWriteEvt: TWriteEvent; // Evento para o Log
  glImgCallBack: TImgCallback; // Evento para o CallBack image
  glLibGri: THandle; // Handle da DLL

//------------------------------------------------------------------------------
// Converte de HEX para string
//------------------------------------------------------------------------------

function fHexToStr(value: string): string;
const
  cteDec: array['0'..'f'] of SmallInt = (
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1,
    -1, 10, 11, 12, 13, 14, 15, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, 10, 11, 12, 13, 14, 15
    );
var
  lvIdx: integer;
  lvDi: string;
begin
  Result := '';
  for lvIdx := 1 to Length(value) do
  begin
    lvDi := lvDi + Copy(value, lvIdx, 1);
    if ((lvIdx mod 2) = 0) then
    begin
      if (lvDi = '00') then
        Result := Result + #0
      else
        Result := Result + Char((cteDec[PChar(lvDi)[0]] shl 4) + cteDec[PChar(lvDi)[1]]);
      lvDi := '';
    end
  end;
end;
//------------------------------------------------------------------------------
// Converte de String para HEX
//------------------------------------------------------------------------------

function fStrToHex(const pStr: string): string;
const
  cteDig: array[0..$F] of char = '0123456789ABCDEF';
var
  lvInd: integer;
  lvRet: string;
  lvByt: byte;
  lvRes: string;
begin
  for lvInd := 1 to Length(pStr) do
  begin
    lvByt := Ord(pStr[lvInd]);
    lvRes := cteDig[lvByt shr 4] + cteDig[lvByt and $F];
    lvRet := lvRet + lvRes;
  end;
  Result := lvRet;
end;

procedure rGriauleFreeLib();
begin
  if (glLibGri <> 0) then
    FreeLibrary(glLibGri);
end;
{*------------------------------------------------------------------------------
    Carrega DLL da Griaule
------------------------------------------------------------------------------*}

function fGriauleLoadLib(): boolean;
var
  lvCam: string;
begin

  if glLibGri <> 0 then
    Exit;

  if (CAMINHO_BIOMETRIA = '') then
    lvCam := ExtractFilePath(ParamStr(0)) + 'GrFinger.dll'
  else
    lvCam := CAMINHO_BIOMETRIA+ '\GrFinger.dll';

  glLibGri := LoadLibrary(PCHAR(lvCam));
  Result := false;
  if (glLibGri <> 0) then
  begin
    try
      @GrCapInitialize := GetProcAddress(glLibGri, '_GrCapInitialize@4');
      @GrCapFinalize := GetProcAddress(glLibGri, '_GrCapFinalize@0');
      @GrCapStartCapture := GetProcAddress(glLibGri, '_GrCapStartCapture@12');
      @GrCapStopCapture := GetProcAddress(glLibGri, '_GrCapStopCapture@4');
      @GrCapRawImageToHandle := GetProcAddress(glLibGri, '_GrCapRawImageToHandle@20');
      @GrCapSaveRawImageToFile := GetProcAddress(glLibGri, '_GrCapSaveRawImageToFile@20');
      @GrCapLoadImageFromFile := GetProcAddress(glLibGri, '_GrCapLoadImageFromFile@8');
      @GrBiometricDisplay := GetProcAddress(glLibGri, '_GrBiometricDisplay@32');
      @GrExtract := GetProcAddress(glLibGri, '_GrExtract@28');
      @GrInitialize := GetProcAddress(glLibGri, '_GrInitialize@0');
      @GrFinalize := GetProcAddress(glLibGri, '_GrFinalize@0');
      @GrCreateContext := GetProcAddress(glLibGri, '_GrCreateContext@4');
      @GrDestroyContext := GetProcAddress(glLibGri, '_GrDestroyContext@4');
      @GrVerify := GetProcAddress(glLibGri, '_GrVerify@16');
      @GrIdentifyPrepare := GetProcAddress(glLibGri, '_GrIdentifyPrepare@8');
      @GrIdentify := GetProcAddress(glLibGri, '_GrIdentify@12');
      @GrSetIdentifyParameters := GetProcAddress(glLibGri, '_GrSetIdentifyParameters@12');
      @GrSetVerifyParameters := GetProcAddress(glLibGri, '_GrSetVerifyParameters@12');
      @GrGetIdentifyParameters := GetProcAddress(glLibGri, '_GrGetIdentifyParameters@12');
      @GrGetVerifyParameters := GetProcAddress(glLibGri, '_GrGetVerifyParameters@12');
      @GrSetBiometricDisplayColors := GetProcAddress(glLibGri, '_GrSetBiometricDisplayColors@24');
      @GrGetGrFingerVersion := GetProcAddress(glLibGri, '_GrGetGrFingerVersion@8');
      Result := true;
    except
      Result := false;
    end;
  end;
end;
{*------------------------------------------------------------------------------
    This Function is called every time a finger is placed or removed from sensor.
------------------------------------------------------------------------------*}

procedure rFingerCallback(
  pIdSen: Pchar;
  pEvt: GRCAP_FINGER_EVENTS); stdcall;
begin
  if (Assigned(glWriteEvt)) then
    glWriteEvt(pIdSen, pEvt);
end;
{*------------------------------------------------------------------------------
    Callback da imagem
------------------------------------------------------------------------------*}

procedure rImgCallback(
  pIdSen: PChar;
  pImgTm: Integer;
  pImgAl: Integer;
  pRawIm: PChar;
  pRawRs: Integer); stdcall;
begin
  if (Assigned(glImgCallBack)) then
    glImgCallBack(pIdSen, pImgTm, pImgAl, pRawIm, pRawRs);
end;
{*------------------------------------------------------------------------------
    Callback do status
------------------------------------------------------------------------------*}

procedure rStatusCallback(
  pIdSen: PCHAR;
  pEvt: GRCAP_STATUS_EVENTS); stdcall;
begin
  if (Assigned(glWriteEvt)) then
    glWriteEvt(pIdSen, pEvt);
  if (pEvt = GR_PLUG) then
    GrCapStartCapture(pIdSen, @rFingerCallback, @rImgCallBack)
  else if (pEvt = GR_UNPLUG) then
    GrCapStopCapture(pIdSen);
end;
{*------------------------------------------------------------------------------
    Quando o componente for criado
------------------------------------------------------------------------------*}

constructor TCompBio.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ttTp := AllocMem(GR_MAX_SIZE_TEMPLATE);
  ttSz := 0;
end;
{*------------------------------------------------------------------------------
    Quando o componente for destruido
------------------------------------------------------------------------------*}

destructor TCompBio.Destroy();
begin
  inherited Destroy;
  FreeMemory(ttTp);
end;
{*------------------------------------------------------------------------------
    Verifica se o template eh valido
------------------------------------------------------------------------------*}

function TCompBio.fTpValid(): boolean;
begin
  Result := ((ttSz > 0) and (ttTp <> nil));
end;
{*------------------------------------------------------------------------------
        Log no Painel
------------------------------------------------------------------------------*}

procedure TCompBio.rLog(
  pAct: integer;
  pStr: string;
  pPn: integer);
var
  lvPn: TPanel;
begin
  lvPn := nil;
  if ((pPn = 0) and (plPn01 <> nil)) then
    lvPn := plPn01;
  if ((pPn = 1) and (plPn02 <> nil)) then
    lvPn := plPn02;
  if (lvPn <> nil) then
  begin
    case pAct of
      0: lvPn.Font.Color := clNavy;
      1: lvPn.Font.Color := clGreen;
      2: lvPn.Font.Color := clRed;
    end;
    lvPn.Caption := pStr;
  end;
end;
{*------------------------------------------------------------------------------
    Retorna o Erro da DLL
------------------------------------------------------------------------------*}

function TCompBio.fGetErro(pErr: Integer): string;
begin
  case pErr of
    GR_ERROR_INITIALIZE_FAIL: Result := 'Falha ao inicializar GrFinger.';
    GR_ERROR_NOT_INITIALIZED: Result := 'A DLL GrFinger não inicializou';
    GR_ERROR_FAIL_LICENSE_READ: Result := 'Licença não encontrada.';
    GR_ERROR_NO_VALID_LICENSE: Result := 'Licença não é valida.';
    GR_ERROR_NULL_ARGUMENT: Result := 'The parameter have a null value.';
    GR_ERROR_FAIL: Result := 'Fail to create a GDI object.';
    GR_ERROR_ALLOC: Result := 'Fail to create a context. Cannot allocate memory.';
    GR_ERROR_PARAMETERS: Result := 'One or more parameters are out of bound.';
    GR_ERROR_WRONG_USE: Result := 'This function cannot be called at this time.';
    GR_ERROR_EXTRACT: Result := 'glTemp Extraction failed.';
    GR_ERROR_SIZE_OFF_RANGE: Result := 'Image is too larger or too short.';
    GR_ERROR_RES_OFF_RANGE: Result := 'Image have too low or too high resolution.';
    GR_ERROR_CONTEXT_NOT_CREATED: Result := 'The Context could not be created.';
    GR_ERROR_INVALID_CONTEXT: Result := 'The Context does not exist.';
    GR_ERROR_CONNECT_SENSOR: Result := 'Error while connection to sensor.';
    GR_ERROR_CAPTURING: Result := 'Error while capturing from sensor.';
    GR_ERROR_CANCEL_CAPTURING: Result := 'Error while stop capturing from sensor.';
    GR_ERROR_INVALID_ID_SENSOR: Result := 'The idSensor is invalid.';
    GR_ERROR_SENSOR_NOT_CAPTURING: Result := 'The sensor is not capturing.';
    GR_ERROR_INVALID_EXT: Result := 'The File have a unknown extension.';
    GR_ERROR_INVALID_FILENAME: Result := 'The filename is invalid.';
    GR_ERROR_INVALID_FILETYPE: Result := 'The file type is invalid.';
    GR_ERROR_SENSOR: Result := 'The sensor raise an error.';
    ERR_INVALID_TEMPLATE: Result := 'Invalid glTemp.';
    ERR_INVALID_ID: Result := 'Invalid ID.';
  end;
  Result := Trim(Result + ' Error: ' + IntToStr(pErr));
end;
{*------------------------------------------------------------------------------
  Executa o "extract" do template
------------------------------------------------------------------------------*}

function TCompBio.fExtractTemplate(): Integer;
var
  lvRet: Integer;
begin
  ttSz := GR_MAX_SIZE_TEMPLATE;
  lvRet := GrExtract(riIm, riTm, riAt, riRs, ttTp, ttSz, GR_DEFAULT_CONTEXT);
  if (lvRet < 0) then
    ttSz := 0;
  Result := lvRet;
end;
//------------------------------------------------------------------------------
// Escreve as mensagens
//------------------------------------------------------------------------------

procedure TCompBio.rWriteEvent(
  pIdSen: PCHAR;
  pEvt: GRCAP_STATUS_EVENTS);
var
  lvStr: string;
begin
  case pEvt of
    GR_PLUG: lvStr := '** Sensor Conectado **';
    GR_UNPLUG: lvStr := '** Sensor Desconectado **';
    GR_FINGER_DOWN: lvStr := '** Lendo Impressão Digital **';
    GR_FINGER_UP: lvStr := '** Impressão Digital Capturada **';
    GR_IMAGE: lvStr := '** Imagem Capturada **';
  else
    lvStr := IntToStr(pEvt);
  end;
  if (lvStr <> '') then
  begin
    if (plPn01 <> nil) then
      plPn01.Caption := lvStr;
  end;
end;
{*------------------------------------------------------------------------------
    Display fingerprint image on screen
------------------------------------------------------------------------------*}

procedure TCompBio.rPrintBioDisp(
  pBioDisp: boolean;
  pContext: Integer);
var
  lvHwnd: HBitmap;
  lvHdc: LongInt;
  lvBmp: TBitmap;
begin
  lvBmp := TBitmap.Create();
  lvBmp.FreeImage();
//    plImg.Picture.Bitmap.FreeImage();
  lvHwnd := lvBmp.ReleaseHandle();
  DeleteObject(lvHwnd);
    {If range checking is on - turn it off for now
       we will remember if range checking was on by defining
       a define called CKRANGE if range checking is on.
       We do this to access array members past the arrays
       defined index range without causing a range check
       error at runtime. To satisfy the compiler, we must
       also access the indexes with a variable. ie: if we
       have an array defined as a: array[0..0] of byte,
       and an integer i, we can now access a[3] by setting
       i := 3; and then accessing a[i] without error}
{$IFOPT R+}
{$DEFINE CKRANGE}
{$R-}
{$ENDIF}
  lvHdc := GetDC(HWND(nil));
  if (pBioDisp) then
    GrBiometricDisplay(ttTp, riIm, riTm, riAt, riRs, lvHdc, lvHwnd, pContext)
  else
    GrCapRawImageToHandle(riIm, riTm, riAt, lvHdc, lvHwnd);
  try
    if (lvHwnd <> 0) then
    begin
      lvBmp.Handle := lvHwnd;
      if ((pBioDisp = false) and (plBmp <> nil)) then
        plBmp.Assign(lvBmp);
      if (Assigned(FEvtImg)) then
        FEvtImg(lvBmp);
    end;
  except
  end;
  ReleaseDC(HWND(nil), lvHdc);
  FreeAndNil(lvBmp);
{$IFDEF CKRANGE}
{$UNDEF CKRANGE}
{$R+}
{$ENDIF}
end;
{*------------------------------------------------------------------------------
    Callback image
------------------------------------------------------------------------------*}

procedure TCompBio.rImgCallback(
  pIdSen: PChar;
  pImgTm: Integer;
  pImgAl: Integer;
  pRawIm: PChar;
  pRawRs: Integer);
//------------------------------------------------------------------------------
  procedure rExtract();
  var
    lvRet: Integer;
    lvST: TStringStream;
    lvStr: string;
  begin
    lvRet := fExtractTemplate();
    if (lvRet = GR_BAD_QUALITY) then
      rLog(2, 'Qualidade da imagem baixa.', 1)
    else if (lvRet = GR_MEDIUM_QUALITY) then
      rLog(0, 'Qualidade da imagem média.', 1)
    else if (lvRet = GR_HIGH_QUALITY) then
      rLog(1, 'Qualidade da imagem alta.', 1);
    if (lvRet >= 0) then
    begin
      rPrintBioDisp(true, GR_NO_CONTEXT);
      if (Assigned(FRetEvt)) then
      begin
        lvST := TStringStream.Create('');
        lvST.write(ttTp^, ttSz);
        lvStr := fStrToHex(lvST.DataString);
        FreeAndNil(lvST);
        FRetEvt(lvStr);
      end;
    end
    else
      rLog(2, fGetErro(lvRet), 0);
  end;
//------------------------------------------------------------------------------
begin
  riTm := pImgTm;
  riAt := pImgAl;
  riRs := pRawRs;
  Move(pRawIm^, riIm^, pImgTm * pImgAl);
  rWriteEvent(pIdSen, GR_IMAGE);
  rPrintBioDisp(false, GR_DEFAULT_CONTEXT);
  rExtract();
end;
{*------------------------------------------------------------------------------
  Inicializa a captura
------------------------------------------------------------------------------*}

function TCompBio.fInitializeGrCap(): Integer;
begin
  glWriteEvt := rWriteEvent;
  glImgCallBack := rImgCallback;
  Result := GrCapInitialize(@rStatusCallback);
end;
{*------------------------------------------------------------------------------
    Inicializa do GrFinger
------------------------------------------------------------------------------*}

function TCompBio.fInitGrFinger(): integer;
var
  lvErr: Integer;
begin
  riIm := AllocMem(GR_MAX_IMAGE_HEIGHT * GR_MAX_IMAGE_WIDTH);
  if (glLibGri <> 0) then
  begin
    try
      lvErr := GrInitialize();
    finally
    end;
    if (lvErr < 0) then
      Result := lvErr
    else
      Result := fInitializeGrCap();
    if (Result < 0) then
      rLog(2, fGetErro(lvErr), 0)
    else
      rLog(0, '** Inicialização concluída **', 0);
  end
  else
  begin
    rLog(0, '** Falha ao iniciar DLL **', 0);
    Result := -1;
  end;
end;
{*------------------------------------------------------------------------------
    Finaliza o GRFinger
------------------------------------------------------------------------------*}

procedure TCompBio.rFinalizeGrFinger();
begin
  try
    if (glLibGri <> 0) then
    begin
      GrCapFinalize();
      GrFinalize();
    end;

    FreeMemory(riIm);
  except
  end;
end;
{*------------------------------------------------------------------------------

------------------------------------------------------------------------------*}
{procedure TCompBio.rImpDigToMS(var pMS: TMemoryStream);
var
  lvMS: TMemoryStream;
begin
    lvMS := TMemoryStream.Create();
    lvMS.write(ttTp^, ttSz);
    pMS.LoadFromStream(lvMS);
    FreeAndNil(lvMS);
end;}
{*------------------------------------------------------------------------------

------------------------------------------------------------------------------*}

function TCompBio.fImpDigToHex(): string;
var
  lvST: TStringStream;
begin
  lvST := TStringStream.Create('');
  lvST.write(ttTp^, ttSz);
  Result := fStrToHex(lvST.DataString);
  FreeAndNil(lvST);
end;
{*------------------------------------------------------------------------------
    Identifica a digital
    @param pStr Protocolo de identificação
    @param pScore Retorna o score da digital (Nivel de acerto)
------------------------------------------------------------------------------*}

function TCompBio.fIdentifica(pStr: string; var pScore: integer): boolean;
var
  lvRet, lvSz: integer;
  lvStr: string;
  lvTp: PCHAR;
begin
  if (fTpValid() = false) then
    Result := false
  else
  begin
    lvRet := GrIdentifyPrepare(ttTp, GR_DEFAULT_CONTEXT);
    if (lvRet < 0) then
      Result := false
    else
    begin
      lvStr := fHexToStr(pStr);
      lvSz := Length(lvStr);
      lvTp := AllocMem(GR_MAX_SIZE_TEMPLATE);
      Move(PChar(lvStr)^, lvTp^, lvSz);
      lvRet := GrIdentify(lvTp, pScore, GR_DEFAULT_CONTEXT);
      if (lvRet = GR_MATCH) then
        Result := true
      else
        Result := false;
      FreeMemory(lvTp);
    end;
  end;
end;
//==============================================================================
// GrFinger.pas
//==============================================================================
initialization

finalization

  rGriauleFreeLib();
end.

