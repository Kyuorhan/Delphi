unit uCadastro_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ActnList,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits, Vcl.DBLookup, Vcl.DBCtrls;

type
  TfrmCadastro_Produto = class(TForm)
    JvPanel1: TJvPanel;
    ActionList2: TActionList;
    actSalvar1: TAction;
    actCancelar: TAction;
    Timer1: TTimer;
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    BalloonHint1: TBalloonHint;
    StatusBar1: TStatusBar;
    lbDescricao: TLabel;
    lbP_Compra: TLabel;
    lbUnidade: TLabel;
    lbLucro: TLabel;
    lbGrupo: TLabel;
    lbMarca: TLabel;
    lbVenda: TLabel;
    lbCod_Barras: TLabel;
    lbCod_Ref: TLabel;
    lbEstoque: TLabel;
    edtDescricao: TEdit;
    edtCod_Barra: TEdit;
    edtMarca: TComboBox;
    edtEstoque: TEdit;
    edtCod_Referencia: TEdit;
    edtUnid_Medidas: TDBLookupComboBox;
    edtProdutos_Grupo: TDBLookupComboBox;
    edtM_Lucro: TJvCalcEdit;
    edtP_Venda: TJvCalcEdit;
    edtP_Compra: TJvCalcEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtP_VendaExit(Sender: TObject);
    procedure edtM_LucroExit(Sender: TObject);
    procedure edtP_CompraExit(Sender: TObject);
    procedure edtCod_ReferenciaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Produto: TfrmCadastro_Produto;

implementation

{$R *.dfm}

uses uFuncoes, uConsulta_Unid_Medidas, uCadastro_Unid_Medidas,
  uConsulta_Produtos, uConsulta_Produtos_Grupos;

procedure TfrmCadastro_Produto.actCancelarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Produto.actSalvar1Execute(Sender: TObject);
begin
  if edtDescricao.Text = '' then
  begin
    MostraAviso('A descri��o do produto deve ser Informado!');
    edtDescricao.SetFocus;
    Exit;
  end;

  if edtUnid_Medidas.Text = '' then
  begin
    MostraAviso('O campo Tipo de Unidade � Obrigat�rio');
    edtUnid_Medidas.SetFocus;
    Exit;
  end;

  if (edtP_Compra.text = '') then
  begin
    MostraAviso('O Pre�o de Compra deve ser Informado!');
    edtP_Compra.SetFocus;
    Exit;
  end;

  if (edtM_Lucro.Text = '') then
  begin
    MostraAviso('A Margem de Lucro deve ser Informado!');
    edtM_Lucro.SetFocus;
    Exit;
  end;

  if ((edtP_Venda.text = '') or (edtP_Venda.Value = 0.00)) then
  begin
    MostraAviso('O Pre�o de Venda deve ser Informado!');
    edtP_Venda.SetFocus;
    Exit;
  end;

  if edtProdutos_Grupo.Text = '' then
  begin
    MostraAviso('O Grupo � Obrigat�rio!');
    edtProdutos_Grupo.SetFocus;
    Exit;
  end;
{
  if edtMarca.Text = '' then
  begin
    MostraAviso('A Marca deve ser Selecionado!');
    edtMarca.SetFocus;
    Exit;
  end;
  //if frmCadastro_Unid_Medidas.Unid_Medias;
 }

  ModalResult := mrOk;
end;

procedure TfrmCadastro_Produto.btnCancelarClick(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Produto.btnSalvarClick(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Produto.edtCod_ReferenciaExit(Sender: TObject);
begin
  edtP_Compra.SetFocus;
end;

procedure TfrmCadastro_Produto.edtM_LucroExit(Sender: TObject);
begin

  if (edtM_Lucro.Value < 0) then
  begin
    edtP_Venda.Value := 0.00;
  end
  else if not (edtP_Compra.Value = 0.00) then
  begin
    edtP_Venda.Value := edtP_Compra.Value + edtM_Lucro.Value;
  end;
  edtP_Venda.SetFocus;
end;

procedure TfrmCadastro_Produto.edtP_CompraExit(Sender: TObject);
begin
  edtM_Lucro.SetFocus;
end;

procedure TfrmCadastro_Produto.edtP_VendaExit(Sender: TObject);
begin
  if not (edtP_Venda.Value < edtP_Compra.Value) then
  begin
    edtM_Lucro.Value := edtP_Venda.Value - edtP_Compra.Value;
  end else
  begin
    edtM_Lucro.Value := 0.00;
    edtP_Compra.Value := 0.00;
  end;

end;

procedure TfrmCadastro_Produto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0)
  end

  else if Key = #27 then
  begin
    Key := #0;
    Close;
  end;

end;

procedure TfrmCadastro_Produto.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
