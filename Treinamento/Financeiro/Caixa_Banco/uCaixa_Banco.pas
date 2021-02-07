unit uCaixa_Banco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TfrmCaixa_Banco = class(TForm)
    JvPanel1: TJvPanel;
    BalloonHint1: TBalloonHint;
    Timer1: TTimer;
    Panel1: TPanel;
    imgOpenCloses_Caixa: TImage;
    imgContas_Caixa: TImage;
    imgTransf_ParaBanco: TImage;
    imgContas_Banco: TImage;
    imgSuporte: TImage;
    Label1: TLabel;
    imgMoviment_Banco: TImage;
    imgRelatorio_Bancario: TImage;
    imgRelatorio_Caixa: TImage;
    imgTransf_ParaCaixa: TImage;
    imgMoviment_Caixa: TImage;
    Label2: TLabel;
    imgTransf_EntreCaixas: TImage;
    imgTransf_EntreContas: TImage;
    procedure imgContas_CaixaClick(Sender: TObject);
    procedure imgOpenCloses_CaixaClick(Sender: TObject);
    procedure imgMoviment_CaixaClick(Sender: TObject);
    procedure imgContas_BancoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixa_Banco: TfrmCaixa_Banco;

implementation

{$R *.dfm}

uses uContas_Banco, uContas_Caixa, uOpenCloses_Caixa;

procedure TfrmCaixa_Banco.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmCaixa_Banco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;
end;

procedure TfrmCaixa_Banco.imgContas_BancoClick(Sender: TObject);
begin
  frmContas_Banco := TfrmContas_Banco.Create(self);
  frmContas_Banco.ShowModal;
  FreeAndNil(frmContas_Banco);
end;

procedure TfrmCaixa_Banco.imgContas_CaixaClick(Sender: TObject);
begin
  frmContas_Caixa := TfrmContas_Caixa.Create(self);
  frmContas_Caixa.ShowModal;
  FreeAndNil(frmContas_Caixa);
end;

procedure TfrmCaixa_Banco.imgOpenCloses_CaixaClick(Sender: TObject);
begin
  frmOpenCloses_Caixa := TfrmOpenCloses_Caixa.Create(self);
  frmOpenCloses_Caixa.ShowModal;
  FreeAndNil(frmOpenCloses_Caixa);
end;

procedure TfrmCaixa_Banco.imgMoviment_CaixaClick(Sender: TObject);
begin
  //
end;

end.
