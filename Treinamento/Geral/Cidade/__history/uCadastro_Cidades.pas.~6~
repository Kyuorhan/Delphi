unit uCadastro_Cidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.ActnList, Vcl.Buttons, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TfrmCadastro_Cidades = class(TForm)
    StatusBar1: TStatusBar;
    JvPanel1: TJvPanel;
    ActionList2: TActionList;
    actSalvar1: TAction;
    actCancelar: TAction;
    ActionList1: TActionList;
    actSearch1: TAction;
    actSearch2: TAction;
    Timer1: TTimer;
    Label19: TLabel;
    Label1: TLabel;
    lbCod_IBGE: TLabel;
    edtCidade: TEdit;
    edtUF: TEdit;
    edtCod_IBGE: TEdit;
    JvPanel2: TJvPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Cidades: TfrmCadastro_Cidades;

implementation

{$R *.dfm}

uses uFuncoes, uConsulta_Cidades;

procedure TfrmCadastro_Cidades.actCancelarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro_Cidades.actSalvar1Execute(Sender: TObject);
begin
  if edtCidade.Text = '' then
  begin

    MostraAviso('Cidade - Inválido');
    MostraAviso('Preenche novamente campo "Cidade"');
    edtCidade.SetFocus;
    Exit;
  end;

  if not ValidarUF(edtUF.Text) then
  begin

    MostraAviso('Preenche novamente campo "Estado(UF)"');
    edtUF.SetFocus;
    Exit;
  end;

  if ValidarIBGE(edtCod_IBGE.Text) then
  begin

    MostraAviso('Preenche novamente campo "Cód. Município"');
    Exit;
  end;


  ModalResult := mrOK;
end;

procedure TfrmCadastro_Cidades.btnCancelarClick(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Cidades.btnSalvarClick(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Cidades.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmCadastro_Cidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;
end;

procedure TfrmCadastro_Cidades.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
