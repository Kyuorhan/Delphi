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
    JvPanel1: TJvPanel;
    StatusBar1: TStatusBar;
    imgVendas: TImage;
    imgCompras: TImage;
    imgProdutos: TImage;
    imgMarcas: TImage;
    imgGrupos: TImage;
    imgUnid_Medidas: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure imgGruposClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoque: TfrmEstoque;

implementation

{$R *.dfm}

uses uConsulta_Produtos, uConsulta_Grupos;

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
  frmConsulta_Grupos := TfrmConsulta_Grupos.Create(Self);
  frmConsulta_Grupos.ShowModal;
  FreeAndNil(frmConsulta_Grupos);
end;

procedure TfrmEstoque.imgProdutosClick(Sender: TObject);
begin
  frmConsulta_Produto := TfrmConsulta_Produto.Create(self);
  frmConsulta_Produto.ShowModal;
  FreeAndNil(frmConsulta_Produto);
end;

procedure TfrmEstoque.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
