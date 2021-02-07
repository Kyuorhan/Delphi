unit uPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExExtCtrls, JvExtComponent, JvPanel,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, JvExMask, JvToolEdit, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ActnList, Vcl.ComCtrls, Vcl.Buttons, Data.DB, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

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
    actQuitar: TAction;
    actEstornar: TAction;
    Timer1: TTimer;
    BalloonHint1: TBalloonHint;
    edtLocalizar: TEdit;
    Label2: TLabel;
    edtVenc1: TJvDateEdit;
    Label1: TLabel;
    edtVenc2: TJvDateEdit;
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
    sqlPedidos_Itensid: TIntegerField;
    sqlPedidos_Itensid_produtos: TIntegerField;
    sqlPedidos_Itensvalor: TFloatField;
    sqlPedidos_Itensqtde: TFloatField;
    sqlPedidos_Itenstotal: TFloatField;
    sqlPedidos_Itensproduto: TWideStringField;
    sqlPedidos_Itensabrev: TWideStringField;
    sqlPedidos_Itensid_unid_medidas: TIntegerField;
    sqlPedidos_Itensid_pedidos: TIntegerField;
    procedure edtLocalizarChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure LocalizarPedido;
    { Private declarations }
  public
    { Public declarations }
    SqlText_Vendas, SqlText_Vendas_Pedidos: String;
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

uses My_Layout, uVenda_Pedidos, uFuncoes;

procedure TfrmPedidos.actEditarExecute(Sender: TObject);
begin
//
end;

procedure TfrmPedidos.actExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente "Excluir" o registro?',
    'Estoque - Venda', MB_YESNO) = mrYes then
  begin
    try
      sqlVendas.Delete;
      sqlVendas.ApplyUpdates;
      MostraMensagem('Registro excluido com "Sucesso!"');

    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;

procedure TfrmPedidos.actNovoExecute(Sender: TObject);
begin
//
end;

procedure TfrmPedidos.actSalvarExecute(Sender: TObject);
begin
//
end;

procedure TfrmPedidos.btnNovoClick(Sender: TObject);
begin
begin
  sqlVendas_Pedidos.SQL.Text := SqlText_Vendas_Pedidos + ' WHERE vp.id = 0';
  sqlVendas_Pedidos.Open;

  frmVendas_Pedidos := TfrmVendas_Pedidos.Create(Self);
  if frmVendas_Pedidos.ShowModal = mrOK then
  begin
    sqlVendas.Append;
    sqlVendasTotal_Produtos.Value    := frmVendas_Pedidos.edtTotal_Produto.Value;
    sqlVendasDesconto.Value          := frmVendas_Pedidos.edtDescont.Value;
    sqlVendasDesconto_Valor.Value    := frmVendas_Pedidos.edtDescont_Valor.Value;
    sqlVendasTotal_Pagar.Value       := frmVendas_Pedidos.edtTotal_Pagar.Value;
    sqlVendasData.Value              := frmVendas_Pedidos.edtData.Date;

    sqlVendasID_Clientes.AsString    := frmVendas_Pedidos.edtID_Cliente.Text;
    sqlVendasID_Vendedores.AsString  := frmVendas_Pedidos.edtID_Vendedor.Text;
    sqlVendasNome.AsString           := frmVendas_Pedidos.edtClientes.Text;
    sqlVendas.Post;
    sqlVendas.ApplyUpdates;

    ShowMessage('Pedido: ' + sqlVendasID.AsString);
    sqlVendas_Pedidos.First;

    while not sqlVendas_Pedidos.Eof do
    begin
      sqlVendas_Pedidos.Append;
      sqlVendas_PedidosID_Vendas.Value := sqlVendasID.Value;
      sqlVendas_Pedidos.Post;
      sqlVendas_Pedidos.Next;
    end;


  end;

  FreeAndNil(frmVendas_Pedidos);
end;
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
  SqlText_Vendas := sqlVendas.SQL.Text;
  SqlText_Vendas_Pedidos := sqlVendas_Pedidos.SQL.Text;
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

procedure TfrmPedidos.LocalizarPedido;
var
  Texto: String;
begin
  Texto := SqlText_Vendas + ' WHERE v.id > 0';
  if edtLocalizar.Text <> '' then
    Texto := Texto + ' AND c.nome LIKE ' + Quotedstr(edtLocalizar.Text + '%');
  sqlVendas.SQL.Text := Texto;
  sqlVendas.Open;
end;

procedure TfrmPedidos.edtLocalizarChange(Sender: TObject);
begin
  LocalizarPedido;
end;

end.
