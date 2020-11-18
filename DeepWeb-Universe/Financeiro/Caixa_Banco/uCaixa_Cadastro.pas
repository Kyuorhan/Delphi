unit uCaixa_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  JvExControls, JvEmbeddedForms, Vcl.StdCtrls, JvBaseEdits, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ActnList, Vcl.Buttons, JvExExtCtrls, JvExtComponent, JvPanel,
  JvExStdCtrls, JvRadioButton;

type
  TfrmCaixa_Cadastro = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    jvdData: TJvDateEdit;
    lbData: TLabel;
    jvcValor: TJvCalcEdit;
    lbValor: TLabel;
    lbTipo_Contas: TLabel;
    Label2: TLabel;
    jvdPrev_Fechamento: TJvDateEdit;
    lbOpen_Date: TLabel;
    jvdOpen_Date: TJvDateEdit;
    edtDesc: TEdit;
    lbDescricao: TLabel;
    edtTipo_Contas: TComboBox;
    �bUserSatus: TLabel;
    edtStatus_User: TComboBox;
    JvPanel1: TJvPanel;
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    ActionList2: TActionList;
    actSalvar1: TAction;
    actCancelar: TAction;
    edtTipo_Pagamento: TComboBox;
    lbTipo_pagamento: TLabel;
    lbClose_Date: TLabel;
    jvdClose_Date: TJvDateEdit;
    edtNome: TEdit;
    lbNome: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure jvcSaldoChange(Sender: TObject);
    procedure edtStatus_UserChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixa_Cadastro: TfrmCaixa_Cadastro;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TfrmCaixa_Cadastro.actCancelarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCaixa_Cadastro.actSalvar1Execute(Sender: TObject);
begin
  if edtNome.Text = '' then
  begin
    MostraAviso('Preenche campo "Nome"');
    edtNome.Setfocus;
    Exit;
  end;

  if edtDesc.Text = '' then
  begin
    MostraAviso('Preenche campo "Descri��o"');
    edtDesc.Setfocus;
    Exit;
  end;

  if jvcValor.Value = 0 then
  begin
    MostraAviso('Ensira um valor maior que "0"');
    jvcValor.SetFocus;
    Exit;
  end;

  ModalResult := mrOK;
end;

procedure TfrmCaixa_Cadastro.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCaixa_Cadastro.btnSalvarClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmCaixa_Cadastro.edtStatus_UserChange(Sender: TObject);
begin
//
end;

procedure TfrmCaixa_Cadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;


procedure TfrmCaixa_Cadastro.jvcSaldoChange(Sender: TObject);
begin
//
end;

procedure TfrmCaixa_Cadastro.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);

end;

end.
