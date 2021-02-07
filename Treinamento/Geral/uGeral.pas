unit uGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TfrmGeral = class(TForm)
    Panel1: TPanel;
    imgConsulta_Clientes: TImage;
    imgConsultas_Cidades: TImage;
    imgSuporte: TImage;
    lbGeral: TLabel;
    imgServiços: TImage;
    imgConfig: TImage;
    JvPanel1: TJvPanel;
    BalloonHint1: TBalloonHint;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    procedure Timer1Timer(Sender: TObject);
    procedure imgConsulta_ClientesClick(Sender: TObject);
    procedure imgConsultas_CidadesClick(Sender: TObject);
    procedure imgSuporteClick(Sender: TObject);
    procedure imgServiçosClick(Sender: TObject);
    procedure imgConfigClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeral: TfrmGeral;

implementation

{$R *.dfm}

uses uConsulta_Clientes, uConsulta_Cidades, uCadastro_Cidades ;

procedure TfrmGeral.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmGeral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;

end;

procedure TfrmGeral.imgConfigClick(Sender: TObject);
begin
//
end;

procedure TfrmGeral.imgConsultas_CidadesClick(Sender: TObject);
begin
  frmConsulta_Cidades := TfrmConsulta_Cidades.Create(Self);
  frmConsulta_Cidades.ShowModal;
  FreeAndNil(frmConsulta_Cidades);
end;

procedure TfrmGeral.imgConsulta_ClientesClick(Sender: TObject);
begin
  frmConsulta := TfrmConsulta.Create(Self);
  frmConsulta.ShowModal;
  FreeAndNil(frmConsulta);
end;

procedure TfrmGeral.imgServiçosClick(Sender: TObject);
begin
//
end;

procedure TfrmGeral.imgSuporteClick(Sender: TObject);
begin
//
end;

procedure TfrmGeral.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
