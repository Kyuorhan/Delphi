unit uFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvEmbeddedForms,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.ImgList, JvExExtCtrls, JvExtComponent, JvPanel, uContas_Receber_Pagtos;

type
  TfrmFinanceiro = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    BalloonHint1: TBalloonHint;
    Panel1: TPanel;
    imgCaixa_Banco: TImage;
    imgContas: TImage;
    imgReceber: TImage;
    imgPagar: TImage;
    imgSuporte: TImage;
    Label1: TLabel;
    Label3: TLabel;
    imgGerarBoletos: TImage;
    imgGerarCarne: TImage;
    imgDocx_Receber: TImage;
    imgDocx_Pagar: TImage;
    imgMoviment_Bank: TImage;
    JvPanel1: TJvPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure imgConsultasClick(Sender: TObject);
    procedure imgPagarClick(Sender: TObject);
    procedure imgReceberClick(Sender: TObject);
    procedure imgCaixa_BancoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinanceiro: TfrmFinanceiro;
  frmContas_Receber_Pagtos: TfrmContas_Receber_Pagtos;

implementation

{$R *.dfm}

uses uContas_Receber, uConsulta_Clientes, uCaixa_Banco;

procedure TfrmFinanceiro.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmFinanceiro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;
end;

procedure TfrmFinanceiro.imgCaixa_BancoClick(Sender: TObject);
begin
  frmCaixa_Banco := TfrmCaixa_Banco.Create(self);
  frmCaixa_Banco.ShowModal;
  FreeAndNil(frmCaixa_Banco);
end;

procedure TfrmFinanceiro.imgConsultasClick(Sender: TObject);
begin
  frmConsulta := TfrmConsulta.Create(nil);
  frmConsulta.ShowModal;
  FreeAndNil(frmConsulta);

end;

procedure TfrmFinanceiro.imgPagarClick(Sender: TObject);
begin
  frmContas_Receber_Pagtos := TfrmContas_Receber_Pagtos.Create(self);
  frmContas_Receber_Pagtos.ShowModal;
  FreeAndNil(frmContas_Receber_Pagtos);

end;

procedure TfrmFinanceiro.imgReceberClick(Sender: TObject);
begin
  frmContas_Receber := TfrmContas_Receber.Create(self);
  frmContas_Receber.sqlContas_Receber.SQL.Text :=
    'SELECT * FROM contas_receber WHERE id';
  frmContas_Receber.ShowModal;
  FreeAndNil(frmContas_Receber);
end;

procedure TfrmFinanceiro.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
