unit FrmCapturaBiometria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, StdCtrls, DBCtrls,
  jpeg, ExtCtrls, Buttons;

type
  TFrmCapturaBiometrica = class(TForm)
    Dsdigital: TDataSource;
    CDSdigital: TClientDataSet;
    DSPdigital: TDataSetProvider;
    SQLdigital: TSQLQuery;
    Imagepolegaresquerdo: TImage;
    Imageindicadoresquerdo: TImage;
    Imagemedioesquerdo: TImage;
    Imageminimoesquerdo: TImage;
    Imageanelaresquerdo: TImage;
    Imageanelardireito: TImage;
    Imagemediodireito: TImage;
    Imageindicadordireito: TImage;
    Imagepolegardireito: TImage;
    Imagepolegaresquerdocapturada: TImage;
    DBImagepolegaresquerdo: TDBImage;
    DBImageindicadoresquerdo: TDBImage;
    DBImagemedioesquerdo: TDBImage;
    DBImageanelaresquerdo: TDBImage;
    DBImageminimoesquerdo: TDBImage;
    DBImagepolegardireito: TDBImage;
    DBImageindicadordireito: TDBImage;
    DBImagemediodireito: TDBImage;
    DBImageanelardireito: TDBImage;
    DBImageminimodireito: TDBImage;
    Imageindicadoresquerdocapturado: TImage;
    Imagemedioesquerdocapturado: TImage;
    Imageanelaresquerdocapturado: TImage;
    Imageminimoesquerdocapturado: TImage;
    Imageminimodireito: TImage;
    Imageminimodireitocapturada: TImage;
    Imageanelardireitocapturada: TImage;
    Imageindicadordireitocapturada: TImage;
    Imagemediodireitocapturada: TImage;
    Imagepolegardireitocapturado: TImage;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Labelcapdigital: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ImagepolegaresquerdoClick(Sender: TObject);
    procedure ImageindicadoresquerdoClick(Sender: TObject);
    procedure ImagemedioesquerdoClick(Sender: TObject);
    procedure ImageanelaresquerdoClick(Sender: TObject);
    procedure ImageminimoesquerdoClick(Sender: TObject);
    procedure ImageminimodireitoClick(Sender: TObject);
    procedure ImageanelardireitoClick(Sender: TObject);
    procedure ImagemediodireitoClick(Sender: TObject);
    procedure ImageindicadordireitoClick(Sender: TObject);
    procedure ImagepolegardireitoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmCapturaBiometrica: TFrmCapturaBiometrica;

implementation

uses UnCaptDig, DmPrincipal, Lib, MovimentoInternos, CadastroVisitante;

{$R *.dfm}

procedure TFrmCapturaBiometrica.FormShow(Sender: TObject);
begin
  if Dsdigital.dataset.fieldbyname('CHAVE_POLEGAR_ESQUERDO').asstring <> '' then
  begin
    Imagepolegaresquerdocapturada.Visible := true;
    Imagepolegaresquerdo.Visible := false;
  end
  else
  begin
    Imagepolegaresquerdocapturada.Visible := false;
    Imagepolegaresquerdo.Visible := true;
  end;

  if Dsdigital.dataset.fieldbyname('CHAVE_INDICADOR_ESQUERDO').asstring <> '' then
  begin
    Imageindicadoresquerdocapturado.Visible := true;
    Imageindicadoresquerdo.Visible := false;
  end
  else
  begin
    Imageindicadoresquerdocapturado.Visible := false;
    Imageindicadoresquerdo.Visible := true;
  end;

  if Dsdigital.dataset.fieldbyname('CHAVE_MEDIO_ESQUERDO').asstring <> '' then
  begin
    Imagemedioesquerdocapturado.Visible := true;
    Imagemedioesquerdo.Visible := false;
  end
  else
  begin
    Imagemedioesquerdocapturado.Visible := false;
    Imagemedioesquerdo.Visible := true;
  end;

  if Dsdigital.dataset.fieldbyname('CHAVE_ANELAR_ESQUERDO').asstring <> '' then
  begin
    Imageanelaresquerdocapturado.Visible := true;
    Imageanelaresquerdo.Visible := false;
  end
  else
  begin
    Imageanelaresquerdocapturado.Visible := false;
    Imageanelaresquerdo.Visible := true;
  end;

  if Dsdigital.dataset.fieldbyname('CHAVE_MINIMO_ESQUERDO').asstring <> '' then
  begin
    Imageminimoesquerdocapturado.Visible := true;
    Imageminimoesquerdo.Visible := false;
  end
  else
  begin
    Imageminimoesquerdocapturado.Visible := false;
    Imageminimoesquerdo.Visible := true;
  end;

  if Dsdigital.dataset.fieldbyname('CHAVE_POLEGAR_DIREITO').asstring <> '' then
  begin
    Imagepolegardireitocapturado.Visible := true;
    Imagepolegardireito.Visible := false;
  end
  else
  begin
    Imagepolegardireitocapturado.Visible := false;
    Imagepolegardireito.Visible := true;
  end;

  if Dsdigital.dataset.fieldbyname('CHAVE_INDICADOR_DIREITO').asstring <> '' then
  begin
    Imageindicadordireitocapturada.Visible := true;
    Imageindicadordireito.Visible := false;
  end
  else
  begin
    Imageindicadordireitocapturada.Visible := false;
    Imageindicadordireito.Visible := true;
  end;

  if Dsdigital.dataset.fieldbyname('CHAVE_MEDIO_DIREITO').asstring <> '' then
  begin
    Imagemediodireitocapturada.Visible := true;
    Imagemediodireito.Visible := false;
  end
  else
  begin
    Imagemediodireitocapturada.Visible := false;
    Imagemediodireito.Visible := true;
  end;

  if Dsdigital.dataset.fieldbyname('CHAVE_ANELAR_DIREITO').asstring <> '' then
  begin
    Imageanelardireitocapturada.Visible := true;
    Imageanelardireito.Visible := false;
  end
  else
  begin
    Imageanelardireitocapturada.Visible := false;
    Imageanelardireito.Visible := true;
  end;

  if Dsdigital.dataset.fieldbyname('CHAVE_MINIMO_DIREITO').asstring <> '' then
  begin
    Imageminimodireitocapturada.Visible := true;
    Imageminimodireito.Visible := false;
  end
  else
  begin
    Imageminimodireitocapturada.Visible := false;
    Imageminimodireito.Visible := true;
  end;

end;

procedure TFrmCapturaBiometrica.ImagepolegaresquerdoClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Cadastrar Digital Para Dedo Polegar Esquerdo?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    plDig_bmp := TBitmap.Create();
    
    frmDigital := TfrmDigital.Create(Self);
    if (frmDigital.ShowModal() = mrOK) then
    begin

      if tipocaptura = 'Visitante' then
        DM.SqlExecute.sql.text := 'select id_visitante from biometria where id_visitante ='
          + FrmCadastroVisitante.dscadastro.dataset.fieldbyname('id_visitante').asstring
      else
        DM.SqlExecute.sql.text := 'select id_interno from biometria where id_interno ='
          + frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').asstring;

      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
      begin

        IniciaTransMovimento;

        Dsdigital.DataSet.Edit;
        Dsdigital.dataset.fieldbyname('CHAVE_POLEGAR_ESQUERDO').asstring := plDig_hex;
        DBImagepolegaresquerdo.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

      end
      else
      begin
        IniciaTransMovimento;

        Dsdigital.DataSet.Append;
        Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');

        if tipocaptura = 'Visitante' then
          Dsdigital.dataset.fieldbyname('id_visitante').AsInteger := frmcadastrovisitante.dscadastro.dataset.fieldbyname('id_visitante').AsInteger
        else
          Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').AsInteger;

        Dsdigital.dataset.fieldbyname('CHAVE_POLEGAR_ESQUERDO').asstring := plDig_hex;
        DBImagepolegaresquerdo.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);

      end;

    end;

  end;
end;

procedure TFrmCapturaBiometrica.ImageindicadoresquerdoClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Cadastrar Digital Para Dedo Indicador Esquerdo?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    plDig_bmp := TBitmap.Create();
    frmDigital := TfrmDigital.Create(Self);
    if (frmDigital.ShowModal() = mrOK) then
    begin

      if tipocaptura = 'Visitante' then
        DM.SqlExecute.sql.text := 'select id_visitante from biometria where id_visitante ='
          + FrmCadastroVisitante.dscadastro.dataset.fieldbyname('id_visitante').asstring
      else
        DM.SqlExecute.sql.text := 'select id_interno from biometria where id_interno ='
          + frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').asstring;

      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
      begin

        IniciaTransMovimento;

        Dsdigital.DataSet.edit;
        Dsdigital.dataset.fieldbyname('CHAVE_INDICADOR_ESQUERDO').asstring := plDig_hex;
        DBImageindicadoresquerdo.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end
      else
      begin
        IniciaTransMovimento;

        Dsdigital.DataSet.Append;
        Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');

        if tipocaptura = 'Visitante' then
          Dsdigital.dataset.fieldbyname('id_visitante').AsInteger := frmcadastrovisitante.dscadastro.dataset.fieldbyname('id_visitante').AsInteger
        else
          Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').AsInteger;

        Dsdigital.dataset.fieldbyname('CHAVE_INDICADOR_ESQUERDO').asstring := plDig_hex;
        DBImageindicadoresquerdo.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);

      end;

    end;
  end;
end;

procedure TFrmCapturaBiometrica.ImagemedioesquerdoClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Cadastrar Digital Para Dedo Médio Esquerdo?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    plDig_bmp := TBitmap.Create();
    frmDigital := TfrmDigital.Create(Self);
    if (frmDigital.ShowModal() = mrOK) then
    begin

      if tipocaptura = 'Visitante' then
        DM.SqlExecute.sql.text := 'select id_visitante from biometria where id_visitante ='
          + FrmCadastroVisitante.dscadastro.dataset.fieldbyname('id_visitante').asstring
      else
        DM.SqlExecute.sql.text := 'select id_interno from biometria where id_interno ='
          + frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').asstring;

      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
      begin

        IniciaTransMovimento;

        Dsdigital.DataSet.Edit;
        Dsdigital.dataset.fieldbyname('CHAVE_MEDIO_ESQUERDO').asstring := plDig_hex;
        DBImagemedioesquerdo.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end
      else
      begin
        IniciaTransMovimento;

        Dsdigital.DataSet.Append;
        Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');

        if tipocaptura = 'Visitante' then
          Dsdigital.dataset.fieldbyname('id_visitante').AsInteger := frmcadastrovisitante.dscadastro.dataset.fieldbyname('id_visitante').AsInteger
        else
          Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').AsInteger;

        Dsdigital.dataset.fieldbyname('CHAVE_MEDIO_ESQUERDO').asstring := plDig_hex;
        DBImagemedioesquerdo.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end;
    end;
  end;
end;

procedure TFrmCapturaBiometrica.ImageanelaresquerdoClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Cadastrar Digital Para Dedo Anelar Esquerdo?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    plDig_bmp := TBitmap.Create();
    frmDigital := TfrmDigital.Create(Self);
    if (frmDigital.ShowModal() = mrOK) then
    begin

      if tipocaptura = 'Visitante' then
        DM.SqlExecute.sql.text := 'select id_visitante from biometria where id_visitante ='
          + FrmCadastroVisitante.dscadastro.dataset.fieldbyname('id_visitante').asstring
      else
        DM.SqlExecute.sql.text := 'select id_interno from biometria where id_interno ='
          + frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').asstring;

      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
      begin

        IniciaTransMovimento;

        Dsdigital.DataSet.Edit;
        Dsdigital.dataset.fieldbyname('CHAVE_ANELAR_ESQUERDO').asstring := plDig_hex;
        DBImageanelaresquerdo.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end
      else
      begin
        IniciaTransMovimento;

        Dsdigital.DataSet.Append;
        Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');

        if tipocaptura = 'Visitante' then
          Dsdigital.dataset.fieldbyname('id_visitante').AsInteger := frmcadastrovisitante.dscadastro.dataset.fieldbyname('id_visitante').AsInteger
        else
          Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').AsInteger;

        Dsdigital.dataset.fieldbyname('CHAVE_ANELAR_ESQUERDO').asstring := plDig_hex;
        DBImageanelaresquerdo.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end;
    end;
  end;
end;

procedure TFrmCapturaBiometrica.ImageminimoesquerdoClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Cadastrar Digital Para Dedo Mínimo Esquerdo?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    plDig_bmp := TBitmap.Create();
    frmDigital := TfrmDigital.Create(Self);
    if (frmDigital.ShowModal() = mrOK) then
    begin

      if tipocaptura = 'Visitante' then
        DM.SqlExecute.sql.text := 'select id_visitante from biometria where id_visitante ='
          + FrmCadastroVisitante.dscadastro.dataset.fieldbyname('id_visitante').asstring
      else
        DM.SqlExecute.sql.text := 'select id_interno from biometria where id_interno ='
          + frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').asstring;

      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
      begin

        IniciaTransMovimento;

        Dsdigital.DataSet.Edit;
        Dsdigital.dataset.fieldbyname('CHAVE_MINIMO_ESQUERDO').asstring := plDig_hex;
        DBImageminimoesquerdo.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end
      else
      begin
        IniciaTransMovimento;

        Dsdigital.DataSet.Append;
        Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');

        if tipocaptura = 'Visitante' then
          Dsdigital.dataset.fieldbyname('id_visitante').AsInteger := frmcadastrovisitante.dscadastro.dataset.fieldbyname('id_visitante').AsInteger
        else
          Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').AsInteger;

        Dsdigital.dataset.fieldbyname('CHAVE_MINIMO_ESQUERDO').asstring := plDig_hex;
        DBImageminimoesquerdo.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end;
    end;
  end;
end;

procedure TFrmCapturaBiometrica.ImageminimodireitoClick(Sender: TObject);
begin

  if Application.MessageBox('Confirma Cadastrar Digital Para Dedo Mínimo Direito?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin

    plDig_bmp := TBitmap.Create();
    frmDigital := TfrmDigital.Create(Self);
    if (frmDigital.ShowModal() = mrOK) then
    begin

      if tipocaptura = 'Visitante' then
        DM.SqlExecute.sql.text := 'select id_visitante from biometria where id_visitante ='
          + FrmCadastroVisitante.dscadastro.dataset.fieldbyname('id_visitante').asstring
      else
        DM.SqlExecute.sql.text := 'select id_interno from biometria where id_interno ='
          + frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').asstring;

      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
      begin

        IniciaTransMovimento;

        Dsdigital.DataSet.Edit;
        Dsdigital.dataset.fieldbyname('CHAVE_MINIMO_DIREITO').asstring := plDig_hex;
        DBImageminimodireito.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end
      else
      begin
        IniciaTransMovimento;

        Dsdigital.DataSet.Append;
        Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');

        if tipocaptura = 'Visitante' then
          Dsdigital.dataset.fieldbyname('id_visitante').AsInteger := frmcadastrovisitante.dscadastro.dataset.fieldbyname('id_visitante').AsInteger
        else
          Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').AsInteger;

        Dsdigital.dataset.fieldbyname('CHAVE_MINIMO_DIREITO').asstring := plDig_hex;
        DBImageminimodireito.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end;
    end;
  end;
end;

procedure TFrmCapturaBiometrica.ImageanelardireitoClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Cadastrar Digital Para Dedo Anelar Direito?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin

    plDig_bmp := TBitmap.Create();
    frmDigital := TfrmDigital.Create(Self);
    if (frmDigital.ShowModal() = mrOK) then
    begin

      if tipocaptura = 'Visitante' then
        DM.SqlExecute.sql.text := 'select id_visitante from biometria where id_visitante ='
          + FrmCadastroVisitante.dscadastro.dataset.fieldbyname('id_visitante').asstring
      else
        DM.SqlExecute.sql.text := 'select id_interno from biometria where id_interno ='
          + frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').asstring;

      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
      begin

        IniciaTransMovimento;

        Dsdigital.DataSet.Edit;
        Dsdigital.dataset.fieldbyname('CHAVE_ANELAR_DIREITO').asstring := plDig_hex;
        DBImageanelardireito.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end
      else
      begin
        IniciaTransMovimento;

        Dsdigital.DataSet.Append;
        Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');

        if tipocaptura = 'Visitante' then
          Dsdigital.dataset.fieldbyname('id_visitante').AsInteger := frmcadastrovisitante.dscadastro.dataset.fieldbyname('id_visitante').AsInteger
        else
          Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').AsInteger;

        Dsdigital.dataset.fieldbyname('CHAVE_ANELAR_DIREITO').asstring := plDig_hex;
        DBImageanelardireito.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end;
    end;
  end;
end;

procedure TFrmCapturaBiometrica.ImagemediodireitoClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Cadastrar Digital Para Dedo Médio Direito?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin

    plDig_bmp := TBitmap.Create();
    frmDigital := TfrmDigital.Create(Self);
    if (frmDigital.ShowModal() = mrOK) then
    begin

      if tipocaptura = 'Visitante' then
        DM.SqlExecute.sql.text := 'select id_visitante from biometria where id_visitante ='
          + FrmCadastroVisitante.dscadastro.dataset.fieldbyname('id_visitante').asstring
      else
        DM.SqlExecute.sql.text := 'select id_interno from biometria where id_interno ='
          + frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').asstring;

      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
      begin

        IniciaTransMovimento;

        Dsdigital.DataSet.Edit;
        Dsdigital.dataset.fieldbyname('CHAVE_MEDIO_DIREITO').asstring := plDig_hex;
        DBImagemediodireito.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end
      else
      begin
        IniciaTransMovimento;

        Dsdigital.DataSet.Append;
        Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');

        if tipocaptura = 'Visitante' then
          Dsdigital.dataset.fieldbyname('id_visitante').AsInteger := frmcadastrovisitante.dscadastro.dataset.fieldbyname('id_visitante').AsInteger
        else
          Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').AsInteger;

        Dsdigital.dataset.fieldbyname('CHAVE_MEDIO_DIREITO').asstring := plDig_hex;
        DBImagemediodireito.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end;
    end;
  end;

end;

procedure TFrmCapturaBiometrica.ImageindicadordireitoClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Cadastrar Digital Para Dedo Indicador Direito?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin

    plDig_bmp := TBitmap.Create();
    frmDigital := TfrmDigital.Create(Self);
    if (frmDigital.ShowModal() = mrOK) then
    begin

      if tipocaptura = 'Visitante' then
        DM.SqlExecute.sql.text := 'select id_visitante from biometria where id_visitante ='
          + FrmCadastroVisitante.dscadastro.dataset.fieldbyname('id_visitante').asstring
      else
        DM.SqlExecute.sql.text := 'select id_interno from biometria where id_interno ='
          + frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').asstring;

      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
      begin

        IniciaTransMovimento;

        Dsdigital.DataSet.Edit;
        Dsdigital.dataset.fieldbyname('CHAVE_INDICADOR_DIREITO').asstring := plDig_hex;
        DBImageindicadordireito.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end
      else
      begin
        IniciaTransMovimento;

        Dsdigital.DataSet.Append;
        Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');

        if tipocaptura = 'Visitante' then
          Dsdigital.dataset.fieldbyname('id_visitante').AsInteger := frmcadastrovisitante.dscadastro.dataset.fieldbyname('id_visitante').AsInteger
        else
          Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').AsInteger;

        Dsdigital.dataset.fieldbyname('CHAVE_INDICADOR_DIREITO').asstring := plDig_hex;
        DBImageindicadordireito.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end;
    end;
  end;
end;

procedure TFrmCapturaBiometrica.ImagepolegardireitoClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Cadastrar Digital Para Dedo Polegar Direito?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin

    plDig_bmp := TBitmap.Create();
    frmDigital := TfrmDigital.Create(Self);
    if (frmDigital.ShowModal() = mrOK) then
    begin

      if tipocaptura = 'Visitante' then
        DM.SqlExecute.sql.text := 'select id_visitante from biometria where id_visitante ='
          + FrmCadastroVisitante.dscadastro.dataset.fieldbyname('id_visitante').asstring
      else
        DM.SqlExecute.sql.text := 'select id_interno from biometria where id_interno ='
          + frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').asstring;

      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
      begin

        IniciaTransMovimento;

        Dsdigital.DataSet.Edit;
        Dsdigital.dataset.fieldbyname('CHAVE_POLEGAR_DIREITO').asstring := plDig_hex;
        DBImagepolegardireito.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end
      else
      begin
        IniciaTransMovimento;

        Dsdigital.DataSet.Append;
        Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');

        if tipocaptura = 'Visitante' then
          Dsdigital.dataset.fieldbyname('id_visitante').AsInteger := frmcadastrovisitante.dscadastro.dataset.fieldbyname('id_visitante').AsInteger
        else
          Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').AsInteger;

        Dsdigital.dataset.fieldbyname('CHAVE_POLEGAR_DIREITO').asstring := plDig_hex;
        DBImagepolegardireito.Picture.Bitmap.Assign(plDig_bmp);
        Dsdigital.DataSet.Post;

        CDSdigital.ApplyUpdates(-1);

        FinalizaTransMovimento;

        FormShow(nil);

        ShowMessage('Digital Capturada com sucesso.');

        freeandnil(frmDigital);
        freeandnil(plDig_bmp);
      end;
    end;
  end;

end;

procedure TFrmCapturaBiometrica.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.

