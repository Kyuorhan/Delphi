unit uConsulta_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, JvExComCtrls, JvComCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmConsulta_Produto = class(TForm)
    JvPanel1: TJvPanel;
    BalloonHint1: TBalloonHint;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    ActionList1: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actLanca_Movimentacao: TAction;
    actMovimentacao: TAction;
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    JvDBGrid2: TJvDBGrid;
    edtLocalizar: TEdit;
    tbPesquisar: TJvPageControl;
    tbsPesquisar: TTabSheet;
    sqlProdutos: TZQuery;
    dsProdutos: TDataSource;
    sqlProdutosid: TIntegerField;
    sqlProdutosid_produto_grupo: TIntegerField;
    sqlProdutosid_unid_medidas: TIntegerField;
    sqlProdutosproduto: TWideStringField;
    sqlProdutoscod_barras: TWideStringField;
    sqlProdutoscod_referencias: TWideStringField;
    sqlProdutospreco_compra: TFloatField;
    sqlProdutospreco_venda: TFloatField;
    sqlProdutosmargem_lucro: TFloatField;
    Label1: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnQuitarClick(Sender: TObject);
    procedure btnEstornarClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actLanca_MovimentacaoExecute(Sender: TObject);
    procedure actMovimentacaoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
  private
    procedure Localizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta_Produto: TfrmConsulta_Produto;

implementation

{$R *.dfm}

uses uCadastro_Produtos, My_Layout, uFuncoes;

procedure TfrmConsulta_Produto.actEditarExecute(Sender: TObject);
begin
  frmCadastro_Produto := TfrmCadastro_Produto.Create(Self);
  frmCadastro_Produto.edtDescricao.Text       := sqlProdutosProduto.AsString;
  frmCadastro_Produto.edtCod_Barra.Text       := sqlProdutosCod_Barras.Value;
  frmCadastro_Produto.edtCod_Referencia.Text  := sqlProdutosCod_Referencias.Value;
  frmCadastro_Produto.edtP_Compra.Value       := sqlProdutosPreco_Compra.Value;
  frmCadastro_Produto.edtP_Venda.Value        := sqlProdutosPreco_Venda.Value;
  frmCadastro_Produto.edtM_Lucro.Value        := sqlProdutosMargem_Lucro.Value;

  if frmCadastro_Produto.ShowModal = mrOK then
  begin
    sqlProdutos.Close;
    sqlProdutos.Open;

    sqlProdutos.Edit;
    sqlProdutosProduto.AsString           := frmCadastro_Produto.edtDescricao.Text;
    sqlProdutosCod_Barras.Value           := frmCadastro_Produto.edtCod_Barra.Text;
    sqlProdutosCod_Referencias.Value      := frmCadastro_Produto.edtCod_Referencia.Text;
    sqlProdutosPreco_Compra.Value         := frmCadastro_Produto.edtP_Compra.Value;
    sqlProdutosPreco_Venda.Value          := frmCadastro_Produto.edtP_Venda.Value;
    sqlProdutosMargem_Lucro.Value         := frmCadastro_Produto.edtM_Lucro.Value;
    sqlProdutos.ApplyUpdates;

  end;
end;

procedure TfrmConsulta_Produto.actMovimentacaoExecute(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Produto.actExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente "Excluir" o registro?',
    'Abertura/Fechamento do Caixa', MB_YESNO) = mrYes then
  begin
    try
      sqlProdutos.Delete;
      sqlProdutos.ApplyUpdates;
      MostraMensagem('Registro excluido com "Sucesso!"');

    except
      on E: Exception do
        raise Exception.Create('Error ao "Excluir" o registro!' + E.Message);
    end;
  end;
end;


procedure TfrmConsulta_Produto.actNovoExecute(Sender: TObject);
begin
  frmCadastro_Produto := TfrmCadastro_Produto.Create(Self);
  if frmCadastro_Produto.ShowModal = mrOK then
  begin
    sqlProdutos.Close;
    sqlProdutos.Open;

    sqlProdutos.Append;
    sqlProdutosProduto.AsString           := frmCadastro_Produto.edtDescricao.Text;
    sqlProdutosCod_Barras.AsString        := frmCadastro_Produto.edtCod_Barra.Text;
    sqlProdutosCod_Referencias.Value      := frmCadastro_Produto.edtCod_Referencia.Text;
    sqlProdutosPreco_Compra.Value         := frmCadastro_Produto.edtP_Compra.Value;
    sqlProdutosPreco_Venda.Value          := frmCadastro_Produto.edtP_Venda.Value;
    sqlProdutosMargem_Lucro.Value         := frmCadastro_Produto.edtM_Lucro.Value;
    sqlProdutos.ApplyUpdates;

  end;

end;

procedure TfrmConsulta_Produto.actLanca_MovimentacaoExecute(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Produto.btnEditarClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Produto.btnEstornarClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Produto.btnExcluirClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Produto.btnNovoClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Produto.btnQuitarClick(Sender: TObject);
begin
//
end;

procedure TfrmConsulta_Produto.edtLocalizarChange(Sender: TObject);
begin
  Localizar;
end;

procedure TfrmConsulta_Produto.Localizar;
var
  Texto: String;
begin
  Texto := 'SELECT * from produtos WHERE id > 0';
  if edtLocalizar.Text <> '' then
    Texto := Texto + ' AND produto LIKE ' + Quotedstr(edtLocalizar.Text + '%');
  sqlProdutos.SQL.Text := Texto;
  sqlProdutos.Open;
end;

procedure TfrmConsulta_Produto.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmConsulta_Produto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_ESCAPE) then
    Close;
end;

procedure TfrmConsulta_Produto.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
