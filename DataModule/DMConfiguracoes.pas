{********************************************************}
{                                                        }
{               Gerencial Informatica                    }
{                     ALBATROZ                           }
{     Sistema Integrado de Administração de Empresa      }
{            Copyright (c) 2003 - 2006                   }
{                                                        }
{********************************************************}
unit DMConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, SqlExpr, Provider, StdCtrls, Grids,
  DBGrids, ExtCtrls, Buttons, DBCtrls, ComCtrls, ImgList, QImgList;

type
  TDMIMG = class(TDataModule)
    ImgPgControl: TImageList;
    ImgBotoesCadastro: TImageList;
    ImgPrincipal: TImageList;
    ImgFinanceiro: TImageList;
    ImgAdministracao: TImageList;
    ImgModulos: TImageList;
    ImgFatura: TImageList;
    ImgStatusBar: TImageList;
    ImageListperfil: TImageList;
    ImageListCaixaRapido: TImageList;
    ImageListSelecao: TImageList;
    ImageConsultaCliForne: TImageList;
    ImageConsultaEstoque: TImageList;
    ImgStatusBarFat: TImageList;
    ImgCooperativa: TImageList;
    ImgStatusBarAlocacao: TImageList;
    ImageCompra: TImageList;
    ImageConfiguracoes: TImageList;
    ImageContabilidade: TImageList;
    ImageCRM: TImageList;
    ImageEstoque: TImageList;
    ImageListCustos: TImageList;
    ImageListLivroFiscal: TImageList;
    ImageListLogistica: TImageList;
    ImageListPessoal: TImageList;
    ImageListPatrimonio: TImageList;
    ImageListOrdemServico: TImageList;
    ImageListFormasPagamentos: TImageList;
    ImageListFrenteLoja: TImageList;
    ImageListFrenteLojaBackup: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMIMG: TDMIMG;

implementation

uses DMPrincipal;

{$R *.xfm}

end.

