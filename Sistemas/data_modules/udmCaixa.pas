unit udmCaixa;

interface

uses
  System.SysUtils, System.Classes, udmPrincipal, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZSqlUpdate;

type
  TdmCaixa = class(TDataModule)
    sqlCaixas: TZQuery;
    sqlCaixasid: TLongWordField;
    sqlCaixascaixa: TWideStringField;
    sqlCaixasativo: TWideStringField;
    dsCaixas: TDataSource;
    sqlPlano_contas: TZQuery;
    dsPlano_contas: TDataSource;
    sqlPlano_contasid: TLongWordField;
    sqlPlano_contasplano_contas: TWideStringField;
    sqlPlano_contasestrutura: TWideStringField;
    sqlPlano_contassituacao: TWideStringField;
    updCaixas_Aberturas: TZUpdateSQL;
    sqlCaixas_Movimentos: TZQuery;
    dsCaixas_Movimentos: TDataSource;
    updCaixas_Movimentos: TZUpdateSQL;
    sqlCaixas_Aberturas: TZQuery;
    dsCaixas_Aberturas: TDataSource;
    sqlCaixas_Aberturasid: TLongWordField;
    sqlCaixas_Aberturascaixas_id: TLongWordField;
    sqlCaixas_Aberturasdata: TDateField;
    sqlCaixas_Aberturassituacao: TWideStringField;
    sqlCaixas_Aberturastroco: TFloatField;
    sqlCaixas_Aberturasentradas: TFloatField;
    sqlCaixas_Aberturassaidas: TFloatField;
    sqlCaixas_Aberturassaldo: TFloatField;
    sqlCaixas_Aberturasdata_hora_fecham: TDateTimeField;
    sqlCaixas_Aberturascaixa: TWideStringField;
    sqlCaixas_Movimentosid: TLongWordField;
    sqlCaixas_Movimentoscaixas_aberturas_id: TLongWordField;
    sqlCaixas_Movimentosplano_contas_id: TLongWordField;
    sqlCaixas_Movimentosdata: TDateField;
    sqlCaixas_Movimentoshistorico: TWideStringField;
    sqlCaixas_Movimentosvalor: TFloatField;
    sqlCaixas_Movimentosentrada: TFloatField;
    sqlCaixas_Movimentossaida: TFloatField;
    sqlCaixas_Movimentostipo: TWideStringField;
    sqlCaixas_Movimentosdata_hora_lancam: TDateTimeField;
    sqlCaixas_Movimentossituacao: TWideStringField;
    sqlCaixas_Movimentoscaixa: TWideStringField;
    sqlCaixas_Movimentosplano_contas: TWideStringField;
    sqlPlano_contastipo: TWideStringField;
    sqlNatureza: TZQuery;
    sqlNaturezaid: TIntegerField;
    sqlNaturezanatureza: TWideStringField;
    sqlNaturezatipo: TWideStringField;
    dsNatureza: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCaixa: TdmCaixa;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
