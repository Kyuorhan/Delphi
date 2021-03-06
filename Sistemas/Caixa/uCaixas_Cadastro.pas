unit uCaixas_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, udmCaixa;

type
  TOperacaoCaixa = (ocNovo, ocAlterar);

  TfCaixas_Cadastro = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    edtCaixa: TDBEdit;
    StatusBar1: TStatusBar;
    btnSalvar: TButton;
    btnVoltar: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
    function SalvarCaixa(ASA: String): Boolean;
  public
    { Public declarations }
    OperacaoCaixa: TOperacaoCaixa;
  end;

var
  fCaixas_Cadastro: TfCaixas_Cadastro;

implementation

{$R *.dfm}

uses uFuncoes_Gerais;


procedure TfCaixas_Cadastro.btnSalvarClick(Sender: TObject);
begin

  if (edtCaixa.Text = '') then
  begin
    MostraAviso('A descri��o do caixa deve ser Inserido!');
    edtCaixa.SetFocus;
    Exit
  end;

    if SalvarCaixa(edtCaixa.Text) then
    begin
      dmCaixa.sqlCaixas.Refresh;
      Exit;
    end;

  ModalResult := mrOk;
end;

function TfCaixas_Cadastro.SalvarCaixa(ASA: String): Boolean;
begin
  Result := false;

  if (ASA) <> '' then
  begin

    // - N�o permitir cadastrar 2 caixas com o mesmo nome
    //if dmCaixa.sqlCaixas.FieldByName('caixa').AsString = ASA then
    if dmCaixa.sqlCaixas.Locate('caixa', ASA, []) then
    begin

      MostraMensagem('Este caixa j� est� Cadastrado!');
      Result := True;
      //Close;
    end;
  end;
end;

procedure TfCaixas_Cadastro.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TfCaixas_Cadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end
  else if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfCaixas_Cadastro.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

end.
