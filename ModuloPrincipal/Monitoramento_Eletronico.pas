unit Monitoramento_Eletronico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSHTML, ActiveX, OleCtrls, SHDocVw, StdCtrls, DBCtrls, ExtCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Buttons, Mask, dbcgrids, Menus,
  jpeg, ComCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Urlmon, WinInet;

type
  TFrmMonitoramento_Eletronico = class(TForm)
    PnlTitulo: TPanel;
    SqlInterno: TSQLQuery;
    DspInterno: TDataSetProvider;
    CdsInterno: TClientDataSet;
    DsInterno: TDataSource;
    PnlDados: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    DBImage1: TDBImage;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    BtnTelaCheia: TButton;
    PnlLista: TPanel;
    Button3: TButton;
    SqlLista: TSQLQuery;
    DspLista: TDataSetProvider;
    CdsLista: TClientDataSet;
    DsLista: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    DBImage2: TDBImage;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel1: TPanel;
    ChTipoMonitoracao: TCheckBox;
    Button1: TButton;
    DSHISTORICO_interno: TDataSource;
    CDSHISTORICO_interno: TClientDataSet;
    DSPHISTORICO_interno: TDataSetProvider;
    SQLHISTORICO_interno: TSQLQuery;
    LabelSelecionados: TLabel;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label5: TLabel;
    DBText6: TDBText;
    Timer1: TTimer;
    CkAtualizaSite: TCheckBox;
    PopupMenu1: TPopupMenu;
    Selecionar1: TMenuItem;
    Label4: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    BtnLegenda: TButton;
    PnlLegenda: TPanel;
    ImgLegenda: TImage;
    Animate1: TAnimate;
    WebBrowser1: TWebBrowser;
    IdHTTP1: TIdHTTP;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnTelaCheiaClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBImage2DblClick(Sender: TObject);
    procedure DBText1DblClick(Sender: TObject);
    procedure DBText2DblClick(Sender: TObject);
    procedure ChTipoMonitoracaoClick(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Selecionar1Click(Sender: TObject);
    procedure ImgLegendaClick(Sender: TObject);
    procedure WebBrowser1DownloadBegin(Sender: TObject);
    procedure WebBrowser1DownloadComplete(Sender: TObject);
  private
    { Private declarations }
    HTMLWindow2: IHTMLWindow2;
    function IsValidUrl(const Url: string): Boolean;
  public
    procedure MonitorarAgora();
    { Public declarations }
  end;

var
  FrmMonitoramento_Eletronico: TFrmMonitoramento_Eletronico;

implementation

uses DmPrincipal, Lib, MenuRelatorio, CadastroInternoJuridico,
  HistoricoPadrao, WebBrowser;

{$R *.dfm}

const
  HTMLStr: AnsiString = '<html> ' + '<head> ' +
  '<meta name="viewport" content="initial-scale=1.0, user-scalable=yes" /> ' +
    '<script type="text/javascript" src= ' +
    '"http://maps.google.com/maps/api/js?sensor=true"></script> '
    + '<script type="text/javascript"> ' + '' + '' + '  var geocoder; ' +
    '  var map;  ' + '  var trafficLayer;' + '  var bikeLayer;' +
    '  var markersArray = [];' + '' + '' + '  function initialize() { ' +
    '    geocoder = new google.maps.Geocoder();' +
    '    var latlng = new google.maps.LatLng(-23.563596,-46.653883); ' +
    '    var myOptions = { ' + '      zoom: 13, ' + '      center: latlng, ' +
    '      mapTypeId: google.maps.MapTypeId.ROADMAP ' + '    }; ' +
    '    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions); '
    + '    trafficLayer = new google.maps.TrafficLayer();' +
    '    bikeLayer = new google.maps.BicyclingLayer();' +
    '    map.set("streetViewControl", false);' + '  } ' + '' + '' +
    '  function codeAddress(address) { ' + '    if (geocoder) {' +
    '      geocoder.geocode( { address: address}, function(results, status) { '
    + '        if (status == google.maps.GeocoderStatus.OK) {' +
    '          map.setCenter(results[0].geometry.location);' +
    '          PutMarker(results[0].geometry.location.lat(), results[0].geometry.location.lng(),' +
    'results[0].geometry.location.lat()+","+results[0].geometry.location.lng());'
    + '        } else {' +
    '          alert("Geocode was not successful for the following reason: " + status);'
    + '        }' + '      });' + '    }' + '  }' + '' + '' +
    '  function GotoLatLng(Lat, Lang) { ' +
    '   var latlng = new google.maps.LatLng(Lat,Lang);' +
    '   map.setCenter(latlng);' + '   PutMarker(Lat, Lang, Lat+","+Lang);' +
    '  }' + '' + '' + 'function ClearMarkers() {  ' +
    '  if (markersArray) {        ' + '    for (i in markersArray) {  ' +
    '      markersArray[i].setMap(null); ' + '    } ' + '  } ' + '}  ' + '' +
    '  function PutMarker(Lat, Lang, Msg) { ' +
    '   var latlng = new google.maps.LatLng(Lat,Lang);' +
    '   var marker = new google.maps.Marker({' + '      position: latlng, ' +
    '      map: map,' + '      title: Msg+" ("+Lat+","+Lang+")"' + '  });' +
    ' markersArray.push(marker); ' + '  }' + '' + '' +
    '  function TrafficOn()   { trafficLayer.setMap(map); }' + '' +
    '  function TrafficOff()  { trafficLayer.setMap(null); }' + '' + '' +
    '  function BicyclingOn() { bikeLayer.setMap(map); }' + '' +
    '  function BicyclingOff(){ bikeLayer.setMap(null);}' + '' +
    '  function StreetViewOn() { map.set("streetViewControl", true); }' + '' +
    '  function StreetViewOff() { map.set("streetViewControl", false); }' + '' +
    '' + '</script> ' + '</head> ' + '<body onload="initialize()"> ' +
    '  <div id="map_canvas" style="width:100%; height:100%"></div> ' +
    '</body> ' + '</html> ';

function TFrmMonitoramento_Eletronico.IsValidUrl(const Url: string): Boolean;
var
  hSession, hFile: hInternet;
  dwIndex, dwCodeLen: dword;
  dwCode: array[1..20] of char;
  vRes: Pchar;
begin
  Result := False;

  hSession := InternetOpen('InetURL:/1.0',
    INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);

  if (Assigned(hsession)) then
  begin

    hfile := InternetOpenUrl(hSession, Pchar(Url), nil, 0, INTERNET_FLAG_RELOAD, 0);
    dwIndex := 0;
    dwCodeLen := 10;

    HttpQueryInfo(hFile, HTTP_QUERY_STATUS_CODE, @dwCode, dwCodeLen, dwIndex);
    vRes := Pchar(@dwCode);

    Result := (vRes = '200') or (vRes = '302');

    if (Assigned(hFile)) then
      InternetCloseHandle(hFile);

    InternetCloseHandle(hSession);
  end;
end;


procedure TFrmMonitoramento_Eletronico.BitBtn1Click(Sender: TObject);
begin

  GLOBAL_WEBBROWSER := 'https://sac24.com.br';

  FrmWebBrowser := TFrmWebBrowser.Create(Self);
  FrmWebBrowser.ShowModal;
  FreeAndNil(FrmWebBrowser);

end;

procedure TFrmMonitoramento_Eletronico.FormShow(Sender: TObject);
var
  aStream: TMemoryStream;
begin

  if FileExists('monitoramento.jpg') then
    Image1.Picture.LoadFromFile('monitoramento.jpg');


  DsLista.DataSet.close;
  DsLista.DataSet.Open;

  DsInterno.DataSet.close;
  DsInterno.DataSet.Open;

  DSHISTORICO_interno.DataSet.close;
  DSHISTORICO_interno.DataSet.Open;

  MonitorarAgora();

  ImgLegendaClick(nil);

end;

procedure TFrmMonitoramento_Eletronico.BtnTelaCheiaClick(Sender: TObject);
begin

  if BtnTelaCheia.Caption = 'Tela Cheia' then
  begin
    PnlDados.Visible := false;
    PnlLista.Visible := false;
    BtnTelaCheia.Caption := 'Tela Opções';
  end
  else
  begin
    PnlDados.Visible := true;
    PnlLista.Visible := true;
    BtnTelaCheia.Caption := 'Tela Cheia';
  end;

end;

procedure TFrmMonitoramento_Eletronico.Button3Click(Sender: TObject);
var sMens: string;
begin

  sMens := InputBox('Registro de contato:', 'Digite o conteudo:', '');
  if trim(sMens) = '' then
    exit;

  IniciaTransMovimento;

  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('SETOR').AsString := 'Monitoração: Registro de Contato';
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsLista.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := Now;
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString :=
    'Registro de contato do Funcionário: ' + GLOBAL_NOME_FUNCIONARIO_LOGADO + '.'
    + #13#10 + ' - '
    + #13#10 + formatdatetime('dd/mm/yyyy hh:mm', now) + ': ' +
    sMens;
  DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'T';
  DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := GLOBAL_ID_UP;
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;

  CDSHISTORICO_interno.ApplyUpdates(-1);

  FinalizaTransMovimento;

  ShowMessage('Registrado com sucesso.');

end;

procedure TFrmMonitoramento_Eletronico.Button1Click(Sender: TObject);
var sMens: string;
begin

  sMens := InputBox('Registro de contato:', 'Digite o conteudo:', '');

  if trim(sMens) = '' then
    exit;

  IniciaTransMovimento;

  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('SETOR').AsString := 'Monitoração: Registro de Alarme';
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsInterno.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := Now;
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString :=
    'Registro de alarme pelo o Funcionário: ' + GLOBAL_NOME_FUNCIONARIO_LOGADO + '.'
    + #13#10 + formatdatetime('dd/mm/yyyy hh:mm', now) + ': ' +
    sMens;
  DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'T';
  DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := GLOBAL_ID_UP;
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;
  DM.SQLConnect.ExecuteDirect('EXECUTE PROCEDURE set_context(' + inttostr(GLOBAL_ID_FUNCIONARIO) + ')');
  CDSHISTORICO_interno.ApplyUpdates(-1);

  FinalizaTransMovimento;

  ShowMessage('Registrado com sucesso.');

end;

procedure TFrmMonitoramento_Eletronico.MonitorarAgora();
var sMonitorado: string;
begin

//  screen.Cursor := crSQLWait;

  try
    with DsLista.dataset do
    begin

      if ChTipoMonitoracao.Checked then
      begin

        DisableControls;
        first;
        sMonitorado := '';
        while not eof do
        begin
          if sMonitorado = '' then
            sMonitorado := fieldbyname('ID_ME').asstring
          else
            sMonitorado := sMonitorado + ',' + fieldbyname('ID_ME').asstring;
          next;
        end;

        first;
        EnableControls;

      end
      else
      begin
        sMonitorado := fieldbyname('ID_ME').asstring;
      end;

      if LabelSelecionados.Caption <> 'Obs: Duplo click mostra apenas um.' then
        sMonitorado := LabelSelecionados.Caption;

      if GLOBAL_SPACECOM = '' then
        GLOBAL_SPACECOM := 'https://www.sac24.com.br';

      if not IsValidUrl(GLOBAL_SPACECOM) then
      begin
        GLOBAL_SPACECOM := 'https://www2.sac24.com.br';
        if not IsValidUrl(GLOBAL_SPACECOM) then
        begin
          GLOBAL_SPACECOM := 'https://www3.sac24.com.br';
          if not IsValidUrl(GLOBAL_SPACECOM) then
            GLOBAL_SPACECOM := 'https://www4.sac24.com.br';
        end;
      end;

      WebBrowser1.Navigate(GLOBAL_SPACECOM + '/sac_api.xhtml?func=getMonitoramentoAll&host=TESTEMJ&auth=TESTEMJ&monitorado=' + sMonitorado);

      WebBrowser1.Visible := false;

    end;

  except
  end;

//  screen.Cursor := crDefault;


end;

procedure TFrmMonitoramento_Eletronico.DBImage2DblClick(Sender: TObject);
begin
  ChTipoMonitoracao.Checked := false;
  LabelSelecionados.Caption := 'Obs: Duplo click mostra apenas um.';
  MonitorarAgora();
end;

procedure TFrmMonitoramento_Eletronico.DBText1DblClick(Sender: TObject);
begin
  ChTipoMonitoracao.Checked := false;
  LabelSelecionados.Caption := 'Obs: Duplo click mostra apenas um.';
  MonitorarAgora();
end;

procedure TFrmMonitoramento_Eletronico.DBText2DblClick(Sender: TObject);
begin
  ChTipoMonitoracao.Checked := false;
  LabelSelecionados.Caption := 'Obs: Duplo click mostra apenas um.';
  MonitorarAgora();
end;

procedure TFrmMonitoramento_Eletronico.ChTipoMonitoracaoClick(
  Sender: TObject);
begin
  if ChTipoMonitoracao.Checked then
  begin
    LabelSelecionados.Caption := 'Obs: Duplo click mostra apenas um.';
    MonitorarAgora();
  end;
end;

procedure TFrmMonitoramento_Eletronico.DBImage1DblClick(Sender: TObject);
begin

  ChTipoMonitoracao.Checked := false;
  LabelSelecionados.Caption := 'Obs: Duplo click mostra apenas um.';
  MonitorarAgora();

end;

procedure TFrmMonitoramento_Eletronico.Button2Click(Sender: TObject);
begin

  try

    if not DirectoryExists(GLOBAL_PATCH_SISTEMA + '\Específicos\') then
      CreateDir(GLOBAL_PATCH_SISTEMA + '\Específicos\');

    PATH_MOMENTO := GLOBAL_PATCH_SISTEMA + '\Específicos\' + trim(copy(self.Name, 4, 100)) + '\';
    if not DirectoryExists(PATH_MOMENTO) then
      CreateDir(PATH_MOMENTO);

    FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
    FrmMenuRelatorio.Caption := 'Relatórios de Monitoração Eletronica';
    FrmMenuRelatorio.ShowModal;
    FreeAndNil(FrmMenuRelatorio);

  except

  end;

  PATH_MOMENTO := '';

  SetCurrentDir(GLOBAL_PATCH_SISTEMA);

end;

procedure TFrmMonitoramento_Eletronico.Button4Click(Sender: TObject);
begin

  if not (DsLista.DataSet.State in [dsedit, dsinsert]) then
  begin
    if not (DsLista.DataSet.IsEmpty) then
    begin
      FrmCadastroInternoJuridico := TFrmCadastroInternoJuridico.Create(Application);
      FrmCadastroInternoJuridico.ID_INTERNO := DsLista.Dataset.FieldByname('ID_INTERNO').AsInteger;
      FrmCadastroInternoJuridico.ShowModal;
      freeandnil(FrmCadastroInternoJuridico);
    end;
  end;


end;

procedure TFrmMonitoramento_Eletronico.Button5Click(Sender: TObject);
begin

  if not (DsLista.DataSet.State in [dsedit, dsinsert]) then
  begin
    if not (DsLista.DataSet.IsEmpty) then
    begin
      Frmhistoricopadrao := TFrmhistoricopadrao.Create(Application);
      Frmhistoricopadrao.ID_INTERNO := DsLista.Dataset.FieldByname('ID_INTERNO').AsInteger;
      Frmhistoricopadrao.ShowModal;
      freeandnil(Frmhistoricopadrao);
    end;
  end;


end;

procedure TFrmMonitoramento_Eletronico.Timer1Timer(Sender: TObject);
begin
  try

    if CkAtualizaSite.Checked then
      WebBrowser1.Refresh;

  except
  end;

end;

procedure TFrmMonitoramento_Eletronico.Selecionar1Click(Sender: TObject);
begin

  if ContemValor(DsLista.dataset.fieldbyname('ID_ME').asstring, LabelSelecionados.Caption) then
  begin
    showmessage('Monitorado já selecionado: ' + DsLista.dataset.fieldbyname('ID_ME').asstring);
    exit;
  end;

  if LabelSelecionados.Caption = 'Obs: Duplo click mostra apenas um.' then
    LabelSelecionados.Caption := DsLista.dataset.fieldbyname('ID_ME').asstring
  else
  begin
    LabelSelecionados.Caption := LabelSelecionados.Caption + ',' + DsLista.dataset.fieldbyname('ID_ME').asstring;
  end;

  ChTipoMonitoracao.Checked := False;

  MonitorarAgora();


end;

procedure TFrmMonitoramento_Eletronico.ImgLegendaClick(Sender: TObject);
begin

  if PnlLegenda.Height <> 63 then
    PnlLegenda.Height := 63
  else
    PnlLegenda.Height := 205;

  PnlLegenda.Refresh;

end;

procedure TFrmMonitoramento_Eletronico.WebBrowser1DownloadBegin(
  Sender: TObject);
begin
  if FileExists(Animate1.FileName) then
    Animate1.Active := True;
end;

procedure TFrmMonitoramento_Eletronico.WebBrowser1DownloadComplete(
  Sender: TObject);
begin
  Animate1.Active := false;
end;

end.

