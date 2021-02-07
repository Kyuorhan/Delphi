unit uPrincipalView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZAbstractConnection, ZConnection,
  Vcl.Buttons, uConexao, uSys_Controll, Vcl.ComCtrls, System.SysUtils;

type
  TfPrincipal = class(TForm)
    SpeedButton1: TSpeedButton;
    StatusBar1: TStatusBar;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

procedure TfPrincipal.FormCreate(Sender: TObject);
begin
  //TConexaoZeos.New.Connection;

  TSys_Controll.GetInstance().SetReceber(1);
  TSys_Controll.GetInstance().CarregarReceber();
  ShowMessage(TSys_Controll.GetInstance().Receber.descricao);

//  StatusBar1.Panels[1].Text := 'Receber: ' + IntToStr(TSys_Controll.GetInstance().Receber.ID())
//  + ' ' + TSys_Controll.GetInstance().Receber.descricao;
end;

procedure TfPrincipal.FormDestroy(Sender: TObject);
begin
  TSys_Controll.GetInstance().Destroy();
end;

procedure TfPrincipal.SpeedButton1Click(Sender: TObject);
var
  VConexao : TConexaoZeos;
begin
  VConexao := TConexaoZeos.Create;
  VConexao.GetConexao.Connected := True;
  try
    if VConexao.GetConexao.Connected then
      ShowMessage('Conectado');
  finally
    FreeAndNil(VConexao);

  end;
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
