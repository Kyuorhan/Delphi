unit uPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExExtCtrls, JvExtComponent, JvPanel,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, JvExMask, JvToolEdit, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ActnList, Vcl.ComCtrls, Vcl.Buttons, Data.DB, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.Math,
  frameLocalizar_Cliente;

type
  TfrmPedidos = class(TForm)
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    StatusBar1: TStatusBar;
    ActionList1: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    Timer1: TTimer;
    BalloonHint1: TBalloonHint;
    edtPeriodo1: TJvDateEdit;
    edtPeriodo2: TJvDateEdit;
    DBGrid1: TDBGrid;
    JvPanel2: TJvPanel;
    sqlPedidos: TZQuery;
    dsPedidos: TDataSource;
    updPedidos: TZUpdateSQL;
    sqlPedidos_Itens: TZQuery;
    updPedidos_Itens: TZUpdateSQL;
    dsPedidos_Itens: TDataSource;
    sqlPedidosid: TIntegerField;
    sqlPedidosid_vendedores: TIntegerField;
    sqlPedidosid_clientes: TIntegerField;
    sqlPedidosdata: TDateField;
    sqlPedidostotal_produtos: TFloatField;
    sqlPedidosdesconto: TFloatField;
    sqlPedidosdesconto_valor: TFloatField;
    sqlPedidostotal_pagar: TFloatField;
    sqlPedidosnome: TWideStringField;
    Query1: TZQuery;
    sqlVendedor: TZQuery;
    sqlVendedorid: TIntegerField;
    sqlVendedorvendedor: TWideStringField;
    sqlVendedorcomissao: TFloatField;
    dsVendedor: TDataSource;
    sqlPedidos_Itensid: TIntegerField;
    sqlPedidos_Itensid_pedidos: TIntegerField;
    sqlPedidos_Itensid_produtos: TIntegerField;
    sqlPedidos_Itensvalor: TFloatField;
    sqlPedidos_Itensqtde: TFloatField;
    sqlPedidos_Itenstotal: TFloatField;
    sqlPedidos_Itensproduto: TWideStringField;
    sqlPedidos_Itensabrev: TWideStringField;
    sqlPedidos_Itensid_unid_medidas: TIntegerField;
    actGerar_Parcelas: TAction;
    btnGerar_Parcelas: TSpeedButton;
    lbPeriodo: TLabel;
    sqlContas_Receber: TZQuery;
    sqlContas_Receberdata_documento: TDateField;
    sqlContas_Receberdesconto: TFloatField;
    sqlContas_Recebervalor: TFloatField;
    sqlContas_Recebernum_parcela: TWideStringField;
    dsContas_receber: TDataSource;
    updReceber: TZUpdateSQL;
    sqlContas_Receberid_cliente: TIntegerField;
    sqlContas_Receberid_documento: TIntegerField;
    sqlContas_Receberid_pedidos: TIntegerField;
    sqlContas_Receberid: TIntegerField;
    sqlContas_Receberdescricao: TWideStringField;
    sqlContas_Receberdata_vencimento: TDateField;
    sqlContas_Recebervencimento: TDateField;
    frameLocalizaCliente1: TframeLocalizaCliente;
    procedure edtClientesChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGerar_ParcelasClick(Sender: TObject);
    procedure actGerar_ParcelasExecute(Sender: TObject);
    procedure frameLocalizaCliente1edtClientesChange(Sender: TObject);
  private
    procedure LocalizarPedido;
    procedure CalculaTotalPedido;
    procedure GerarParcela;
    { Private declarations }
  public
    { Public declarations }
    SqlText_Pedidos, SqlText_Pedidos_Itens, SqlText_Contas_Receber : String;
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

uses My_Layout, uPedidos_Itens, uFuncoes, uConsulta_Vendedor, uPedidos_Parcelas,
  uContas_Receber;

procedure TfrmPedidos.actEditarExecute(Sender: TObject);
begin

  sqlPedidos_Itens.SQL.Text := SqlText_Pedidos_Itens
    + ' WHERE pi.id_pedidos = ' + sqlPedidosID.AsString;
    sqlPedidos_Itens.Open;

    frmPedidos_Itens := TfrmPedidos_Itens.Create(Self);
    frmPedidos_Itens.edtClientes.Text := sqlPedidosNome.AsString;
    frmPedidos_Itens.edtID_Cliente.Text     := sqlPedidosID_Clientes.AsString;
     //frmPedidos_Itens.edtVendedor.Text       := sqlVendedorVendedor.AsString;
    frmPedidos_Itens.edtID_Vendedor.Text    := sqlPedidosID_Vendedores.AsString;

    frmPedidos_Itens.edtData.Date           := sqlPedidosData.Value;
    CalculaTotalPedido;

  if frmPedidos_Itens.ShowModal = mrOK then
  begin

    sqlPedidos.Edit;
    sqlPedidos.FieldByName('Total_Produtos').Value    := frmPedidos_Itens.edtTotal_Produto.Value;
    sqlPedidos.FieldByName('Desconto').Value          := frmPedidos_Itens.edtDescont.Value;
    sqlPedidos.FieldByName('Desconto_Valor').Value    := frmPedidos_Itens.edtDescont_Valor.Value;
    sqlPedidos.FieldByName('Total_Pagar').Value       := frmPedidos_Itens.edtTotal_Pagar.Value;
    sqlPedidos.FieldByName('Data').Value              := frmPedidos_Itens.edtData.Date;

    sqlPedidos.FieldByName('ID_Clientes').AsString    := frmPedidos_Itens.edtID_Cliente.Text;
    sqlPedidos.FieldByName('ID_Vendedores').AsString  := frmPedidos_Itens.edtID_Vendedor.Text;
    //sqlPedidosNome.AsString           := frmPedidos_Itens.edtClientes.Text;
    sqlPedidos.Post;
    sqlPedidos.ApplyUpdates;

    sqlPedidos_Itens.First;
    while not sqlPedidos_Itens.Eof do
    begin
      sqlPedidos_Itens.Edit;

      sqlPedidos_ItensID_Pedidos.Value  := sqlPedidos.FieldByName('ID').Value;
      //sqlPedidos_ItensID_Pedidos.Value  := sqlPedidosID.AsString;
      sqlPedidos_Itens.Post;
      sqlPedidos_Itens.Next;
   end;

  sqlPedidos.Refresh;
  frmPedidos.sqlPedidos_Itens.ApplyUpdates;
  end;

  FreeAndNil(frmPedidos_Itens);
end;

procedure TfrmPedidos.CalculaTotalPedido;
var
  Total_Produto, Total_Pagar : Currency;
begin
  Total_Produto := frmPedidos.sqlPedidosTotal_Produtos.Value;

  sqlPedidos.Edit;
  sqlPedidosTotal_Produtos.Value := 0;
  sqlPedidos_Itens.First;

  while not frmPedidos.sqlPedidos_Itens.Eof do
  begin
    Total_Produto := sqlPedidosTotal_Produtos.Value +
    sqlPedidos_ItensTotal.Value;

    sqlPedidosTotal_Produtos.Value := Total_Produto;
    sqlPedidos_Itens.Next;
  end;
  frmPedidos_Itens.edtTotal_Produto.Value := sqlPedidosTotal_Produtos.Value;
end;

procedure TfrmPedidos.actExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente "Excluir" o registro?',
    'Estoque - Venda', MB_YESNO) = mrYes then
  begin
    try
      sqlPedidos.Delete;
      sqlPedidos.ApplyUpdates;
      MostraMensagem('Registro excluido com "Sucesso!"');

    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;

procedure TfrmPedidos.GerarParcela;
var
  Valor_Parcela, Total_Pagar: Currency;
  QtdeParcelas : Integer;
  Date, Vencimento: TDate;
  I: shortint;

begin
  sqlContas_Receber.sql.Text := 'SELECT * FROM contas_receber WHERE id = 0';
  sqlContas_Receber.Open;

  Total_Pagar   := frmPedidos_Parcelas.edtTotal_Pagar.Value;
  QtdeParcelas := StrToInt(frmPedidos_Parcelas.edtNum_Parcelas.Text);

  Valor_Parcela := SimpleRoundTo(Total_Pagar / QtdeParcelas, -2); // valor da parcela
  Vencimento := frmPedidos_Parcelas.edtVencimento.Date;
  try
    for I := 1 to QtdeParcelas do
    begin
      frmPedidos.sqlContas_Receber.Edit;
      frmPedidos.sqlContas_ReceberData_Documento.Value     := Date;
      frmPedidos.sqlContas_ReceberVencimento.Value         := Vencimento;
	  frmPedidos.sqlContas_ReceberValor.Value := Valor_Parcela;
	  frmPedidos.sqlContas_ReceberNum_Parcela.Value := Format('%.2d/%.d2', [i, QtdeParcelas]);
    Vencimento := IncMonth(Vencimento);
      if i = 1 then
        frmPedidos.sqlContas_ReceberValor.Value := Total_Pagar - (Valor_Parcela * (QtdeParcelas -1));

    end;
  except
    on E: Exception do
      raise Exception.Create('Error ao "Gerar" a parcela!' + E.Message);
  end;
end;

procedure TfrmPedidos.actGerar_ParcelasExecute(Sender: TObject);
begin
sqlContas_Receber.SQL.Text := SqlText_Contas_Receber + ' WHERE r.id = 0';
  sqlContas_Receber.Open;

  frmPedidos_Parcelas := TfrmPedidos_Parcelas.Create(Self);
  frmPedidos_Itens := TfrmPedidos_Itens.Create(Self);
  frmPedidos_Parcelas.edtClientes.Text          := frmPedidos.sqlPedidosNome.AsString;
  frmPedidos_Parcelas.edtID_Cliente.Text        := frmPedidos.sqlPedidosID_Clientes.AsString;
  frmPedidos_Parcelas.edtID_Pedidos.Text        := frmPedidos.sqlPedidosID.AsString;
  frmPedidos_Parcelas.edtTotal_Produto.Value    := frmPedidos.sqlPedidosTotal_Produtos.Value;
  frmPedidos_Parcelas.edtDescont.Value          := frmPedidos.sqlPedidosDesconto.Value;
  frmPedidos_Parcelas.edtDescont_Valor.Value    := frmPedidos.sqlPedidosDesconto_Valor.Value;
  frmPedidos_Parcelas.edtDescontExit(Sender);
  frmPedidos_Parcelas.edtDescont_ValorExit(Sender);

  if frmPedidos_Parcelas.ShowModal = mrOk then
  begin
    sqlContas_Receber.Append;
    sqlContas_ReceberID_Pedidos.AsString      := frmPedidos_Parcelas.edtID_Pedidos.Text;
    sqlContas_ReceberID_Cliente.AsString      := frmPedidos_Parcelas.edtID_Cliente.Text;
    sqlContas_ReceberID_Documento.AsString    := frmPedidos_Parcelas.edtTipo_Documento.KeyValue;
    sqlContas_ReceberNum_Parcela.Value        :=  frmPedidos_Parcelas.edtNum_Parcelas.Text;

    sqlContas_ReceberDescricao.Text
      := 'Pedido de Parcelas em '  + frmPedidos_Parcelas.edtNum_Parcelas.Text
       + 'x / da venda: ' + sqlPedidosNome.AsString;

    sqlContas_ReceberData_Documento.Value     := sqlPedidosData.Value;
    sqlContas_ReceberData_Vencimento.Value    := frmPedidos_Parcelas.edtVencimento.Date;
    sqlContas_ReceberValor.Value              := frmPedidos_Parcelas.edtTotal_Pagar.Value;

    sqlContas_Receber.Post;
    sqlContas_Receber.ApplyUpdates;

  end;
  FreeAndNil(frmPedidos_Parcelas)
end;

procedure TfrmPedidos.actNovoExecute(Sender: TObject);
begin
sqlPedidos_Itens.SQL.Text := SqlText_Pedidos_Itens + ' WHERE pi.id = 0';
  sqlPedidos_Itens.Open;

  frmPedidos_Itens := TfrmPedidos_Itens.Create(Self);
  if frmPedidos_Itens.ShowModal = mrOK then
  begin
    if True then

    Query1.sql.Text := 'SELECT * FROM pedidos WHERE id = 0';
    Query1.Open;
    Query1.Append;

    Query1.FieldByName('Total_Produtos').Value    := frmPedidos_Itens.edtTotal_Produto.Value;
    Query1.FieldByName('Desconto').Value          := frmPedidos_Itens.edtDescont.Value;
    Query1.FieldByName('Desconto_Valor').Value    := frmPedidos_Itens.edtDescont_Valor.Value;
    Query1.FieldByName('Total_Pagar').Value       := frmPedidos_Itens.edtTotal_Pagar.Value;
    Query1.FieldByName('Data').Value              := frmPedidos_Itens.edtData.Date;

    Query1.FieldByName('ID_Clientes').AsString    := frmPedidos_Itens.edtID_Cliente.Text;
    Query1.FieldByName('ID_Vendedores').AsString  := frmPedidos_Itens.edtID_Vendedor.Text;

    Query1.Post;
    Query1.ApplyUpdates;

    sqlPedidos_Itens.First;
    while not sqlPedidos_Itens.Eof do
    begin

      sqlPedidos_Itens.Edit;
      sqlPedidos_ItensID_Pedidos.Value  := Query1.FieldByName('ID').Value;
       //sqlPedidos_ItensID_Pedidos.Value  := sqlPedidosID.AsString;
      sqlPedidos_Itens.Post;
      sqlPedidos_Itens.Next;
    end;

    sqlPedidos.Refresh;
    frmPedidos.sqlPedidos_Itens.ApplyUpdates;
     //sqlPedidos.Locate('id',Query1.FieldByName('ID').Value, []);
  end;

  sqlPedidos.Refresh;
  frmPedidos.sqlPedidos_Itens.ApplyUpdates;
   //sqlPedidos.Locate('id',Query1.FieldByName('ID').Value, []);
  FreeAndNil(frmPedidos_Itens);
end;

procedure TfrmPedidos.actSalvarExecute(Sender: TObject);
begin
//
end;

procedure TfrmPedidos.btnGerar_ParcelasClick(Sender: TObject);
begin
//
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
  SqlText_Pedidos         := sqlPedidos.SQL.Text;
  SqlText_Pedidos_Itens   := sqlPedidos_Itens.SQL.Text;
  SqlText_Contas_Receber  := sqlContas_Receber.SQL.Text;
end;

procedure TfrmPedidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if (Key = #27) then
  begin
    Key := #0;
    Close;
  end;

end;

procedure TfrmPedidos.FormShow(Sender: TObject);
begin
  LocalizarPedido;
end;

procedure TfrmPedidos.frameLocalizaCliente1edtClientesChange(Sender: TObject);
begin
  LocalizarPedido;
end;

procedure TfrmPedidos.LocalizarPedido;
var
  Texto: String;
begin
  Texto := SqlText_Pedidos + ' WHERE p.id > 0';
  if frameLocalizaCliente1.edtClientes.Text <> '' then
    Texto := Texto + ' AND c.nome LIKE ' + Quotedstr(frameLocalizaCliente1.edtClientes.Text + '%');

  if StrToDateDef(edtPeriodo1.Text, 0) > 0 then
    Texto := Texto + ' AND p.data >= '
      + QuotedStr(FormatDateTime('yyyy-mm-dd', edtPeriodo1.Date));

  if StrToDateDef(edtPeriodo2.Text, 0) > 0 then
    Texto := Texto + ' AND p.data <= '
      + QuotedStr(FormatDateTime('yyyy-mm-dd', edtPeriodo2.Date));

  Texto := Texto + ' ORDER BY p.data';

  sqlPedidos.SQL.Text := Texto;
  sqlPedidos.Open;
  sqlVendedor.Open;
end;

procedure TfrmPedidos.edtClientesChange(Sender: TObject);
begin
  LocalizarPedido;
end;

end.
