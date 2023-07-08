unit Maps_Google;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSHTML, ActiveX, OleCtrls, SHDocVw, StdCtrls, DBCtrls, ExtCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TFrmMapas_Google = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Button1: TButton;
    Memoendereco: TMemo;
    SqlInterno: TSQLQuery;
    DspInterno: TDataSetProvider;
    CdsInterno: TClientDataSet;
    DsInterno: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
    HTMLWindow2: IHTMLWindow2;
  public
    { Public declarations }
  end;

var
  FrmMapas_Google: TFrmMapas_Google;

implementation

uses DmPrincipal;

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

procedure TFrmMapas_Google.FormCreate(Sender: TObject);
var
  aStream: TMemoryStream;
begin
  WebBrowser1.Navigate('about:blank');
  if Assigned(WebBrowser1.Document) then
  begin
    aStream := TMemoryStream.Create;
    try
      aStream.WriteBuffer(Pointer(HTMLStr)^, Length(HTMLStr));
      aStream.Seek(0, soFromBeginning);
      (WebBrowser1.Document as IPersistStreamInit)
        .Load(TStreamAdapter.Create(aStream));
    finally
      aStream.Free;
    end;
    HTMLWindow2 := (WebBrowser1.Document as IHTMLDocument2).parentWindow;
  end;

  DsInterno.DataSet.close;
  DsInterno.DataSet.Open;

  WebBrowser1.Visible := false;

end;

procedure TFrmMapas_Google.Button1Click(Sender: TObject);
var
  address: string;
begin

  if trim(Memoendereco.Text) <> '' then
  begin
    WebBrowser1.Visible := true;
    address := Memoendereco.Lines.Text;
    address := StringReplace(StringReplace(Trim(address), #13, ' ', [rfReplaceAll]
      ), #10, ' ', [rfReplaceAll]);
    HTMLWindow2.execScript(Format('codeAddress(%s)', [QuotedStr(address)]),
      'JavaScript');
  end
  else
  begin
    Showmessage('Informe um endereço.');
  end;

end;

procedure TFrmMapas_Google.Button2Click(Sender: TObject);
begin
  Memoendereco.Text := DsInterno.DataSet.fieldbyname('endereco').asstring;
end;

procedure TFrmMapas_Google.DBLookupComboBox1Click(Sender: TObject);
begin

  if trim(DsInterno.DataSet.fieldbyname('endereco').asstring) = '' then
  begin
    Showmessage('Interno sem endereço.');
    Memoendereco.Text := '';
  end
  else
  begin
    Memoendereco.Text := DsInterno.DataSet.fieldbyname('endereco').asstring;
  end;

end;

end.

