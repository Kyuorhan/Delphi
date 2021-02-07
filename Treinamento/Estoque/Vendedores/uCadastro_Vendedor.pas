unit uCadastro_Vendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits;

type
  TfrmCadastro_Vendedor = class(TForm)
    lbVendedor: TLabel;
    edtVendedor: TEdit;
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    BalloonHint1: TBalloonHint;
    Timer1: TTimer;
    ActionList2: TActionList;
    actSalvar1: TAction;
    actCancelar: TAction;
    JvPanel1: TJvPanel;
    StatusBar1: TStatusBar;
    edtComissao: TJvCalcEdit;
    Label1: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure ComissaoVendas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Vendedor: TfrmCadastro_Vendedor;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TfrmCadastro_Vendedor.actCancelarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Vendedor.actSalvar1Execute(Sender: TObject);
begin
  if edtVendedor.Text = '' then
  begin
    MostraAviso('O Nome deve ser Inserido!');
    edtVendedor.SetFocus;
    Exit;
  end;

  ModalResult := mrOk;
end;

procedure TfrmCadastro_Vendedor.btnCancelarClick(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Vendedor.btnSalvarClick(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Vendedor.ComissaoVendas;
begin
//
end;

procedure TfrmCadastro_Vendedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if (Key = #27) then
  begin
    Key := #0;
    Close;
  end;

end;

procedure TfrmCadastro_Vendedor.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.

