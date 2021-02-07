unit uPedidos_Itens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvToolEdit, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Mask, JvExMask, JvBaseEdits,
  Vcl.ExtCtrls, Vcl.ActnList, Vcl.ComCtrls, Vcl.Buttons, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TfrmPedidos_Itens = class(TForm)
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    StatusBar1: TStatusBar;
    ActionList1: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    ActionList2: TActionList;
    actSalvar1: TAction;
    actCancelar: TAction;
    Timer1: TTimer;
    BalloonHint1: TBalloonHint;
    JvPanel1: TJvPanel;
    edtTotal_Produto: TJvCalcEdit;
    Label4: TLabel;
    edtDescont: TJvCalcEdit;
    Label3: TLabel;
    edtDescont_Valor: TJvCalcEdit;
    lbDesconto_Valor: TLabel;
    edtTotal_Pagar: TJvCalcEdit;
    Label1: TLabel;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    edtData: TJvDateEdit;
    Label2: TLabel;
    edtID_Vendedor: TEdit;
    edtVendedor: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    edtClientes: TEdit;
    lbect1: TLabel;
    Label7: TLabel;
    edtID_Cliente: TEdit;
    dbgPedidos_Itens: TJvDBGrid;
    btnNovo: TSpeedButton;
    procedure edtTotal_ProdutoChange(Sender: TObject);
    procedure edtDescontExit(Sender: TObject);
    procedure edtDescont_ValorExit(Sender: TObject);
    procedure edtClientesKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
  private
    procedure CalculaTotalPedido;
    { Private declarations }
  public
    { Public declarations }
    SqlText_Vendas : String;
  end;

var
  frmPedidos_Itens: TfrmPedidos_Itens;

implementation

{$R *.dfm}

uses uConsulta_Clientes, uPedidos, uFuncoes, uConsulta_Vendedor,
  uCadastro_Pedidos_Itens;

procedure TfrmPedidos_Itens.actCancelarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedidos_Itens.actEditarExecute(Sender: TObject);
begin
  frmCadastro_Pedidos_Itens := TfrmCadastro_Pedidos_Itens.Create(Self);

  frmCadastro_Pedidos_itens.edtID_Produto.Text
    := frmPedidos.sqlPedidos_ItensID_Produtos.AsString;
  frmCadastro_Pedidos_itens.edtValor.Value  := frmPedidos.sqlPedidos_ItensValor.Value;
  frmCadastro_Pedidos_itens.edtQTDE.Value   := frmPedidos.sqlPedidos_ItensQTDE.Value;
  frmCadastro_Pedidos_Itens.edtTotal.Value  := frmPedidos.sqlPedidos_ItensTotal.Value;

  if (frmCadastro_Pedidos_Itens.ShowModal) = mrOk then
  begin

    CalculaTotalPedido;

    frmPedidos.sqlPedidos_Itens.Edit;
    frmPedidos.sqlPedidos_ItensID_Produtos.AsString
      := frmCadastro_Pedidos_itens.edtID_Produto.Text;
    frmPedidos.sqlPedidos_ItensValor.Value   := frmCadastro_Pedidos_itens.edtValor.Value;
    frmPedidos.sqlPedidos_ItensQTDE.Value    := frmCadastro_Pedidos_itens.edtQTDE.Value;
    frmPedidos.sqlPedidos_ItensTotal.Value   := frmCadastro_Pedidos_itens.edtTotal.Value;
    frmPedidos.sqlPedidos_Itens.Post;
  end;

end;

procedure TfrmPedidos_Itens.actExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente "Excluir" o registro?',
    'Vendas - Pedidos/Itens', MB_YESNO) = mrYes then
  begin
    try
      frmPedidos.sqlPedidos_Itens.Delete;
      frmPedidos.sqlPedidos_Itens.ApplyUpdates;
      MostraMensagem('Registro excluido com "Sucesso!"');
      CalculaTotalPedido;
    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;

procedure TfrmPedidos_Itens.actNovoExecute(Sender: TObject);
begin
  frmCadastro_Pedidos_Itens := TfrmCadastro_Pedidos_Itens.Create(Self);
  if (frmCadastro_Pedidos_Itens.ShowModal) = mrOk then
  begin
    frmPedidos.sqlPedidos_Itens.Append;
    frmPedidos.sqlPedidos_ItensID_Produtos.AsString := frmCadastro_Pedidos_itens.edtID_Produto.Text;
    frmPedidos.sqlPedidos_ItensProduto.AsString     := frmCadastro_Pedidos_itens.edtDescricao.Text;
    frmPedidos.sqlPedidos_ItensValor.Value          := frmCadastro_Pedidos_itens.edtValor.Value;
    frmPedidos.sqlPedidos_ItensQTDE.Value           := frmCadastro_Pedidos_itens.edtQTDE.Value;
    frmPedidos.sqlPedidos_ItensTotal.Value          := frmCadastro_Pedidos_itens.edtTotal.Value;
    frmPedidos.sqlPedidos_Itens.Post;
  end;

  CalculaTotalPedido;
end;

procedure TfrmPedidos_Itens.actSalvar1Execute(Sender: TObject);
begin
  if edtClientes.Text = '' then
  begin
    MostraAviso('Campo "Cliente" � obrigat�rio');
    if lbect1.Visible = False then
    begin
      lbect1.Visible := True;
      edtClientes.SetFocus;
      Exit;
    end;
  end;

  if StrToDateDef(edtData.Text, 0) = 0 then
  begin
    MostraAviso('Ensira uma do "Data do Pedido"');
    edtData.SetFocus;
    Exit;
  end;

  if (edtTotal_Pagar.Value <= 0.00) or (edtTotal_Pagar.Value <= 0) then
  begin
    MostraAviso('O valor Total a Pagar deve ser Enserido!');
    edtTotal_Pagar.SetFocus;
    Exit;
  end;

  ModalResult := mrOk;
end;

procedure TfrmPedidos_Itens.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedidos_Itens.btnEditarClick(Sender: TObject);
begin
//
end;

procedure TfrmPedidos_Itens.btnExcluirClick(Sender: TObject);
begin
//
end;

procedure TfrmPedidos_Itens.CalculaTotalPedido;
var
  Total_Produto, Total_Pagar : Currency;
begin
  Total_Produto := frmPedidos.sqlPedidosTotal_Produtos.Value;

  frmPedidos.sqlPedidos.Edit;
  frmPedidos.sqlPedidosTotal_Produtos.Value := 0;
  frmPedidos.sqlPedidos_Itens.First;

  while not frmPedidos.sqlPedidos_Itens.Eof do
  begin
    Total_Produto := frmPedidos.sqlPedidosTotal_Produtos.Value +
    frmPedidos.sqlPedidos_ItensTotal.Value;

    frmPedidos.sqlPedidosTotal_Produtos.Value := Total_Produto;
    frmPedidos.sqlPedidos_Itens.Next;
  end;
  edtTotal_Produto.Value := frmPedidos.sqlPedidosTotal_Produtos.Value;
end;

procedure TfrmPedidos_Itens.btnNovoClick(Sender: TObject);
begin
//
end;

procedure TfrmPedidos_Itens.btnSalvarClick(Sender: TObject);
begin
//
end;

procedure TfrmPedidos_Itens.edtClientesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = '+' then
  begin
    Key := #0;
    frmConsulta := TfrmConsulta.Create(nil);
    frmConsulta.ShowModal;
    edtID_Cliente.Text  := frmConsulta.sqlClientesID.AsString;
    edtClientes.Text    := frmConsulta.sqlClientesNome.AsString;
    FreeAndNil(frmConsulta);
  end;
end;

procedure TfrmPedidos_Itens.edtDescontExit(Sender: TObject);
var
  Total_Produto, Desc : Currency;
begin
  Total_Produto := edtTotal_Produto.Value;
  Desc := edtDescont.Value;

  if not (Desc <= 0.00) then
  begin
    edtDescont_Valor.Value := ((Desc * Total_Produto)/ 100);
    edtTotal_Pagar.Value := (Total_Produto - edtDescont_Valor.Value);
  end;

  if (edtTotal_Pagar.Value < 0.00) then
  begin
    edtTotal_Pagar.Value    := 0.00;
    Exit;
  end;
end;

procedure TfrmPedidos_Itens.edtDescont_ValorExit(Sender: TObject);
var
  Total_Produto, Desc_Valor : Currency;
begin
  Total_Produto := edtTotal_Produto.Value;
  Desc_Valor    := edtDescont_Valor.Value;

  if not (Desc_Valor <= 0.00) then
  begin
    edtDescont.Value      := ((Desc_Valor / Total_Produto)* 100);
    edtTotal_Pagar.Value  := (Total_Produto - Desc_Valor);
  end;

  if (edtTotal_Pagar.Value < 0.00) then
  begin
    edtTotal_Pagar.Value := 0.00;
    Exit
  end;

end;

procedure TfrmPedidos_Itens.edtTotal_ProdutoChange(Sender: TObject);
var
  Total_Produto : Currency;
begin
  Total_Produto := edtTotal_Produto.Value;
  if (edtDescont.Value <= 0.00) then
  begin
    edtTotal_Pagar.Value := edtTotal_Produto.Value;
    if (edtDescont_Valor.Value <= 0.00) then
    begin
      edtTotal_Pagar.Value := edtTotal_Produto.Value;
      Exit;
    end;
  end;

  if (edtDescont.Value <> 0.00) or (edtDescont_Valor.Value <> 0.00) then
  begin
    edtDescont.Value        := 0.00;
    edtDescont_Valor.Value  := 0.00;
  end;

end;

procedure TfrmPedidos_Itens.edtVendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = '+' then
  begin
    Key := #0;
    frmConsulta_Vendedor := TfrmConsulta_Vendedor.Create(nil);
    frmConsulta_Vendedor.ShowModal;
    edtID_Vendedor.Text := frmConsulta_Vendedor.sqlVendedorID.AsString;
    edtVendedor.Text    := frmConsulta_Vendedor.sqlVendedorVendedor.AsString;
    FreeAndNil(frmConsulta_Vendedor);
  end;
end;

procedure TfrmPedidos_Itens.FormCreate(Sender: TObject);
begin
  SqlText_Vendas := frmPedidos.sqlPedidos.SQL.Text;
end;

procedure TfrmPedidos_Itens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfrmPedidos_Itens.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
