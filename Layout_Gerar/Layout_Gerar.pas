unit Layout_Gerar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZAbstractConnection, ZConnection,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, frxClass, frxDBSet, Vcl.StdCtrls,
  frxCross, Vcl.Buttons, ZSqlUpdate, frxBarcode, Vcl.Grids, Vcl.DBGrids;

type
  TfrmLayout_Gerar = class(TForm)
    sqlCliente: TZQuery;
    RelClientes: TfrxDBDataset;
    RelReceber: TfrxDBDataset;
    sqlReceber: TZQuery;
    sqlVendas: TZQuery;
    frxCrossObject1: TfrxCrossObject;
    dsMaster: TDataSource;
    Panel1: TPanel;
    btnAula2: TSpeedButton;
    btnAula5: TSpeedButton;
    btnAula4: TSpeedButton;
    btnAula3: TSpeedButton;
    sqlDocumento: TZQuery;
    sqlDetail: TZQuery;
    sqlMaster: TZQuery;
    RelMaster: TfrxDBDataset;
    RelDetail: TfrxDBDataset;
    frxReport: TfrxReport;
    updMaster: TZUpdateSQL;
    btnAula6: TSpeedButton;
    RelScript_Variaveis: TfrxDBDataset;
    btnAula7_0: TSpeedButton;
    sqlEtiquetas: TZQuery;
    btnImprimir: TSpeedButton;
    btnVizualizar: TSpeedButton;
    frxBarCodeObject1: TfrxBarCodeObject;
    RelEtiquetas: TfrxDBDataset;
    btnAula7_1: TSpeedButton;
    sqlClienteid: TIntegerField;
    sqlClientenome: TWideStringField;
    sqlClientesexo: TWideStringField;
    sqlClienteendereco: TWideStringField;
    sqlClientenum_end: TWideStringField;
    sqlClientedata_nascimento: TDateField;
    sqlRecebernome: TWideStringField;
    sqlReceberid: TIntegerField;
    sqlRecebervencimento: TDateField;
    sqlRecebervalor: TFloatField;
    sqlReceberhistorico: TWideStringField;
    sqlDocumentoid: TLongWordField;
    sqlDocumentodocumento: TWideStringField;
    sqlVendasdata: TDateField;
    sqlVendasdocumento: TWideStringField;
    sqlVendastotal: TFloatField;
    frxVendas: TfrxDBDataset;
    sqlMasterid: TIntegerField;
    sqlMasterid_clientes: TIntegerField;
    sqlMasterdata: TDateField;
    sqlMasternome: TWideStringField;
    sqlMastervalor: TFloatField;
    sqlMasterdesc: TFloatField;
    sqlMastervalor_total: TFloatField;
    sqlDetailid: TIntegerField;
    sqlDetailid_pedidos: TIntegerField;
    sqlDetailproduto: TWideStringField;
    sqlDetailvalor: TFloatField;
    sqlDetailqtde: TIntegerField;
    sqlDetailtotal: TFloatField;
    sqlEtiquetasid: TIntegerField;
    sqlEtiquetasproduto: TWideStringField;
    sqlEtiquetaspreco_compra: TFloatField;
    sqlEtiquetaspreco_venda: TFloatField;
    sqlEtiquetasmargem_lucro: TFloatField;
    sqlEtiquetascod_barras: TWideStringField;
    sqlEtiquetascod_referencias: TWideStringField;
    Panel2: TPanel;
    btnCliente: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure btnAula2Click(Sender: TObject);
    procedure btnAula3Click(Sender: TObject);
    procedure btnAula4Click(Sender: TObject);
    procedure btnAula5Click(Sender: TObject);
    procedure btnAula6Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnAula7_0Click(Sender: TObject);
    procedure btnAula7_1Click(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
  private
    function Ler_Arquivo(AArquivo: String): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLayout_Gerar: TfrmLayout_Gerar;

implementation

{$R *.dfm}

uses udmPrincipal, uClientes_Pesquisa;

procedure TfrmLayout_Gerar.btnAula2Click(Sender: TObject);
var
  path : String;
begin
  path := ExtractFilePath(ParamStr(0))+ 'report_data\';

  // abre a query
  sqlCliente.Close;
  sqlCliente.Open;

  // limpa o relatório anterior q foi carregado no frxReport
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.Clear;

  // carrega o relatório
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.LoadFromFile(Path +'RelClientes.fr3');

  // mostra o relatorio
  frxReport.ShowReport;

  sqlVendas.Close
end;

procedure TfrmLayout_Gerar.btnAula3Click(Sender: TObject);
var
  path : String;
begin
  path := ExtractFilePath(ParamStr(0))+ 'report_data\';

  // abre a query
  sqlReceber.Close;
  sqlReceber.Open;

  // limpa o relatório anterior q foi carregado no frxReport
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.Clear;

  // carrega o relatório
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.LoadFromFile(Path +'RelReceber.fr3');

  // mostra o relatorio
  frxReport.ShowReport;

  sqlReceber.Close
end;

procedure TfrmLayout_Gerar.btnAula4Click(Sender: TObject);
var
  path : String;
begin
  path := ExtractFilePath(ParamStr(0))+ 'report_data\';

  // abre a query
  sqlVendas.Close;
  sqlVendas.Open;

  // limpa o relatório anterior q foi carregado no frxReport
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.Clear;

  // carrega o relatório
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.LoadFromFile(Path +'RelVendas.fr3');

  // mostra o relatorio
  frxReport.ShowReport;

  sqlVendas.Close
end;

procedure TfrmLayout_Gerar.btnAula5Click(Sender: TObject);
var
  path : String;
begin
  path := ExtractFilePath(ParamStr(0))+ 'report_data\';

  // abre a query
  sqlMaster.Close;
  sqlDetail.Close;
  sqlMaster.Open;
  sqlDetail.Open;

  // limpa o relatório anterior q foi carregado no frxReport
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.Clear;

  // carrega o relatório
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.LoadFromFile(Path +'RelMaster_Detail.fr3');

  // mostra o relatorio
  frxReport.ShowReport;

  sqlMaster.Close;
  sqlDetail.Close;
end;

procedure TfrmLayout_Gerar.btnAula6Click(Sender: TObject);
var
  path : String;
begin
  path := ExtractFilePath(ParamStr(0))+ 'report_data\';

  // limpa o relatório anterior q foi carregado no frxReport
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.Clear;

  // carrega o relatório
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.LoadFromFile(Path +'RelScript_Variáveis.fr3');
  // mostra o relatorio
  frxReport.ShowReport;

  sqlEtiquetas.Close;
end;

procedure TfrmLayout_Gerar.btnAula7_0Click(Sender: TObject);
var
  path : String;
begin
  path := ExtractFilePath(ParamStr(0))+ 'report_data\';

  // abre a query
  sqlEtiquetas.Close;
  sqlEtiquetas.Open;

  // limpa o relatório anterior q foi carregado no frxReport
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.Clear;

  // carrega o relatório
  // se vc deixou a propriedade StoreInDfm = True, não use a linha abaixo
  frxReport.LoadFromFile(Path +'RelEtiquetas.fr3');
  // mostra o relatorio
  frxReport.ShowReport;

  sqlEtiquetas.Close;
end;

procedure TfrmLayout_Gerar.btnAula7_1Click(Sender: TObject);
var
  i, j: Integer;
  x, path: String;
begin
  path := ExtractFilePath(ParamStr(0))+ 'report_data\';

  // ABRE TABELA COM DADOS
  sqlEtiquetas.Close;
  sqlEtiquetas.Open;

  // LIMPA TABELA TEMPORARIA
  dmPrincipal.qTemp.Close;
  dmPrincipal.qTemp.SQL.Text := 'SELECT id, produto, preco_venda, ' +
    'estoque, unid_medidas, cod_barras FROM produtos';
  dmPrincipal.qTemp.Open;

  // PULAR ETIQUETAS DO INICIO
  x := '0';
  if InputQuery('Pular Etiquetas', 'Informe a quantidade de etiquetas a pular', x) then
  begin
    i := StrToIntDef(x, 0);
    if i > 0 then
    begin
      for j := 1 to sqlEtiquetas.FieldByname('estoque').AsInteger do
      begin
        dmPrincipal.qTemp.Append;
        dmPrincipal.qTemp.FieldByName('id').AsString := '';
        dmPrincipal.qTemp.Post;
      end;
    end;
  end;

  while not sqlEtiquetas.Eof do
  begin
    for i := 1 to sqlEtiquetas.FieldByname('estoque').AsInteger do
    begin
      dmPrincipal.qTemp.Append;
      dmPrincipal.qTemp.FieldByName('id').AsString          := sqlEtiquetas.FieldByname('id').AsString;
      dmPrincipal.qTemp.FieldByName('descricao').AsString   := sqlEtiquetas.FieldByname('descricao').AsString;
      dmPrincipal.qTemp.FieldByName('marca').AsString       := sqlEtiquetas.FieldByname('marca').AsString;
      dmPrincipal.qTemp.FieldByName('preco_venda').AsString := FormatFloat(',0.00',
            + sqlEtiquetas.FieldByname('preco_venda').AsCurrency);
      dmPrincipal.qTemp.FieldByName('cod_barras').AsString  := sqlEtiquetas.FieldByname('cod_barras').AsString;
      dmPrincipal.qTemp.Post;
    end;
    sqlEtiquetas.Next;
  end;
  sqlEtiquetas.Close;
  frxReport.Clear;
  frxReport.LoadFromFile(Path +'RelEtiquetas.fr3');
  frxReport.ShowReport;
end;

procedure TfrmLayout_Gerar.btnClienteClick(Sender: TObject);
begin
  fClientes_Pesquisa := TfClientes_Pesquisa.Create(Self);
  fClientes_Pesquisa.ShowModal;
  FreeAndNil(fClientes_Pesquisa);
end;

procedure TfrmLayout_Gerar.btnImprimirClick(Sender: TObject);
begin
  if sqlEtiquetas.IsEmpty then
  begin
    Application.MessageBox(Pchar('Seleção sem registros'), Pchar(Caption),
      MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1 + MB_SYSTEMMODAL);
    Exit;
  end;

  if Ler_Arquivo('RelEtiquetas.fr3') then
  begin
    frxReport.DataSet := RelEtiquetas;
    if TComponent(Sender).Name = 'btnImprimir' then
      frxReport.ShowReport
    else begin
      frxReport.PrepareReport;
      frxReport.Print;
    end;
  end;
end;

function TfrmLayout_Gerar.Ler_Arquivo(AArquivo: String): Boolean;
var
  path : String;
begin
  path := ExtractFilePath(ParamStr(0))+ 'report_data\' + AArQuivo;
  Result := FileExists(path);
  if Result then
    frxReport.LoadFromFile(Path)
  else Exception.Create('A pasta relatórios não pôde ser criada!' + SlineBreaK +
     'Verifique as permissões de acesso com o Administrador da rede!');
end;

end.
