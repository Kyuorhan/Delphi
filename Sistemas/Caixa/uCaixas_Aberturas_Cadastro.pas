unit uCaixas_Aberturas_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvBaseEdits, JvDBControls, JvExMask,
  JvToolEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.DBLookup,
  JvExControls, JvDBLookup, Vcl.ExtCtrls, ZDataSet, JvDBLookupComboEdit,
  JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TOperacaoCaixa = (ocAbertura, ocFechamento);

  TfCaixas_Aberturas_Cadastro = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    BalloonHint1: TBalloonHint;
    btnVoltar: TButton;
    btnSalvar: TButton;
    Panel1: TPanel;
    edtSaidas: TJvDBCalcEdit;
    Label4: TLabel;
    edtSaldo: TJvDBCalcEdit;
    Label1: TLabel;
    edtEntradas: TJvDBCalcEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    lbDescricao: TLabel;
    edtCaixa: TDBLookupComboBox;
    edtTroco: TJvDBCalcEdit;
    edtData: TJvDBDateEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OperacaoCaixa: TOperacaoCaixa;
  end;

var
  fCaixas_Aberturas_Cadastro: TfCaixas_Aberturas_Cadastro;

implementation

{$R *.dfm}

uses udmCaixa, uFuncoes_Gerais, uCaixas_Aberturas_Pesquisa, udmPrincipal ;

procedure TfCaixas_Aberturas_Cadastro.btnSalvarClick(Sender: TObject);
begin
  if OperacaoCaixa = ocFechamento then
  begin
    ModalResult := mrOK;
    Exit;
  end;

  if edtCaixa.KeyValue = 0 then
  begin
    MostraAviso('Selecione um Caixa!');
    edtcaixa.SetFocus;
    Exit;
  end;

  if StrToDateDef(edtData.Text, 0) = 0 then
  begin
    MostraAviso('A data deve ser Inserido!');
    edtData.SetFocus;
    Exit;
  end;

  if (edtTroco.Value = 0) then
  begin
    MostraAviso('O troco deve ser Inserido!');
    edtTroco.SetFocus;
    Exit;
  end;

  dmPrincipal.qTemp.SQL.Text := 'SELECT data, situacao FROM caixas_aberturas' +
    ' WHERE situacao IN ("A", "R") AND caixas_id = ' + IntToStr(edtCaixa.KeyValue);
  dmPrincipal.qTemp.Open;

  // - Antes de abrir o caixa, verificar se ele já está aberto e avisar
  // o usuário que o mesmo se encontra aberto
  if (dmPrincipal.qTemp.FieldByName('situacao').AsAnsiString = 'A') then
  begin
    MostraAviso('Ja existe um caixa aberto/reaberto no dia '
     + dmPrincipal.qTemp.FieldByName('data').AsString);
    edtCaixa.SetFocus;
    Exit;
  end;

  dmPrincipal.qTemp.SQL.Text := 'SELECT data, situacao FROM caixas_aberturas' +
    ' WHERE situacao = "F" AND caixas_id = ' + IntToStr(edtCaixa.KeyValue)+
    ' AND data = ' + QuotedStr(edtData.DataField);
  dmPrincipal.qTemp.Open;

  // - Deixar opção para reabrir o caixa (situação R), mas não permitir
  // reabrir o mesmo caixa caso já tenha um reaberto
  if (dmPrincipal.qTemp.FieldByName('situacao').AsAnsiString = 'R') then
  begin
    MostraAviso('Ja existe um caixa reaberto no dia: ' + dmPrincipal.qTemp.FieldByName('data').AsString);
    edtCaixa.SetFocus;
    Exit;
  end;


  ModalResult := mrOk
end;

procedure TfCaixas_Aberturas_Cadastro.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TfCaixas_Aberturas_Cadastro.FormCreate(Sender: TObject);
begin
  OperacaoCaixa := ocAbertura;
end;

procedure TfCaixas_Aberturas_Cadastro.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
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

procedure TfCaixas_Aberturas_Cadastro.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  if OperacaoCaixa = ocFechamento then
    fCaixas_Aberturas_Cadastro.TabSheet1.Enabled := False;
end;

end.
