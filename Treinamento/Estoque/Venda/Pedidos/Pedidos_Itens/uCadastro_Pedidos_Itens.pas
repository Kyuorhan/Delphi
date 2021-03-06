unit uCadastro_Pedidos_Itens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, JvExExtCtrls, JvExtComponent, JvPanel,
  JvBaseEdits, Vcl.Mask, JvExMask, JvToolEdit;

type
  TfrmCadastro_Pedidos_itens = class(TForm)
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    StatusBar1: TStatusBar;
    BalloonHint1: TBalloonHint;
    JvPanel1: TJvPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtValor: TJvCalcEdit;
    edtTotal: TJvCalcEdit;
    Label8: TLabel;
    edtID_Produto: TEdit;
    edtQTDE: TJvCalcEdit;
    edtDescricao: TEdit;
    Label1: TLabel;
    ActionList2: TActionList;
    actSalvar1: TAction;
    actCancelar: TAction;
    Timer1: TTimer;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtQTDEChange(Sender: TObject);
  private
    procedure CalcularQTDE;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Pedidos_itens: TfrmCadastro_Pedidos_itens;

implementation

{$R *.dfm}

uses uFuncoes, uConsulta_Produtos;

procedure TfrmCadastro_Pedidos_itens.CalcularQTDE;
var
  Total, Valor, QTDE : Currency;
begin
  Valor := edtValor.Value;
  QTDE := edtQtde.Value;

  Total := QTDE * Valor;
  if Total <> 0 then
  begin
    edtTotal.Value := Total;
  end;
end;


procedure TfrmCadastro_Pedidos_itens.edtDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = '+' then
  begin
    Key := #0;
    frmConsulta_Produto := TfrmConsulta_Produto.Create(Nil);
    frmConsulta_Produto.ShowModal;
    edtDescricao.Text   := frmConsulta_Produto.sqlProdutosproduto.AsString;
    edtID_Produto.Text  := frmConsulta_Produto.sqlProdutosID.AsString;
    edtValor.Value      := frmConsulta_Produto.sqlProdutosPreco_Venda.Value;
    FreeAndNil(frmConsulta_Produto);
  end;

end;

procedure TfrmCadastro_Pedidos_itens.edtQTDEChange(Sender: TObject);
begin
  CalcularQTDE;
end;

procedure TfrmCadastro_Pedidos_itens.FormKeyPress(Sender: TObject; var Key: Char);
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



procedure TfrmCadastro_Pedidos_itens.actCancelarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro_Pedidos_itens.actSalvar1Execute(Sender: TObject);
begin
  if edtValor.Value = 0.00 then
  begin
    MostraAviso('O Valor deve ser Informado!');
    edtValor.SetFocus;
    Exit;
  end;

  if ((edtQtde.Text = '') or (edtQtde.Value = 0.00)) then
  begin
    MostraAviso('O campo Quantidade(QTDE) � Obrigat�rio!');
    edtQtde.SetFocus;
    Exit;
  end;

  if (edtID_Produto.Text = '') then
  begin
    MostraAviso('Selecione um Produto Cadastrado para obter c�digo');
    edtValor.SetFocus;
    Exit;
  end;

  if ((edtTotal.Text = '') or (edtTotal.Value = 0.00)) then
  begin
    MostraAviso('Ensire ')
  end;


  ModalResult := mrOk;
end;

procedure TfrmCadastro_Pedidos_itens.btnCancelarClick(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Pedidos_itens.btnSalvarClick(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Pedidos_itens.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
