unit uCadastro_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ActnList,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits;

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
    lbDescricao: TLabel;
    edtDescricao: TEdit;
    lbP_Compra: TLabel;
    edtID_Produto: TEdit;
    lbUnidade: TLabel;
    edtUnidade: TComboBox;
    lbLucro: TLabel;
    edtGrupo: TComboBox;
    lbGrupo: TLabel;
    lbMarca: TLabel;
    lbVenda: TLabel;
    lbCod_Barras: TLabel;
    lbCod_Ref: TLabel;
    edtCod_Barra: TEdit;
    edtMarca: TComboBox;
    lbEstoque: TLabel;
    Edit8: TEdit;
    StatusBar1: TStatusBar;
    edtP_Compra: TJvCalcEdit;
    edtP_Venda: TJvCalcEdit;
    edtM_Lucro: TJvCalcEdit;
    edtCod_Referencia: TEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Produto: TfrmCadastro_Produto;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TfrmCadastro_Produto.actCancelarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Produto.actSalvar1Execute(Sender: TObject);
begin
  if edtDescricao.Text = '' then
  begin
    MostraAviso('A descri��o do produto deve ser "Informado!"');
    edtDescricao.SetFocus;
    Exit;
  end;

  if edtP_Compra.Text = '' then
  begin
    MostraAviso('O pre�o de compra deve ser "Informado!"');
    edtP_Compra.SetFocus;
    Exit;
  end;

  if edtM_Lucro.Text = '' then
  begin
    MostraAviso('A margem de lucro deve ser "Informado!"');
    edtM_Lucro.SetFocus;
    Exit;
  end;

  if edtGrupo.Text = '' then
  begin
    MostraAviso('O grupo deve ser "Selecionado!"');
    edtGrupo.SetFocus;
    Exit;
  end;

  if edtMarca.Text = '' then
  begin
    MostraAviso('A marca deve ser "Selecionado!"');
    edtMarca.SetFocus;
    Exit;
  end;

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