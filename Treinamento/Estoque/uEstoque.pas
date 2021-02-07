unit uEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TfrmEstoque = class(TForm)
    Timer1: TTimer;
    BalloonHint1: TBalloonHint;
    StatusBar1: TStatusBar;
    imgVendas: TImage;
    imgCompras: TImage;
    imgProdutos: TImage;
    imgMarcas: TImage;
    imgGrupos: TImage;
    imgUnid_Medidas: TImage;
    imgV: TImage;
    JvPanel1: TJvPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure imgGruposClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgProdutosClick(Sender: TObject);
    procedure imgUnid_MedidasClick(Sender: TObject);
    procedure imgVendasClick(Sender: TObject);
    procedure imgVClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoque: TfrmEstoque;

implementation

{$R *.dfm}

uses uConsulta_Produtos, uConsulta_Produtos_Grupos, uConsulta_Unid_Medidas,
  uPedidos_Itens, uConsulta_Vendedor, uPedidos;

procedure TfrmEstoque.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmEstoque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;
end;

procedure TfrmEstoque.imgGruposClick(Sender: TObject);
begin
  frmConsulta_Produtos_Grupos := TfrmConsulta_Produtos_Grupos.Create(Self);
  frmConsulta_Produtos_Grupos.ShowModal;
  FreeAndNil(frmConsulta_Produtos_Grupos);
end;

procedure TfrmEstoque.imgProdutosClick(Sender: TObject);
begin
  frmConsulta_Produto := TfrmConsulta_Produto.Create(self);
  frmConsulta_Produto.ShowModal;
  FreeAndNil(frmConsulta_Produto);
end;

procedure TfrmEstoque.imgUnid_MedidasClick(Sender: TObject);
begin
  frmConsulta_Unid_Medidas := TfrmConsulta_Unid_Medidas.Create(Self);
  frmConsulta_Unid_Medidas.ShowModal;
  FreeAndNil(frmConsulta_Unid_Medidas);
end;

procedure TfrmEstoque.imgVClick(Sender: TObject);
begin
  frmConsulta_Vendedor := TfrmConsulta_Vendedor.Create(Self);
  frmConsulta_Vendedor.ShowModal;
  FreeAndNil(frmConsulta_Vendedor);
end;

procedure TfrmEstoque.imgVendasClick(Sender: TObject);
begin
  frmPedidos := TfrmPedidos.Create(Self);
  frmPedidos.ShowModal;
  FreeAndNil(frmPedidos);
end;

procedure TfrmEstoque.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.