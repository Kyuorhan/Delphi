unit uPlano_Contas_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.ActnList, udmCaixa, System.RegularExpressions;

type
  TfPlanos_Contas_Cadastro = class(TForm)
    StatusBar1: TStatusBar;
    BalloonHint1: TBalloonHint;
    PageControl1: TPageControl;
    lbDescricao: TLabel;
    edtPlano_Contas: TDBEdit;
    edtEstrutura: TDBEdit;
    lbEstrutura: TLabel;
    TabSheet1: TTabSheet;
    btnSalvar: TButton;
    btnVoltar: TButton;
    lbNatureza: TLabel;
    edtNatureza: TDBLookupComboBox;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPlanos_Contas_Cadastro: TfPlanos_Contas_Cadastro;

implementation

{$R *.dfm}

uses uPrincipal, uFuncoes_Gerais;



procedure TfPlanos_Contas_Cadastro.btnSalvarClick(Sender: TObject);
var
  Situacao : String;
  RegExp : TRegEx;
begin

  if edtPlano_Contas.Text = '' then
  begin
    MostraAviso('A descri��o deve ser Inserida!');
    edtPlano_Contas.SetFocus;
    Exit;
  end;

  // - O agrupamento do plano de contas deve seguir o padr�o: 99.999.999
  if edtEstrutura.Text <> '' then
  begin
    if not RegExp.IsMatch(edtEstrutura.Text, '^[0-9]{2}$') then
    begin
      if not RegExp.IsMatch(edtEstrutura.Text, '^[0-9]{2}[.]+[0-9]{3}') then
      begin
        if not RegExp.IsMatch(edtEstrutura.Text, '^[0-9]{2}[.]+[0-9]{3}[.]+[0-9]{3}') then
        begin
          MostraAviso('Formato do agrupamento incorreto. Use um dos formatos: '+#13+
            'xx'+#13+
            'xx.xxx'+#13+
            'xx.xxx.xxx');
          edtEstrutura.SetFocus;
          Exit;
        end;
      end;
    end;
  end;

  ModalResult := mrOk;
end;

procedure TfPlanos_Contas_Cadastro.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TfPlanos_Contas_Cadastro.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfPlanos_Contas_Cadastro.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

end.
