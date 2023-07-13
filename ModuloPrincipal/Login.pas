unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids,
   Buttons, ExtCtrls, jpeg, styles, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage;

type
  TTelaLogin = class(TForm)
    Sqlservidor: TSQLQuery;
    Dspservidor: TDataSetProvider;
    Cdsservidor: TClientDataSet;
    Dsservidor: TDataSource;
    GroupBoxLocal: TGroupBox;
    LabelNome: TLabel;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SqlUP: TSQLQuery;
    DspUP: TDataSetProvider;
    CdsUP: TClientDataSet;
    CdsUPID_UP: TIntegerField;
    CdsUPNOME_UP: TStringField;
    CdsUPENDERECO: TStringField;
    CdsUPNUMERO: TStringField;
    CdsUPBAIRRO: TStringField;
    CdsUPCOMPLEMENTO: TStringField;
    CdsUPCEP: TStringField;
    CdsUPID_CIDADE: TIntegerField;
    CdsUPFONE: TStringField;
    CdsUPFAX: TStringField;
    CdsUPCONTATO: TStringField;
    CdsUPFOTO: TStringField;
    CdsUPCAPITAL: TStringField;
    CdsUPREGIAO: TStringField;
    CdsUPSIGLA: TStringField;
    DsUP: TDataSource;
    Image3: TImage;
//    procedure Button1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure MudarComEnter(var Msg: TMsg; var Handled: Boolean);
    { Private declarations }
  public
    liberado: Boolean;
    { Public declarations }
  end;

var
  TelaLogin: TTelaLogin;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

{procedure TTelaLogin.Button1Click(Sender: TObject);
begin


  //showmessage(GetCurrentDir);

  LOGIN_CONECTADO := Edit1.Text;
  liberado := False;
  if (LOGIN_CONECTADO = '') then
  begin
    showmessage('Digite o Login!!');
    if edit1.canfocus then
      edit1.setfocus;
  end
  else
  begin
    if edit2.text = '' then
    begin
      showmessage('Digite a Senha!');
      if edit2.canfocus then
        edit2.setfocus;
    end
    else
    begin
      if (LOGIN_CONECTADO = '99999') then
      begin
        if LowerCase(edit2.text) = 'SUPERSIAP' + formatdatetime('DD', Date) then
        begin
          liberado := True;
          close;
          exit;
        end;
      end;

      if (DBLookupComboBox1.keyvalue = null) then
      begin
        showmessage('Funcion�rio n�o cadastrado!!');
        if DBLookupComboBox1.canfocus then
          DBLookupComboBox1.setfocus;
      end
      else
      begin
        try
          Sqlservidor.sql.text := 'select * from funcionario where login =' + Qs(LOGIN_CONECTADO);
          Dsservidor.dataset.close;
          Dsservidor.dataset.open;
          if Dsservidor.dataset.recordcount > 0 then
          begin
            if Dsservidor.DataSet.FieldByName('SENHA').AsString = Edit2.Text then
            begin
              //Permiss�o estilo "CEDIR".
              PERMISSAO_CONFERE := Dsservidor.DataSet.FieldByName('PERMISSAO_CONFERE').AsString;
              PERMISSAO_VISITANTE := Dsservidor.DataSet.FieldByName('PERMISSAO_visitante').AsString;
              PERMISSAO_TRABALHO := Dsservidor.DataSet.FieldByName('PERMISSAO_setortrabalho').AsString;
              PERMISSAO_CADASTRO := Dsservidor.DataSet.FieldByName('PERMISSAO_CADASTRO').AsString;
              PERMISSAO_EDUCACAO := Dsservidor.DataSet.FieldByName('PERMISSAO_setoreducacao').AsString;
              PERMISSAO_PSICOSSOCIAL := Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOSSOCIAL').AsString;
              PERMISSAO_JURIDICA := Dsservidor.DataSet.FieldByName('PERMISSAO_JURIDICA').AsString;
              PERMISSAO_DISCIPLINA := Dsservidor.DataSet.FieldByName('PERMISSAO_DISCIPLINA').AsString;
              PERMISSAO_INTELIGENCIA := Dsservidor.DataSet.FieldByName('PERMISSAO_INTELIGENCIA').AsString;
              PERMISSAO_ENFERMAGEM := Dsservidor.DataSet.FieldByName('PERMISSAO_ENFERMAGEM').AsString;
              PERMISSAO_FARMACIA := Dsservidor.DataSet.FieldByName('PERMISSAO_FARMACIA').AsString;
              PERMISSAO_CLINICAMEDICA := Dsservidor.DataSet.FieldByName('PERMISSAO_CLINICAMEDICA').AsString;
              PERMISSAO_PSICOLOGIA := Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOLOGIA').AsString;
              PERMISSAO_PSIQUIATRIA := Dsservidor.DataSet.FieldByName('PERMISSAO_PSIQUIATRIA').AsString;
              PERMISSAO_SAUDE := Dsservidor.DataSet.FieldByName('PERMISSAO_SAUDE').AsString;
              PERMISSAO_TERAPIAOCUPACIONAL := Dsservidor.DataSet.FieldByName('PERMISSAO_TERAPIAOCUPACIONAL').AsString;
              PERMISSAO_ODONTOLOGIA := Dsservidor.DataSet.FieldByName('PERMISSAO_ODONTOLOGIA').AsString;
              PERMISSAO_PEDAGOGIA := Dsservidor.DataSet.FieldByName('PERMISSAO_PEDAGOGIA').AsString;
              PERMISSAO_SERVICOSOCIAL := Dsservidor.DataSet.FieldByName('PERMISSAO_SERVICOSOCIAL').AsString;
              PERMISSAO_ARMAS := Dsservidor.DataSet.FieldByName('PERMISSAO_ARMAS').AsString;
              PERMISSAO_MONITORAMENTO := Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTO').AsString;
              PERMISSAO_OCORRENCIA := Dsservidor.DataSet.FieldByName('PERMISSAO_OCORRENCIA').AsString;
              PERMISSAO_CONSELHODISCIPLINAR := Dsservidor.DataSet.FieldByName('PERMISSAO_CONSELHODISCIPLINAR').AsString;
              PERMISSAO_TRANSFERENCIAINTERNO := Dsservidor.DataSet.FieldByName('PERMISSAO_TRANSFERENCIAINTERNO').AsString;
              PERMISSAO_MUDANCACELA := Dsservidor.DataSet.FieldByName('PERMISSAO_MUDANCACELA').AsString;
              PERMISSAO_SAIDAO := Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO').AsString;
              PERMISSAO_SAIDAO_CADASTRO := Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO_CADASTRO').AsString;
              PERMISSAO_CIRCULACAOINTERNO := Dsservidor.DataSet.FieldByName('PERMISSAO_CIRCULACAOINTERNO').AsString;
              PERMISSAO_MOVIMENTOSEMIABERTO := Dsservidor.DataSet.FieldByName('PERMISSAO_MOVIMENTOSEMIABERTO').AsString;
              PERMISSAO_FUNCIONARIO := Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCIONARIO').AsString;
              PERMISSAO_FUNCAOFUNCIONARIO := Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOFUNCIONARIO').AsString;
              PERMISSAO_UNIDADEPENAL := Dsservidor.DataSet.FieldByName('PERMISSAO_UNIDADEPENAL').AsString;
              PERMISSAO_HORARIOFUNCIONARIO := Dsservidor.DataSet.FieldByName('PERMISSAO_HORARIOFUNCIONARIO').AsString;
              PERMISSAO_PADRAOSISTEMA := Dsservidor.DataSet.FieldByName('PERMISSAO_PADRAOSISTEMA').AsString;
              PERMISSAO_EQUIPE := Dsservidor.DataSet.FieldByName('PERMISSAO_EQUIPE').AsString;
              PERMISSAO_LOCALPOSTOTRABALHO := Dsservidor.DataSet.FieldByName('PERMISSAO_LOCALPOSTOTRABALHO').AsString;
              PERMISSAO_AGENTEPOREQUIPE := Dsservidor.DataSet.FieldByName('PERMISSAO_AGENTEPOREQUIPE').AsString;
              PERMISSAO_REGRAVISITACAO := Dsservidor.DataSet.FieldByName('PERMISSAO_REGRAVISITACAO').AsString;

              //Permiss�es estilo SIM ou N�O.
              PERMISSAO_ENTRADAVISITANTE := Dsservidor.DataSet.FieldByName('PERMISSAO_ENTRADAVISITANTE').AsString;
              VISUALIZA_OUTRAS_UP := Dsservidor.DataSet.FieldByName('VISUALIZA_OUTRAS_UP').AsString;
              CONFIGURACAO := Dsservidor.DataSet.FieldByName('configuracoes').AsString;

              liberado := True;
              close;
            end
            else
            begin
              ShowMessage('Senha Invalida!!');
              if edit2.canfocus then
                Edit2.SetFocus;
            end;

          end
          else
          begin
            ShowMessage('Usu�rio N�o Cadastrado!!');
            if edit1.canfocus then
              Edit1.SetFocus;
          end;

        except
          ShowMessage('Codigo invalido');
        end
      end;

    end;
  end;

end; }

procedure TTelaLogin.Edit1Exit(Sender: TObject);
begin
  LOGIN_CONECTADO := '';
  LOGIN_CONECTADO := Edit1.Text;
  if LOGIN_CONECTADO <> '' then
  begin
    //Login oculto
   { if (LOGIN_CONECTADO = '99999') then
    begin
      if LowerCase(edit2.text) = 'SUPERSIAP' + formatdatetime('DD', Date) then
      begin
        DBLookupComboBox1.Enabled := True;
        Exit;
      end;
    end;       }

    try
      Sqlservidor.sql.text := 'select * from funcionario left join perfil_usuario '
        + ' on (perfil_usuario.id_perfil_usuario = funcionario.id_perfil_usuario) '
        + ' where login=' + Qs(LOGIN_CONECTADO);
      Dsservidor.dataset.close;
      Dsservidor.dataset.open;

      if Dsservidor.dataset.recordcount > 0 then
      begin

        if (Dsservidor.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString = 'S') then
          //and (Dsservidor.DataSet.FieldByName('STATUS').AsString = 'A')) then
        begin
          GLOBAL_ID_UP := Dsservidor.DataSet.FieldByName('ID_UP').AsInteger;
          GLOBAL_ID_FUNCIONARIO := Dsservidor.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger;
          GLOBAL_IDPOSTO_TRABALHO := Dsservidor.DataSet.FieldByName('IDPOSTO_TRABALHO').AsInteger;
          GLOBAL_MEUS_DOCUMENTOS := GetEnvironmentVariable('USERPROFILE');

          if Dsservidor.DataSet.FieldByName('DIRETORIO_RELATORIO').AsString <> '' then
          begin
            if DirectoryExists(Dsservidor.DataSet.FieldByName('DIRETORIO_RELATORIO').AsString) then
            begin
              GLOBAL_PATCH_RELATORIO := Dsservidor.DataSet.FieldByName('DIRETORIO_RELATORIO').AsString;
            end
            else
            begin
              CreateDir(GLOBAL_PATCH_SISTEMA + '..\Sem Relat�rio');
              GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Sem Relat�rio';
            end;
          end
          else
          begin

            GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\' + IntToStr(GLOBAL_ID_UP);

            if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
            begin
              GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Relat�rios';
            end;

            if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
            begin
              CreateDir(GLOBAL_PATCH_SISTEMA + '..\Relat�rios');
              GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Sem Relat�rio';
            end;

          end;

          DBLookupComboBox1.KeyValue := GLOBAL_ID_UP;
        end
        else
        begin
          if (Dsservidor.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString <> 'S') then
            ShowMessage('Usu�rio Inativo no Sistema! Entre em contato com o administrador.')
          else
            ShowMessage('Perfil de Usu�rio Inativo no Sistema! Entre em contato com o administrador.');

          if Edit1.CanFocus then
            Edit1.SetFocus;
          DBLookupComboBox1.KeyValue := 0;
          Edit1.Text := '';
          Edit2.Text := '';
        end;
      end
      else
      begin
        ShowMessage('Usu�rio n�o encontrado!');
        if Edit1.CanFocus then
          Edit1.SetFocus;
        Edit1.Text := '';
        Edit2.Text := '';
        DBLookupComboBox1.KeyValue := 0;
      end;

    except

    end
  end;
end;

procedure TTelaLogin.FormCreate(Sender: TObject);
begin

  DsUP.DataSet.Close;
  DsUP.DataSet.open;

  GroupBoxLocal.Caption := GLOBAL_LOCAL;
  LabelNome.Caption := GLOBAL_NOME;

  Application.OnMessage := MudarComEnter;
  Edit2.PasswordChar := '�';
end;

procedure TTelaLogin.DBLookupComboBox1Click(Sender: TObject);
begin
  GLOBAL_ID_UP := DBLookupComboBox1.KeyValue;
  UP_Logado := DsUP.DataSet.FieldByName('SIGLA').AsString;
end;

procedure TTelaLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    SelectNext(ActiveControl, True, true);

end;

procedure TTelaLogin.MudarComEnter(var Msg: TMsg; var Handled: Boolean);
var
  snome: string;
begin

  try
    if (Msg.Message = wm_SysCommand) and (Msg.wParam = sc_ScreenSave) then
      Handled := true;

    if assigned(Screen.ActiveControl) then
    begin
      if not ((Screen.ActiveControl is TCustomMemo) or
        (Screen.ActiveControl is TCustomGrid) or
        (Screen.ActiveControl is TDBLookupComboBox) or
        (Screen.ActiveControl is TDBComboBox) or
        (Screen.ActiveControl is TComboBox) or
        (Screen.ActiveForm.ClassName = 'TMessageForm') or
        (copy(Screen.ActiveForm.ClassName, 1, 4) = 'Tfrx') or
        (Screen.ActiveForm.Name = 'FrmConsultaGeral') or
        (Screen.ActiveForm.Name = 'FrmAguarde')
        ) then
      begin
        if Msg.message = WM_KEYDOWN then
        begin
//          if snome = '1' then
//            ShowMessage(Screen.ActiveForm.ClassName);
          case Msg.wParam of
            VK_RETURN: //, VK_DOWN:
              begin
                if (Screen.ActiveForm.ActiveControl is TDBEdit) then
                  if TDBEdit(Screen.ActiveForm.ActiveControl).DataSource.DataSet.State in [dsedit, dsinsert] then
                    TDBEdit(Screen.ActiveForm.ActiveControl).Text := BuscaTroca(TDBEdit(Screen.ActiveForm.ActiveControl).Text, chr(39), '`');
                Screen.ActiveForm.Perform(WM_NextDlgCtl, 0, 0);
              end;
            //Esta parte foi comentada (VK_DOWN e VK_UP) porque em um ComboBox quando apertava para navegar entre a lista ele mudava de foco.
            {VK_UP:
              begin
                if (Screen.ActiveForm.ActiveControl is TDBEdit) then
                  if TDBEdit(Screen.ActiveForm.ActiveControl).DataSource.DataSet.State in [dsedit, dsinsert] then
                    TDBEdit(Screen.ActiveForm.ActiveControl).Text := BuscaTroca(TDBEdit(Screen.ActiveForm.ActiveControl).Text, chr(39), '`');
                Screen.ActiveForm.Perform(WM_NextDlgCtl, 1, 0);
              end;}
            VK_ESCAPE:
              begin
                Screen.ActiveForm.Close;
              end;
          end;
        end;

        if Msg.message = WM_LBUTTONDOWN then
        begin

          if (Screen.ActiveForm.ActiveControl is TDBEdit) then
            if TDBEdit(Screen.ActiveForm.ActiveControl).DataSource.DataSet.State in [dsedit, dsinsert] then
              TDBEdit(Screen.ActiveForm.ActiveControl).Text := BuscaTroca(TDBEdit(Screen.ActiveForm.ActiveControl).Text, chr(39), '`');

        end;

      end;
    end;
  except
  end;

end;

procedure TTelaLogin.SpeedButton1Click(Sender: TObject);
begin

  Dsservidor.DataSet.Filtered := false;
  UP_Logado := Dsup.DataSet.FieldByName('sigla').Asstring;
  GLOBAL_NOME_UP := Dsup.DataSet.FieldByName('NOME_UP').Asstring;
  LOGIN_CONECTADO := '';
  LOGIN_CONECTADO := Edit1.Text;
  liberado := False;
  if (LOGIN_CONECTADO = '') then
  begin
    showmessage('Digite o Login!!');
    if edit1.canfocus then
      edit1.setfocus;
    edit2.Text := '';
  end
  else
  begin
    if edit2.text = '' then
    begin

      showmessage('Digite a Senha!');

      if edit2.canfocus then
        edit2.setfocus;

    end
    else
    begin

       //Login Oculto Desabilitado
      {if (LOGIN_CONECTADO = '99999') then
      begin

        if LowerCase(edit2.text) = LowerCase('SUPERSIAP' + formatdatetime('DD', Date)) then
        begin

          liberado := True;

          //Permiss�es estilo "CEDIR".
          PERMISSAO_CONFERE := 'CEDIR';
          PERMISSAO_VISITANTE := 'CEDIR';
          PERMISSAO_TRABALHO := 'CEDIR';
          PERMISSAO_CADASTRO := 'CEDIR';
          PERMISSAO_EDUCACAO := 'CEDIR';
          PERMISSAO_PSICOSSOCIAL := 'CEDIR';
          PERMISSAO_JURIDICA := 'CEDIR';
          PERMISSAO_DISCIPLINA := 'CEDIR';
          PERMISSAO_INTELIGENCIA := 'CEDIR';
          PERMISSAO_ENFERMAGEM := 'CEDIR';
          PERMISSAO_FARMACIA := 'CEDIR';
          PERMISSAO_CLINICAMEDICA := 'CEDIR';
          PERMISSAO_PSICOLOGIA := 'CEDIR';
          PERMISSAO_PSIQUIATRIA := 'CEDIR';
          PERMISSAO_SAUDE := 'CEDIR';
          PERMISSAO_TERAPIAOCUPACIONAL := 'CEDIR';
          PERMISSAO_ODONTOLOGIA := 'CEDIR';
          PERMISSAO_PEDAGOGIA := 'CEDIR';
          PERMISSAO_SERVICOSOCIAL := 'CEDIR';
          PERMISSAO_ARMAS := 'CEDIR';
          PERMISSAO_MONITORAMENTO := 'CEDIR';
          PERMISSAO_OCORRENCIA := 'CEDIR';
          PERMISSAO_CONSELHODISCIPLINAR := 'CEDIR';
          PERMISSAO_TRANSFERENCIAINTERNO := 'CEDIR';
          PERMISSAO_MUDANCACELA := 'CEDIR';
          PERMISSAO_SAIDAO := 'CEDIR';
          PERMISSAO_CIRCULACAOINTERNO := 'CEDIR';
          PERMISSAO_MOVIMENTOSEMIABERTO := 'CEDIR';
          PERMISSAO_FUNCIONARIO := 'CEDIR';
          PERMISSAO_FUNCAOFUNCIONARIO := 'CEDIR';
          PERMISSAO_UNIDADEPENAL := 'CEDIR';
          PERMISSAO_HORARIOFUNCIONARIO := 'CEDIR';
          PERMISSAO_PADRAOSISTEMA := 'CEDIR';
          PERMISSAO_EQUIPE := 'CEDIR';
          PERMISSAO_LOCALPOSTOTRABALHO := 'CEDIR';
          PERMISSAO_AGENTEPOREQUIPE := 'CEDIR';
          PERMISSAO_REGRAVISITACAO := 'CEDIR';

          //Permiss�es estilo SIM ou N�O;
          PERMISSAO_ENTRADAVISITANTE := 'S';
          VISUALIZA_OUTRAS_UP := 'S';
          CONFIGURACAO := 'S';

          close;
          exit;

        end;

      end;  }

      if (DBLookupComboBox1.keyvalue <= 0) then
      begin

        showmessage('Usu�rio n�o encontrado!');
        if DBLookupComboBox1.canfocus then
          DBLookupComboBox1.setfocus;
        Edit1.Text := '';
        Edit2.Text := '';

      end
      else
      begin
        try
          Sqlservidor.sql.text := 'select * from funcionario left join perfil_usuario '
        + ' on (perfil_usuario.id_perfil_usuario = funcionario.id_perfil_usuario) '
        + ' where login=' + Qs(LOGIN_CONECTADO);
          Dsservidor.dataset.close;
          Dsservidor.dataset.open;

          if not Dsservidor.DataSet.IsEmpty then
          begin
            GLOBAL_SENHA_USUARIO := Edit2.Text;
            Dsservidor.DataSet.Filter := 'SENHA = ' + QS(Senha(GLOBAL_SENHA_USUARIO));
            Dsservidor.DataSet.Filtered := true;
            if not Dsservidor.DataSet.IsEmpty then
            begin

              if (Dsservidor.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString = 'S') then
             //   and (Dsservidor.DataSet.FieldByName('STATUS').AsString = 'A')) then
              begin

                //Permiss�es estilo "CEDIR". � utilizado a fun��o MesclarPermiss�es(Permissao1,Permissao2,TipoPermissao)
                //para juntar as permiss�es espec�ficas do usu�rio com as permiss�es do perfil de usu�rio.
                //TipoPermissao = 'CEDIR' ou 'CEDIRP' ou 'SN' ou 'AI'
                PERMISSAO_CONFERE :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CONFERE').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CONFERE_1').AsString, 'CEDIR');

                PERMISSAO_VISITANTE :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_VISITANTE').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_VISITANTE_1').AsString, 'CEDIR');

                PERMISSAO_TRABALHO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SETORTRABALHO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SETORTRABALHO_1').AsString, 'CEDIR');

                PERMISSAO_CADASTRO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CADASTRO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CADASTRO_1').AsString, 'CEDIR');

                PERMISSAO_EDUCACAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SETOREDUCACAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SETOREDUCACAO_1').AsString, 'CEDIR');

                PERMISSAO_PSICOSSOCIAL :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOSSOCIAL').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOSSOCIAL_1').AsString, 'CEDIR');

                PERMISSAO_JURIDICA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_JURIDICA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_JURIDICA_1').AsString, 'CEDIR');

                PERMISSAO_DISCIPLINA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_DISCIPLINA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_DISCIPLINA_1').AsString, 'CEDIR');

                PERMISSAO_INTELIGENCIA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_INTELIGENCIA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_INTELIGENCIA_1').AsString, 'CEDIR');

                PERMISSAO_ENFERMAGEM :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ENFERMAGEM').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_ENFERMAGEM_1').AsString, 'CEDIR');

                PERMISSAO_FARMACIA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FARMACIA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_FARMACIA_1').AsString, 'CEDIR');

                PERMISSAO_CLINICAMEDICA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CLINICAMEDICA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CLINICAMEDICA_1').AsString, 'CEDIR');

                PERMISSAO_PSICOLOGIA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOLOGIA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOLOGIA_1').AsString, 'CEDIR');

                PERMISSAO_PSIQUIATRIA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PSIQUIATRIA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_PSIQUIATRIA_1').AsString, 'CEDIR');

                PERMISSAO_SAUDE :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SAUDE').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SAUDE_1').AsString, 'CEDIR');

                PERMISSAO_TERAPIAOCUPACIONAL :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_TERAPIAOCUPACIONAL').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_TERAPIAOCUPACIONAL_1').AsString, 'CEDIR');

                PERMISSAO_ODONTOLOGIA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ODONTOLOGIA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_ODONTOLOGIA_1').AsString, 'CEDIR');

                PERMISSAO_PEDAGOGIA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PEDAGOGIA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_PEDAGOGIA_1').AsString, 'CEDIR');

                PERMISSAO_SERVICOSOCIAL :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SERVICOSOCIAL').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SERVICOSOCIAL_1').AsString, 'CEDIR');

                PERMISSAO_ARMAS :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ARMAS').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_ARMAS_1').AsString, 'CEDIR');

                PERMISSAO_MONITORAMENTO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTO_1').AsString, 'CEDIR');

                PERMISSAO_OCORRENCIA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_OCORRENCIA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_OCORRENCIA_1').AsString, 'CEDIRP');

               PERMISSAO_CONSELHODISCIPLINAR :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CONSELHODISCIPLINAR').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CONSELHODISCIPLINAR_1').AsString, 'CEDIR');

                PERMISSAO_TRANSFERENCIAINTERNO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_TRANSFERENCIAINTERNO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_TRANSFERENCIAINTERNO_1').AsString, 'CEDIR');

                PERMISSAO_MUDANCACELA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_MUDANCACELA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_MUDANCACELA_1').AsString, 'CEDIR');

                PERMISSAO_SAIDAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO_1').AsString, 'CEDIR');

                PERMISSAO_SAIDAO_CADASTRO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO_CADASTRO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO_CADASTRO_1').AsString, 'CEDIR');

                PERMISSAO_CIRCULACAOINTERNO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CIRCULACAOINTERNO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CIRCULACAOINTERNO_1').AsString, 'CEDIR');

                PERMISSAO_MOVIMENTOSEMIABERTO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_MOVIMENTOSEMIABERTO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_MOVIMENTOSEMIABERTO_1').AsString, 'CEDIR');

                PERMISSAO_FUNCIONARIO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCIONARIO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCIONARIO_1').AsString, 'CEDIR');

                PERMISSAO_FUNCAOFUNCIONARIO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOFUNCIONARIO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOFUNCIONARIO_1').AsString, 'CEDIR');

                PERMISSAO_UNIDADEPENAL :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_UNIDADEPENAL').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_UNIDADEPENAL_1').AsString, 'CEDIR');

                PERMISSAO_HORARIOFUNCIONARIO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_HORARIOFUNCIONARIO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_HORARIOFUNCIONARIO_1').AsString, 'CEDIR');

                PERMISSAO_PADRAOSISTEMA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PADRAOSISTEMA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_PADRAOSISTEMA_1').AsString, 'CEDIR');

                PERMISSAO_EQUIPE :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_EQUIPE').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_EQUIPE_1').AsString, 'CEDIR');

                PERMISSAO_LOCALPOSTOTRABALHO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_LOCALPOSTOTRABALHO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_LOCALPOSTOTRABALHO_1').AsString, 'CEDIR');

                PERMISSAO_AGENTEPOREQUIPE :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_AGENTEPOREQUIPE').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_AGENTEPOREQUIPE_1').AsString, 'CEDIR');

                PERMISSAO_REGRAVISITACAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_REGRAVISITACAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_REGRAVISITACAO_1').AsString, 'CEDIR');

                PERMISSAO_PERFILUSUARIO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PERFILUSUARIO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_PERFILUSUARIO_1').AsString, 'CEDIR');

                PERMISSAO_ADVOGADO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ADVOGADO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_ADVOGADO_1').AsString, 'CEDIR');

                PERMISSAO_VISITANTETRAFICO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_VISITANTETRAFICO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_VISITANTETRAFICO_1').AsString, 'CEDIR');

                PERMISSAO_FACCAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FACCAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_FACCAO_1').AsString, 'CEDIR');

                PERMISSAO_CTC :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CTC').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CTC_1').AsString, 'CEDIR');

                PERMISSAO_CORRESPONDENCIA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CORRESPONDENCIA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CORRESPONDENCIA_1').AsString, 'CEDIR');

                PERMISSAO_AGENDAATENDIMENTO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_AGENDAATENDIMENTO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_AGENDAATENDIMENTO_1').AsString, 'CEDIR');

                PERMISSAO_LIVROREVISTA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_LIVROREVISTA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_LIVROREVISTA_1').AsString, 'CEDIR');

                PERMISSAO_PAVILHAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PAVILHAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_PAVILHAO_1').AsString, 'CEDIR');

                PERMISSAO_GALERIA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_GALERIA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_GALERIA_1').AsString, 'CEDIR');

                PERMISSAO_SOLARIO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SOLARIO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SOLARIO_1').AsString, 'CEDIR');

                PERMISSAO_CELA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CELA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CELA_1').AsString, 'CEDIR');

                PERMISSAO_CONDICAOINTERNO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CONDICAOINTERNO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CONDICAOINTERNO_1').AsString, 'CEDIR');

                PERMISSAO_CIDADE :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CIDADE').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CIDADE_1').AsString, 'CEDIR');

                PERMISSAO_RACA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_RACA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_RACA_1').AsString, 'CEDIR');

                PERMISSAO_ESCOLARIDADE :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ESCOLARIDADE').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_ESCOLARIDADE_1').AsString, 'CEDIR');

                PERMISSAO_NACIONALIDADE :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_NACIONALIDADE').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_NACIONALIDADE_1').AsString, 'CEDIR');

                PERMISSAO_PROCEDENCIA :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PROCEDENCIA').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_PROCEDENCIA_1').AsString, 'CEDIR');

                PERMISSAO_DESTINO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_DESTINO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_DESTINO_1').AsString, 'CEDIR');

                PERMISSAO_FORNECEDOR :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FORNECEDOR').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_FORNECEDOR_1').AsString, 'CEDIR');

                PERMISSAO_PROFISSAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PROFISSAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_PROFISSAO_1').AsString, 'CEDIR');

                PERMISSAO_FALTADISCIPLINAR :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FALTADISCIPLINAR').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_FALTADISCIPLINAR_1').AsString, 'CEDIR');

                PERMISSAO_SERIEFASEESTUDO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SERIEFASEESTUDO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SERIEFASEESTUDO_1').AsString, 'CEDIR');

                PERMISSAO_PROCESSOCONDENACAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PROCESSOCONDENACAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_PROCESSOCONDENACAO_1').AsString, 'CEDIR');

                PERMISSAO_DETRACAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_DETRACAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_DETRACAO_1').AsString, 'CEDIR');

                PERMISSAO_INTERRUPCAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_INTERRUPCAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_INTERRUPCAO_1').AsString, 'CEDIR');

                PERMISSAO_REMICAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_REMICAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_REMICAO_1').AsString, 'CEDIR');

                PERMISSAO_ARTIGOPENAL :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ARTIGOPENAL').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_ARTIGOPENAL_1').AsString, 'CEDIR');

                PERMISSAO_VARAEXECUCAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_VARAEXECUCAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_VARAEXECUCAO_1').AsString, 'CEDIR');

                PERMISSAO_REMEDIO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_REMEDIO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_REMEDIO_1').AsString, 'CEDIR');

                PERMISSAO_FUNCAOINTERNO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOINTERNO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOINTERNO_1').AsString, 'CEDIR');

                PERMISSAO_CALCULOTRABALHO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CALCULOTRABALHO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_CALCULOTRABALHO_1').AsString, 'CEDIR');

                PERMISSAO_REMICAOTRABALHO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_REMICAOTRABALHO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_REMICAOTRABALHO_1').AsString, 'CEDIR');

                PERMISSAO_ROUPAS :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ROUPAS').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_ROUPAS_1').AsString, 'CEDIR');

                PERMISSAO_GRAUPARENTESCO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_GRAUPARENTESCO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_GRAUPARENTESCO_1').AsString, 'CEDIR');

                PERMISSAO_TIPOCONTATO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_TIPOCONTATO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_TIPOCONTATO_1').AsString, 'CEDIR');

                PERMISSAO_ASSUNTO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ASSUNTO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_ASSUNTO_1').AsString, 'CEDIR');

                PERMISSAO_SITUACAO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SITUACAO').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SITUACAO_1').AsString, 'CEDIR');

                PERMISSAO_SETORTRABALHOCAD :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SETORTRABALHOCAD').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SETORTRABALHOCAD_1').AsString, 'CEDIR');

                PERMISSAO_EVENTOS :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_EVENTOS').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_EVENTOS_1').AsString, 'CEDIR');

                PERMISSAO_SUBEVENTOS :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SUBEVENTOS').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_SUBEVENTOS_1').AsString, 'CEDIR');

                PERMISSAO_MONITORAMENTOEVENTOS :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTOEVENTOS').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTOEVENTOS_1').AsString, 'CEDIR');

             //   PERMISSAO_PAINEL :=
              //    MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PAINEL').AsString,
              //    Dsservidor.DataSet.FieldByName('PERMISSAO_PAINEL_1').AsString, 'CEDIR');

                //Permiss�es estilo SIM ou NAO. � utilizado a fun��o MesclarPermiss�es(Permissao1,Permissao2,TipoPermissao)
                //para juntar as permiss�es espec�ficas do usu�rio com as permiss�es do perfil de usu�rio.
                //TipoPermissao = 'CEDIR' ou 'CEDIRP' ou 'SN' ou 'AI'
                PERMISSAO_ENTRADAVISITANTE :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ENTRADAVISITANTE').AsString,
                  Dsservidor.DataSet.FieldByName('PERMISSAO_ENTRADAVISITANTE_1').AsString, 'SN');

                VISUALIZA_OUTRAS_UP :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('VISUALIZA_OUTRAS_UP').AsString,
                  Dsservidor.DataSet.FieldByName('VISUALIZA_OUTRAS_UP_1').AsString, 'SN');

                DEFINE_PERFIL_USUARIO :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('DEFINE_PERFIL_USUARIO').AsString,
                  Dsservidor.DataSet.FieldByName('DEFINE_PERFIL_USUARIO_1').AsString, 'SN');

                CONCEDE_PERMISSAO_INDIVIDUAL :=
                  MesclarPermissoes(Dsservidor.DataSet.FieldByName('CONCEDE_PERMISSAO_INDIVIDUAL').AsString,
                  Dsservidor.DataSet.FieldByName('CONCEDE_PERMISSAO_INDIVIDUAL_1').AsString, 'SN');


                GLOBAL_NOME_FUNCIONARIO_LOGADO := Dsservidor.DataSet.FieldByName('NOME_FUNCIONARIO').AsString;
                NOME_PERFILUSUARIO_LOGADO := Dsservidor.DataSet.FieldByName('PERFIL').AsString;


                Liberado := True;
                Close;

              end
              else
              begin
                if (Dsservidor.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString <> 'S') then
                  ShowMessage('Usu�rio Inativo no Sistema! Entre em contato com o administrador.')
                else
                  ShowMessage('Perfil de Usu�rio Inativo no Sistema! Entre em contato com o administrador.');

                if Edit1.CanFocus then
                  Edit1.SetFocus;
                DBLookupComboBox1.KeyValue := 0;
                Edit1.Text := '';
                Edit2.Text := '';
              end;

            end
            else
            begin
              Dsservidor.DataSet.Filtered := false;
              ShowMessage('Senha inv�lida!');
              if edit2.canfocus then
                Edit2.SetFocus;

            end;

          end
          else
          begin
            ShowMessage('Usu�rio n�o encontrado!');
            if edit1.canfocus then
              Edit1.SetFocus;
            DBLookupComboBox1.KeyValue := 0;
            Edit1.Text := '';
            Edit2.Text := '';
          end;

        except
          ShowMessage('C�digo inv�lido!');
        end
      end;

    end;
  end;

end;

procedure TTelaLogin.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure TTelaLogin.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    SpeedButton1Click(nil);
end;

end.

