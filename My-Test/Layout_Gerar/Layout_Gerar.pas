unit Layout_Gerar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZAbstractConnection, ZConnection,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, frxClass, frxDBSet, Vcl.StdCtrls,
  frxCross;

type
  TfrmLayout_Gerar = class(TForm)
    ZConnection1: TZConnection;
    JvPanel1: TJvPanel;
    sqlMy_test: TZQuery;
    frxsqlMy_test: TfrxDBDataset;
    sqlMy_testid_cliente: TIntegerField;
    sqlMy_testnome: TIntegerField;
    sqlMy_testendereco: TIntegerField;
    sqlMy_testnum_end: TIntegerField;
    frxsqlReceber: TfrxDBDataset;
    sqlReceber: TZQuery;
    sqlRecebernome: TWideStringField;
    sqlRecebernumero: TIntegerField;
    sqlRecebervencimento: TDateField;
    sqlRecebervalor: TFloatField;
    sqlReceberhistorico: TWideStringField;
    btnAula2: TButton;
    btnAula3: TButton;
    bbtnAula4: TButton;
    sqlVendas: TZQuery;
    frxsqlVendas: TfrxDBDataset;
    frxCrossObject1: TfrxCrossObject;
    sqlVendasdata: TDateField;
    sqlVendasdescricao: TWideStringField;
    sqlVendastotal: TFloatField;
    Button1: TButton;
    sqlMaster: TZQuery;
    frxsqlMaster: TfrxDBDataset;
    frxsqlDetail: TfrxDBDataset;
    sqlDetaiil: TZQuery;
    dsMaster: TDataSource;
    sqlMasterid_cliente: TIntegerField;
    sqlMasterdata: TDateField;
    sqlMastercliente: TWideStringField;
    sqlMastertotal: TFloatField;
    sqlMasterdesconto: TFloatField;
    sqlMastertotal_pagar: TFloatField;
    sqlDetaiilid_produto: TIntegerField;
    sqlDetaiildescricao: TWideStringField;
    sqlDetaiilvalor: TFloatField;
    sqlDetaiilqtde: TIntegerField;
    sqlDetaiiltotal: TFloatField;
    frxRelatorio: TfrxReport;
    procedure bbtnAula4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLayout_Gerar: TfrmLayout_Gerar;

implementation

{$R *.dfm}

procedure TfrmLayout_Gerar.bbtnAula4Click(Sender: TObject);
begin
  // abre a query
  sqlVendas.Close;
  sqlVendas.Open;

  // limpa o relat�rio anterior q foi carregado no frxReport
  // se vc deixou a propriedade StoreInDfm = True, n�o use a linha abaixo
  frxReport1.Clear;

  // carrega o relat�rio
  // se vc deixou a propriedade StoreInDfm = True, n�o use a linha abaixo
  frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'Relatorio_Vendas.fr3');

  // mostra o relatorio
  frxReport1.ShowReport;

  sqlVendas.Close
end;

end.
